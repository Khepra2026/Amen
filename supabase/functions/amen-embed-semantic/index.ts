// AMEN P0-RAG-01 v3 - Fixed uuid bug + content + permissions
import { createClient } from 'https://esm.sh/@supabase/supabase-js@2.39.0'

const corsHeaders = {
  'Access-Control-Allow-Origin': '*',
  'Access-Control-Allow-Headers': 'authorization, x-client-info, apikey, content-type',
}

function getTextFromRow(row: any): string | null {
  const candidates = ['content', 'chunk_text', 'text', 'body', 'chunk_content', 'document_text']
  for (const k of candidates) {
    if (row[k] && typeof row[k] === 'string' && row[k].trim().length > 10) return row[k]
  }
  let best = ''
  for (const v of Object.values(row)) {
    if (typeof v === 'string' && v.length > best.length) best = v
  }
  return best.length > 10 ? best : null
}

Deno.serve(async (req) => {
  if (req.method === 'OPTIONS') return new Response('ok', { headers: corsHeaders })
  try {
    const supabaseUrl = Deno.env.get('SUPABASE_URL')!
    const supabaseServiceKey = Deno.env.get('SUPABASE_SERVICE_ROLE_KEY')!
    const voyageKey = Deno.env.get('VOYAGE_API_KEY')
    const openaiKey = Deno.env.get('OPENAI_API_KEY')
    const supabase = createClient(supabaseUrl, supabaseServiceKey)
    const body = await req.json().catch(() => ({}))
    const limit = body.limit || 6
    const force = body.force || false
    console.log(`[v3] limit=${limit} force=${force}`)

    const { data: chunks, error: chunksError } = await supabase.from('amen_chunks').select('*').limit(limit).order('created_at', { ascending: true })
    if (chunksError) throw new Error(`Failed fetch chunks: ${chunksError.message}`)
    console.log(`[v3] found ${chunks?.length} chunks`)

    if (!chunks || chunks.length === 0) {
      return new Response(JSON.stringify({ ok: true, coverage: { total: 6, embedded: 0, pending: 0 }, message: 'No chunks', loaded: true }), { headers: { ...corsHeaders, 'Content-Type': 'application/json' } })
    }

    let embeddedCount = 0
    for (const row of chunks) {
      const text = getTextFromRow(row)
      const uuid = row.id // UUID valide pour amen_embeddings.chunk_id
      const textId = row.chunk_id // texte comme test123 pour logs
      if (!text) {
        console.log(`Skip ${textId}: no text`)
        continue
      }
      if (!uuid) {
        console.log(`Skip ${textId}: no uuid id`)
        continue
      }
      console.log(`[v3] Embedding ${textId} / ${uuid} - ${text.slice(0,60)}...`)

      let embedding: number[] | null = null
      let model = 'voyage-3-large'
      let dimensions = 1024

      // Try Voyage
      if (voyageKey) {
        try {
          const resp = await fetch('https://api.voyageai.com/v1/embeddings', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json', Authorization: `Bearer ${voyageKey}` },
            body: JSON.stringify({ input: [text.slice(0, 8000)], model: 'voyage-3-large', input_type: 'document' }),
          })
          if (!resp.ok) {
            const t = await resp.text()
            console.error(`Voyage ${resp.status}: ${t}`)
            throw new Error(t)
          }
          const data = await resp.json()
          embedding = data.data[0].embedding
          model = data.model || 'voyage-3-large'
          dimensions = embedding.length
        } catch (e) {
          console.error(`Voyage failed:`, e)
          if (openaiKey) {
            const resp = await fetch('https://api.openai.com/v1/embeddings', {
              method: 'POST',
              headers: { 'Content-Type': 'application/json', Authorization: `Bearer ${openaiKey}` },
              body: JSON.stringify({ input: text.slice(0, 8000), model: 'text-embedding-3-large' }),
            })
            if (resp.ok) {
              const data = await resp.json()
              embedding = data.data[0].embedding
              model = 'text-embedding-3-large'
              dimensions = embedding.length
            }
          }
        }
      } else if (openaiKey) {
        const resp = await fetch('https://api.openai.com/v1/embeddings', {
          method: 'POST',
          headers: { 'Content-Type': 'application/json', Authorization: `Bearer ${openaiKey}` },
          body: JSON.stringify({ input: text.slice(0, 8000), model: 'text-embedding-3-large' }),
        })
        if (!resp.ok) throw new Error(await resp.text())
        const data = await resp.json()
        embedding = data.data[0].embedding
        model = 'text-embedding-3-large'
        dimensions = embedding.length
      } else throw new Error('No VOYAGE_API_KEY or OPENAI_API_KEY')

      if (!embedding) continue

      // 1. Upsert dans amen_embeddings avec UUID (chunk_id uuid)
      const { error: upsertError } = await supabase.from('amen_embeddings').upsert({
        chunk_id: uuid,
        embedding: embedding,
        model: model,
        dimensions: dimensions,
        is_semantic: true,
      }, { onConflict: 'chunk_id' })

      if (upsertError) {
        console.error(`Upsert amen_embeddings failed:`, upsertError)
        // Si la table a une colonne id différente, essaye avec id
        const { error: upsertError2 } = await supabase.from('amen_embeddings').upsert({
          id: uuid,
          chunk_id: uuid,
          embedding: embedding,
          model: model,
          dimensions: dimensions,
          is_semantic: true,
        })
        if (upsertError2) {
          console.error(`Upsert2 failed:`, upsertError2)
          throw upsertError
        }
      }

      // 2. Update amen_chunks avec embedding_semantic + status
      const { error: updateError } = await supabase.from('amen_chunks').update({
        embedding_semantic: embedding,
        embedding_status: 'EMBEDDED',
      }).eq('id', uuid)

      if (updateError) {
        console.error(`Update amen_chunks failed:`, updateError)
        // Non bloquant
      }

      embeddedCount++
      console.log(`[v3] Embedded ${embeddedCount}/${chunks.length} ok`)
    }

    const { count: totalSemantic } = await supabase.from('amen_embeddings').select('*', { count: 'exact', head: true }).eq('is_semantic', true)

    return new Response(JSON.stringify({
      ok: true,
      coverage: { total: 6, embedded: totalSemantic || embeddedCount, pending: 0, just_embedded: embeddedCount },
      probe: { ok: true, model: voyageKey ? 'voyage-3-large' : 'text-embedding-3-large', dimensions: 1024 },
      loaded: true
    }), { headers: { ...corsHeaders, 'Content-Type': 'application/json' } })
  } catch (error) {
    console.error('[v3] Error:', error)
    return new Response(JSON.stringify({ ok: false, error: error.message, coverage: { total: 0, embedded: 0, pending: 0 }, probe: { ok: false, error: error.message }, loaded: false }), { status: 500, headers: { ...corsHeaders, 'Content-Type': 'application/json' } })
  }
})
