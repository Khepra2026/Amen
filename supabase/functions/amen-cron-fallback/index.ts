import { serve } from "https://deno.land/std@0.224.0/http/server.ts"
import { createClient } from "https://esm.sh/@supabase/supabase-js@2.45.4"
const SUPABASE_URL = Deno.env.get("SUPABASE_URL")
const SERVICE_KEY = Deno.env.get("SUPABASE_SERVICE_ROLE_KEY") || Deno.env.get("SUPABASE_SERVICE_KEY")
serve(async (req) => {
  console.log("AMEN CRON HEARTBEAT Readdy v3", new Date().toISOString())
  if (!SUPABASE_URL || !SERVICE_KEY) {
    return new Response(JSON.stringify({ ok: false, degraded: true, error: "ENV MISSING" }), { status: 200, headers: { "Content-Type": "application/json" } })
  }
  try {
    const sb = createClient(SUPABASE_URL, SERVICE_KEY, { auth: { persistSession: false } })
    const { data, error } = await sb.from("amen_agents").select("agent_id").eq("status","ACTIVE").limit(60)
    if (error) throw error
    return new Response(JSON.stringify({ ok: true, agents_count: data?.length ?? 0 }), { status: 200, headers: { "Content-Type": "application/json" } })
  } catch (e) {
    return new Response(JSON.stringify({ ok: false, degraded: true, error: e.message }), { status: 200, headers: { "Content-Type": "application/json" } })
  }
})
