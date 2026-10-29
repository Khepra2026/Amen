import { serve } from "https://deno.land/std@0.224.0/http/server.ts"
import { createClient } from "https://esm.sh/@supabase/supabase-js@2"

serve(async (req) => {
  const { action, url, title, tradition, religion, civilisation } = await req.json()
  const supabase = createClient(
    Deno.env.get("SUPABASE_URL")!,
    Deno.env.get("SUPABASE_SERVICE_ROLE_KEY")!,
    { auth: { persistSession: false } }
  )

  if (action === "ingest") {
    if (!url) return new Response(JSON.stringify({ error: "url required" }), { status: 400 })

    const { data, error } = await supabase.from("amen_automaton_tasks").insert({
      payload: { url, title: title || url, tradition: tradition || "inconnu", religion: religion || "inconnu", civilisation: civilisation || "inconnu" },
      status: "pending"
    }).select("id").single()

    if (error) return new Response(JSON.stringify({ error: error.message }), { status: 500 })
    return new Response(JSON.stringify({ ok: true, task_id: data.id }), { status: 200 })
  }

  // orchestrate (ton code existant)
  const { data: tasks } = await supabase.from("amen_automaton_tasks").select("*").eq("status","pending").limit(10)
  if (!tasks?.length) return new Response(JSON.stringify({ orchestrator: "idle", tasks: 0 }), { status: 200 })

  //... ton ingestion ici...
  return new Response(JSON.stringify({ orchestrator: "running", tasks: tasks.length }), { status: 200 })
})