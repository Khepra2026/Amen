import { serve } from "https://deno.land/std@0.168.0/http/server.ts"
import { createClient } from "https://esm.sh/@supabase/supabase-js@2.39.7"

const corsHeaders = {
  'Access-Control-Allow-Origin': '*',
  'Access-Control-Allow-Headers': 'authorization, x-client-info, apikey, content-type',
}

serve(async (req) => {
  if (req.method === 'OPTIONS') return new Response('ok', { headers: corsHeaders })
  const start = Date.now()
  let correlation_id = crypto.randomUUID()

  try {
    const { query, mode = 'rag', language = 'fr', run_id } = await req.json()
    if (!query || query.trim().length < 2) {
      return new Response(JSON.stringify({ error: 'query required' }), { status: 400, headers: corsHeaders })
    }
    if (run_id) correlation_id = run_id

    const SUPABASE_URL = Deno.env.get('SUPABASE_URL')!
    const SERVICE_KEY = Deno.env.get('SUPABASE_SERVICE_ROLE_KEY')!
    const OPENAI_KEY = Deno.env.get('OPENAI_API_KEY')!
    // v190.3 CANONIQUE MESURÉ: BGE-M3 1024d ou text-embedding-3-large 1024d tronqué
    const EMB_MODEL = Deno.env.get('EMBEDDING_MODEL') || 'text-embedding-3-large'
    const LLM_MODEL = Deno.env.get('LLM_MODEL') || 'gpt-4o-mini'

    const supabase = createClient(SUPABASE_URL, SERVICE_KEY)

    // 1. EMBEDDING - dimensions seulement pour OpenAI v3
    const embBody: any = { model: EMB_MODEL, input: query }
    if (EMB_MODEL.includes('text-embedding-3')) {
      embBody.dimensions = 1024 // MATCH ta base 1024d
    }
    
    const embRes = await fetch('https://api.openai.com/v1/embeddings', {
      method: 'POST',
      headers: { 'Authorization': `Bearer ${OPENAI_KEY}`, 'Content-Type': 'application/json' },
      body: JSON.stringify(embBody)
    })
    if (!embRes.ok) throw new Error(`Embedding ${EMB_MODEL} failed: ${await embRes.text()}`)
    const embData = await embRes.json()
    const vector = embData.data[0].embedding as number[]

    if (vector.length !== 1024) {
      throw new Error(`DIM MISMATCH: got ${vector.length}d expected 1024d - reindex corpus or change EMB_MODEL`)
    }

    // 2. RAG - signature v190.2 canonique
    const { data: chunks, error: ragError } = await supabase.rpc('amen_rag_search_text', {
      p_query_embedding: vector,
      p_match_count: 8,
      p_min_similarity: 0.2
    })
    if (ragError) throw new Error(`RAG RPC failed: ${ragError.message}`)

    const hasSources = chunks && chunks.length > 0
    const maxScore = hasSources ? Math.max(...chunks.map((c:any)=>c.similarity||0)) : 0
    const grounding_score = maxScore

    // 3. CITATIONS - source_id existe chez toi
    let citations = hasSources ? chunks.map((c:any, i:number) => ({
      id: c.id || `chunk-${i}`,
      source: c.source || 'corpus AMEN',
      content: (c.content || '').slice(0, 800),
      similarity: c.similarity || 0,
      labels: c.labels || []
    })) : []

    // 4. GATE BIG FOUR v190.3 - OBLIGATOIRE
    let epistemic_status: string
    let final_answer: string
    const nb_cit = citations?.length || 0
    const score = grounding_score || 0

    if (nb_cit === 0 || score === 0 || score < 0.4) {
      epistemic_status = 'NO_RELEVANT_SOURCE'
      final_answer = score === 0 
        ? 'Aucune source pertinente dans le corpus AMEN (20 chunks BGE-M3 1024d) pour cette question.'
        : `Sources insuffisantes - score ${score.toFixed(3)} < 0.4. Corpus: ${nb_cit} chunks. Question: "${query}"`
      citations = [] // FORCE vide si NO_RELEVANT_SOURCE - Big Four
    } else {
      // 5. LLM GROUNDED UNIQUEMENT
      const context = chunks.map((c:any)=>`[${c.similarity?.toFixed(3)}] ${c.content}`).join('\n\n---\n\n').slice(0, 12000)
      const prompt = `Tu es AMEN, expert corpus africain Vodun. Réponds UNIQUEMENT à partir du contexte.
Contexte (${chunks.length} sources, score max ${score.toFixed(3)}):
${context}

Question: ${query}
Langue: ${language}

Règles:
- Cite tes sources [source]
- Si contexte insuffisant, dis "Information non trouvée dans le corpus"
- Ne hallucine JAMAIS
- Réponds en ${language}`

      const llmRes = await fetch('https://api.openai.com/v1/chat/completions', {
        method: 'POST',
        headers: { 'Authorization': `Bearer ${OPENAI_KEY}`, 'Content-Type': 'application/json' },
        body: JSON.stringify({
          model: LLM_MODEL,
          messages: [{ role: 'user', content: prompt }],
          temperature: 0.2,
          max_tokens: 1500
        })
      })
      if (!llmRes.ok) throw new Error(`LLM failed: ${await llmRes.text()}`)
      const llmData = await llmRes.json()
      final_answer = llmData.choices[0].message.content
      epistemic_status = 'GROUNDED' // UNIQUEMENT ici
    }

    const duration_ms = Date.now() - start

    // 6. INSERT LEDGER - SANS colonne "query" qui n'existe pas chez toi
    // On insère seulement les colonnes Big Four garanties
    const ledgerPayload: any = {
      epistemic_status: epistemic_status,
      grounding_score: grounding_score,
      citations: citations,
      // Colonnes optionnelles - si elles n'existent pas, Supabase ignore pas, il crashe
      // Donc on met seulement celles qui passent ton CHECK
    }
    
    // Tentative insert minimal Big Four - si tu as d'autres colonnes, ajoute-les ici
    // après avoir fait: SELECT column_name FROM information_schema.columns WHERE table_name='amen_agent_runs'
    const { data: inserted, error: insError } = await supabase
      .from('amen_agent_runs')
      .insert(ledgerPayload)
      .select('id')
      .single()

    if (insError) {
      // Fallback: log sans bloquer la réponse utilisateur
      console.error('Ledger insert failed (non bloquant):', insError.message)
    }

    return new Response(JSON.stringify({
      correlation_id,
      id: inserted?.id || correlation_id,
      epistemic_status,
      grounding_score,
      citations,
      final_answer,
      retrieval_count: chunks?.length || 0,
      duration_ms,
      gate: 'v190.3-BIGFOUR-1024d',
      model: EMB_MODEL,
      dim: 1024
    }), { headers: {...corsHeaders, 'Content-Type': 'application/json' } })

  } catch (e) {
    const duration_ms = Date.now() - start
    console.error('amen-rag-query v190.3 error:', e)
    // En cas d'ERROR système, on reste Big Four compliant: NO_RELEVANT_SOURCE
    return new Response(JSON.stringify({
      correlation_id,
      epistemic_status: 'NO_RELEVANT_SOURCE',
      grounding_score: 0,
      citations: [],
      final_answer: `Erreur système - aucune source validée: ${e.message}`,
      error: e.message,
      duration_ms,
      gate: 'v190.3-ERROR-FALLBACK'
    }), { status: 200, headers: {...corsHeaders, 'Content-Type': 'application/json' } })
  }
})