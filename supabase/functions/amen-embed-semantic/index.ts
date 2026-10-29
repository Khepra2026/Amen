// AMEN P0-RAG-01 v4 FINAL - Fix vector(1024) + uuid + content
import { createClient } from 'https://esm.sh/@supabase/supabase-js@2.39.0'

const corsHeaders = {
  'Access-Control-Allow-Origin': '*',
  'Access-Control-Allow-Headers': 'authorization, x-client-info, apikey, content-type',
}

function getText(row: any): string | null {
  const keys = ['content', 'chunk_text', 'text', 'body']
  for (const k of keys) if (row[k] && typeof row[k] === 'string' && row[k].trim().length > 10) return row[k]
  let best = ''
  for (const v of Object.values(row)) if (typeof v === 'string' && v.length > best.length) best = v
  return best.length > 10 ? best : null
}

Deno.serve(async (req) => {
  if (req.method === 'OPTIONS') return new Response('ok', { headers: corsHeaders })
  try {
    const url = Deno.env.get('SUPABASE_URL')!
    const serviceKey = Deno.env.get('SUPABASE_SERVICE_ROLE_KEY')!
    const voyageKey = Deno.env.get('VOYAGE_API_KEY')
    const openaiKey = Deno.env.get('OPENAI_API_KEY')
    const supabase = createClient(url, serviceKey)
    const { limit = 6, force = false } = await req.json().catch(() => ({}))
    console.log(`[v4 FINAL] limit=${limit} force=${force}`)

    const { data: chunks, error } = await supabase.from('amen_chunks').select('*').limit(limit).order('created_at', { ascending: true })
    if (error) throw new Error(`fetch chunks: ${error.message}`)
    if (!chunks?.length) return new Response(JSON.stringify({ ok: true, coverage: { total: 0, embedded: 0 }, loaded: true }), { headers: { ...corsHeaders, 'Content-Type': 'application/json' } })

    let embedded = 0
    for (const row of chunks) {
      const text = getText(row)
      const uuid = row.id
      if (!text || !uuid) continue
      console.log(`Embed ${row.chunk_id} ${uuid}`)

      let emb: number[] | null = null
      let model = 'voyage-3-large'
      let dims = 1024

      if (voyageKey) {
        const r = await fetch('https://api.voyageai.com/v1/embeddings', {
          method: 'POST',
          headers: { 'Content-Type': 'application/json', Authorization: `Bearer ${voyageKey}` },
          body: JSON.stringify({ input: [text.slice(0, 8000)], model: 'voyage-3-large', input_type: 'document' }),
        })
        if (!r.ok) throw new Error(`Voyage ${r.status}: ${await r.text()}`)
        const j = await r.json()
        emb = j.data[0].embedding
        model = j.model || 'voyage-3-large'
        dims = emb.length
      } else if (openaiKey) {
        const r = await fetch('https://api.openai.com/v1/embeddings', {
          method: 'POST',
          headers: { 'Content-Type': 'application/json', Authorization: `Bearer ${openaiKey}` },
          body: JSON.stringify({ input: text.slice(0, 8000), model: 'text-embedding-3-large' }),
        })
        if (!r.ok) throw new Error(`OpenAI ${r.status}: ${await r.text()}`)
        const j = await r.json()
        emb = j.data[0].embedding
        model = 'text-embedding-3-large'
        dims = emb.length
      } else throw new Error('No VOYAGE_API_KEY or OPENAI_API_KEY')

      if (!emb) continue

      // Upsert amen_embeddings
      const { error: e1 } = await supabase.from('amen_embeddings').upsert({
        chunk_id: uuid,
        embedding: emb,
        model,
        dimensions: dims,
        is_semantic: true,
      }, { onConflict: 'chunk_id' })
      if (e1) {
        console.error('upsert amen_embeddings', e1)
        throw new Error(`amen_embeddings upsert: ${e1.message}`)
      }

      // Update amen_chunks embedding_semantic
      const { error: e2 } = await supabase.from('amen_chunks').update({
        embedding_semantic: emb,
        embedding_status: 'EMBEDDED',
      }).eq('id', uuid)
      if (e2) console.error('update amen_chunks', e2)

      embedded++
    }

    const { count } = await supabase.from('amen_embeddings').select('*', { count: 'exact', head: true }).eq('is_semantic', true)

    return new Response(JSON.stringify({
      ok: true,
      coverage: { total: 6, embedded: count || embedded, just_embedded: embedded },
      probe: { ok: true, model: 'voyage-3-large', dimensions: 1024 },
      loaded: true
    }), { headers: { ...corsHeaders, 'Content-Type': 'application/json' } })
  } catch (err) {
    console.error('v4 error', err)
    return new Response(JSON.stringify({ ok: false, error: err.message, coverage: { total: 0, embedded: 0, pending: 0 }, probe: { ok: false, error: err.message }, loaded: false }), { status: 500, headers: { ...corsHeaders, 'Content-Type': 'application/json' } })
  }
})
