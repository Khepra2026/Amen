import { createClient } from "https://esm.sh/@supabase/supabase-js@2"

Deno.serve(async (req) => {
  const correlation_id = req.headers.get("x-correlation-id") || crypto.randomUUID()
  const supabase = createClient(Deno.env.get("SUPABASE_URL")!, Deno.env.get("SUPABASE_SERVICE_ROLE_KEY")!)

  try {
    // Récupère les 19 chunks sans embedding
    const { data: chunks } = await supabase.from("amen_chunks").select("id, content").is("embedding", null).limit(19)
    if (!chunks?.length) return new Response(JSON.stringify({ correlation_id, message: "All vectorized", health: (await supabase.rpc("amen_data_health")).data }))

    let count = 0
    for (const c of chunks) {
      // Appel OpenRouter embeddings - modèle 1024d
      const embRes = await fetch("https://openrouter.ai/api/v1/embeddings", {
        method: "POST",
        headers: {
          "Authorization": `Bearer ${Deno.env.get("OPENROUTER_API_KEY")}`,
          "Content-Type": "application/json"
        },
        body: JSON.stringify({
          model: "qwen/qwen3-embedding-8b", // 1024d - compatible
          input: c.content?.slice(0, 8000) || "AMEN SpiriTech"
        })
      })
      const embData = await embRes.json()
      const vector = embData.data?.[0]?.embedding
      if (!vector) throw new Error(`Embedding failed: ${JSON.stringify(embData).slice(0,200)}`)

      await supabase.from("amen_chunks").update({ embedding: vector }).eq("id", c.id)
      count++
    }

    await supabase.from("amen_agent_runs").insert({
      correlation_id,
      agent_id: "amen-embeddings",
      model: "qwen3-embedding-8b-1024d",
      status: "LIVE-LLM",
      output: { vectorized: count }
    })

    const health = (await supabase.rpc("amen_data_health")).data
    return new Response(JSON.stringify({ correlation_id, vectorized: count, health }))

  } catch (e) {
    return new Response(JSON.stringify({ correlation_id, error: e.message }), { status: 500 })
  }
})