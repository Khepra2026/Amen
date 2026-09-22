import { serve } from "https://deno.land/std@0.168.0/http/server.ts"
import { createClient } from "https://esm.sh/@supabase/supabase-js@2.45.4"
import { pipeline, env } from "npm:@xenova/transformers@2.17.2"

env.allowLocalModels = false
env.allowRemoteModels = true
env.useBrowserCache = false
// @ts-ignore
env.backends.onnx.wasm.numThreads = 1
// @ts-ignore
env.backends.onnx.wasm.wasmPaths = "https://cdn.jsdelivr.net/npm/onnxruntime-web@1.18.0/dist/"

const MODEL = "Xenova/paraphrase-multilingual-MiniLM-L12-v2"
let extractor: any = null

async function getExtractor() {
  if (!extractor) {
    extractor = await pipeline('feature-extraction', MODEL, {
      quantized: true,
      revision: 'main'
    })
  }
  return extractor
}

function meanPool(embeddings: number[][]): number[] {
  const dim = embeddings[0].length
  const out = new Array(dim).fill(0)
  for (const e of embeddings) {
    for (let i=0;i<dim;i++) out[i]+=e[i]
  }
  return out.map(v => v / embeddings.length)
}

serve(async (req) => {
  const url = new URL(req.url)
  if (url.searchParams.has('probe')) {
    try {
      const ext = await getExtractor()
      const test = await ext("test probe", { pooling: 'mean', normalize: true })
      return new Response(JSON.stringify({ ok: true, dim: test.data.length, model: MODEL, loaded: true }), { headers: { "Content-Type": "application/json" } })
    } catch (e) {
      return new Response(JSON.stringify({ ok: false, error: String(e), loaded: false, coverage: { total: 0, embedded: 0, pending: 0 }, probe: { ok: false, error: String(e) } }), { status: 500, headers: { "Content-Type": "application/json" } })
    }
  }

  if (req.method!== 'POST') return new Response("Method not allowed", { status: 405 })

  const { mode, batch = 24 } = await req.json()
  const supabase = createClient(Deno.env.get("SUPABASE_URL")!, Deno.env.get("SUPABASE_SERVICE_ROLE_KEY")!)

  const { count: total } = await supabase.from('ressources_1082').select('*', { count: 'exact', head: true })
  const { count: embedded } = await supabase.from('ressources_1082').select('*', { count: 'exact', head: true }).not('embedding', 'is', null)

  if (mode === 'index') {
    const ext = await getExtractor()
    const { data: rows } = await supabase.from('ressources_1082').select('id, contenu').is('embedding', null).limit(batch)

    let indexed = 0
    for (const row of rows?? []) {
      const out = await ext(row.contenu.slice(0, 512), { pooling: 'mean', normalize: true })
      await supabase.from('ressources_1082').update({ embedding: Array.from(out.data) }).eq('id', row.id)
      indexed++
    }
    return new Response(JSON.stringify({
      ok: true, mode: 'index', scanned: rows?.length?? 0, indexed,
      remaining: (total?? 0) - (embedded?? 0) - indexed,
      coverage: { total: total?? 0, embedded: (embedded?? 0) + indexed, pending: (total?? 0) - (embedded?? 0) - indexed },
      used_dim: 384, provider: "local-onnx", model: MODEL, loaded: true
    }), { headers: { "Content-Type": "application/json" } })
  }
  return new Response(JSON.stringify({ ok: false, error: "unknown mode" }), { status: 400 })
})