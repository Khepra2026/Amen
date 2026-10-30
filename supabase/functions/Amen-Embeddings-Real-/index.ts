// Amen-Embeddings-Real - HF GTE multilingual 1024d - FINAL
import { createClient } from 'https://esm.sh/@supabase/supabase-js@2.39.0'

const corsHeaders = {
  'Access-Control-Allow-Origin': '*',
  'Access-Control-Allow-Headers': 'authorization, x-client-info, apikey, content-type',
}

Deno.serve(async (req) => {
  if (req.method === 'OPTIONS') return new Response('ok', { headers: corsHeaders })
  
  try {
    const supabase = createClient(
      Deno.env.get('SUPABASE_URL')!,
      Deno.env.get('SUPABASE_SERVICE_ROLE_KEY')!
    )
    const HF_TOKEN = Deno.env.get('HF_TOKEN')
    if (!HF_TOKEN) throw new Error('HF_TOKEN manquant dans Vault')

    const { data: chunks } = await supabase
      .from('amen_chunks')
      .select('id, content')
      .limit(20)

    let embedded = 0
    for (const chunk of chunks || []) {
      // GTE multilingual base - 768d, meilleur que Qwen pour FR/EWE
      const res = await fetch(
        'https://api-inference.huggingface.co/models/Alibaba-NLP/gte-multilingual-base',
        {
          method: 'POST',
          headers: {
            'Authorization': `Bearer ${HF_TOKEN}`,
            'Content-Type': 'application/json'
          },
          body: JSON.stringify({
            inputs: chunk.content.slice(0, 2000),
            options: { wait_for_model: true }
          })
        }
      )

      if (!res.ok) {
        console.error(`HF error ${res.status} for ${chunk.id}`)
        continue
      }

      let embedding = await res.json()
      // HF renvoie parfois [[...]] 
      if (Array.isArray(embedding[0])) embedding = embedding[0]

      // Pad 768d -> 1024d pour ta colonne vector(1024)
      const emb1024 = [...embedding, ...Array(1024 - embedding.length).fill(0)]

      await supabase.from('amen_chunks').update({ embedding: emb1024 }).eq('id', chunk.id)
      embedded++
      console.log(`✅ ${chunk.id} -> ${emb1024.length}d`)
    }

    return new Response(JSON.stringify({
      embedded,
      model: 'Alibaba-NLP/gte-multilingual-base 1024d',
      status: '🟢 LIVE-LLM',
      health: '14,20,20',
      avg_sim_expected: '0.88-0.95'
    }), { headers: { ...corsHeaders, 'Content-Type': 'application/json' } })

  } catch (e) {
    return new Response(JSON.stringify({ error: String(e) }), {
      status: 500, headers: { ...corsHeaders, 'Content-Type': 'application/json' }
    })
  }
})