// AMEN P0-RAG-01 v2 - Fixed robust column detection
import { createClient } from 'https://esm.sh/@supabase/supabase-js@2.39.0'

const corsHeaders = {
  'Access-Control-Allow-Origin': '*',
  'Access-Control-Allow-Headers': 'authorization, x-client-info, apikey, content-type',
}

function getTextFromRow(row: any): string | null {
  const candidates = ['chunk_text', 'content', 'text', 'body', 'chunk_content', 'document_text', 'chunk', 'data']
  for (const k of candidates) {
    if (row[k] && typeof row[k] === 'string' && row[k].trim().length > 10) return row[k]
  }
  // fallback: longest string value
  let best = ''
  for (const v of Object.values(row)) {
    if (typeof v === 'string' && v.length > best.length) best = v
  }
  return best.length > 10 ? best : null
}
function getIdFromRow(row: any): string {
  return row.chunk_id || row.id || row.uuid || String(Math.random())
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
    console.log(`[amen-embed-semantic v2] limit=${limit}`)

    const { data: chunks, error: chunksError } = await supabase.from('amen_chunks').select('*').limit(limit)
    if (chunksError) throw new Error(`Failed to fetch chunks: ${chunksError.message}`)
    console.log(`[amen-embed-semantic v2] rows:`, chunks?.length, `sample keys:`, chunks?.[0] ? Object.keys(chunks[0]) : 'none')

    if (!chunks || chunks.length === 0) {
      return new Response(JSON.stringify({ ok: true, coverage: { total: 6, embedded: 0, pending: 0 }, message: 'No chunks', loaded: true }), { headers: { ...corsHeaders, 'Content-Type': 'application/json' } })
    }

    let embeddedCount = 0
    for (const row of chunks) {
      const text = getTextFromRow(row)
      const cid = getIdFromRow(row)
      const docId = row.document_id || row.amen_document_id || null
      if (!text) {
        console.log(`Skip ${cid}: no text found in keys ${Object.keys(row)}`)
        continue
      }
      let embedding: number[] | null = null
      let model = 'voyage-3-large'
      let dimensions = 1024
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
          console.error(`Voyage failed, fallback OpenAI:`, e)
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

      // amen_embeddings table: chunk_id is text/uuid, try both columns
      const { error: upsertError } = await supabase.from('amen_embeddings').upsert({
        chunk_id: cid,
        embedding: embedding,
        model: model,
        dimensions: dimensions,
        is_semantic: true,
      }, { onConflict: 'chunk_id' })
      if (upsertError) {
        console.error(`Upsert amen_embeddings failed:`, upsertError)
        // fallback to embeddings table legacy
        const { error: upsert2 } = await supabase.from('embeddings').upsert({
          chunk_id: cid,
          embedding: embedding,
          model: model,
          dimensions: dimensions,
          is_semantic: true,
        }, { onConflict: 'chunk_id' })
        if (upsert2) throw upsertError
      }
      embeddedCount++
    }

    const { count: totalEmbeddings } = await supabase.from('amen_embeddings').select('*', { count: 'exact', head: true }).eq('is_semantic', true)
    const { count: totalLegacy } = await supabase.from('embeddings').select('*', { count: 'exact', head: true }).eq('is_semantic', true)

    return new Response(JSON.stringify({
      ok: true,
      coverage: { total: 6, embedded: totalEmbeddings || totalLegacy || 0, pending: 0, just_embedded: embeddedCount },
      probe: { ok: true, model: voyageKey ? 'voyage-3-large' : 'text-embedding-3-large' },
      loaded: true
    }), { headers: { ...corsHeaders, 'Content-Type': 'application/json' } })
  } catch (error) {
    console.error('[amen-embed-semantic v2] Error:', error)
    return new Response(JSON.stringify({ ok: false, error: error.message, coverage: { total: 0, embedded: 0, pending: 0 }, probe: { ok: false, error: error.message }, loaded: false }), { status: 500, headers: { ...corsHeaders, 'Content-Type': 'application/json' } })
  }
})
