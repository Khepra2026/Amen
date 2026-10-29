// AMEN P0-RAG-01 - Fixed amen-embed-semantic - Voyage API semantic
import { createClient } from 'https://esm.sh/@supabase/supabase-js@2.39.0'

const corsHeaders = {
  'Access-Control-Allow-Origin': '*',
  'Access-Control-Allow-Headers': 'authorization, x-client-info, apikey, content-type',
}

Deno.serve(async (req) => {
  if (req.method === 'OPTIONS') {
    return new Response('ok', { headers: corsHeaders })
  }
  try {
    const supabaseUrl = Deno.env.get('SUPABASE_URL')!
    const supabaseServiceKey = Deno.env.get('SUPABASE_SERVICE_ROLE_KEY')!
    const voyageKey = Deno.env.get('VOYAGE_API_KEY')
    const openaiKey = Deno.env.get('OPENAI_API_KEY')
    const supabase = createClient(supabaseUrl, supabaseServiceKey)
    const body = await req.json().catch(() => ({}))
    const limit = body.limit || 6
    const force = body.force || false
    console.log(`[amen-embed-semantic] Start limit=${limit} force=${force}`)

    let query = supabase.from('amen_chunks').select('chunk_id, document_id, chunk_text').limit(limit)
    const { data: chunks, error: chunksError } = await query
    if (chunksError) throw new Error(`Failed to fetch chunks: ${chunksError.message}`)
    if (!chunks || chunks.length === 0) {
      const { count } = await supabase.from('amen_embeddings').select('*', { count: 'exact', head: true }).eq('is_semantic', true)
      return new Response(JSON.stringify({ ok: true, coverage: { total: 6, embedded: count || 0, pending: 0 }, message: 'No chunks', loaded: true }), { headers: { ...corsHeaders, 'Content-Type': 'application/json' } })
    }
    console.log(`[amen-embed-semantic] Found ${chunks.length} chunks`)
    let embeddedCount = 0
    for (const chunk of chunks) {
      if (!chunk.chunk_text || chunk.chunk_text.trim().length < 10) continue
      let embedding: number[] | null = null
      let model = 'voyage-3-large'
      let dimensions = 1024
      if (voyageKey) {
        try {
          const resp = await fetch('https://api.voyageai.com/v1/embeddings', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json', Authorization: `Bearer ${voyageKey}` },
            body: JSON.stringify({ input: [chunk.chunk_text.slice(0, 8000)], model: 'voyage-3-large', input_type: 'document' }),
          })
          if (!resp.ok) {
            const errText = await resp.text()
            throw new Error(`Voyage API ${resp.status}: ${errText}`)
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
              body: JSON.stringify({ input: chunk.chunk_text.slice(0, 8000), model: 'text-embedding-3-large' }),
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
          body: JSON.stringify({ input: chunk.chunk_text.slice(0, 8000), model: 'text-embedding-3-large' }),
        })
        if (!resp.ok) {
          const errText = await resp.text()
          throw new Error(`OpenAI API ${resp.status}: ${errText}`)
        }
        const data = await resp.json()
        embedding = data.data[0].embedding
        model = 'text-embedding-3-large'
        dimensions = embedding.length
      } else {
        throw new Error('No VOYAGE_API_KEY or OPENAI_API_KEY')
      }
      if (!embedding) continue
      const { error: upsertError } = await supabase.from('amen_embeddings').upsert({
        chunk_id: chunk.chunk_id,
        embedding: embedding,
        model: model,
        dimensions: dimensions,
        is_semantic: true,
      }, { onConflict: 'chunk_id' })
      if (upsertError) {
        console.error(`Upsert failed:`, upsertError)
        throw upsertError
      }
      embeddedCount++
      console.log(`[amen-embed-semantic] Embedded ${embeddedCount}/${chunks.length}`)
    }
    const { count: totalEmbeddings } = await supabase.from('amen_embeddings').select('*', { count: 'exact', head: true }).eq('is_semantic', true)
    return new Response(JSON.stringify({ ok: true, coverage: { total: 6, embedded: totalEmbeddings || 0, pending: 6 - (totalEmbeddings || 0), just_embedded: embeddedCount }, probe: { ok: true, model: voyageKey ? 'voyage-3-large' : 'text-embedding-3-large' }, loaded: true }), { headers: { ...corsHeaders, 'Content-Type': 'application/json' } })
  } catch (error) {
    console.error('[amen-embed-semantic] Error:', error)
    return new Response(JSON.stringify({ ok: false, error: error.message, coverage: { total: 0, embedded: 0, pending: 0 }, probe: { ok: false, error: error.message }, loaded: false, load_error: error.message }), { status: 500, headers: { ...corsHeaders, 'Content-Type': 'application/json' } })
  }
})
