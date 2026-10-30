import { serve } from "https://deno.land/std@0.224.0/http/server.ts"
import { createClient } from "https://esm.sh/@supabase/supabase-js@2.45.4"

const SUPABASE_URL = Deno.env.get("SUPABASE_URL")!
const SERVICE_KEY = Deno.env.get("SUPABASE_SERVICE_ROLE_KEY") || Deno.env.get("SUPABASE_SERVICE_KEY")!
const CRON_TOKEN = Deno.env.get("AMEN_CRON_TOKEN")

const REQUIRED_SECRETS = ["SUPABASE_URL", "SUPABASE_SERVICE_ROLE_KEY", "AMEN_CRON_TOKEN"] as const

function checkAuth(req: Request): boolean {
  if (!CRON_TOKEN) return true // si pas configuré, on laisse passer en mode dégradé
  const bearer = req.headers.get("Authorization")?.replace(/^Bearer\s+/i, "")
  const custom = req.headers.get("X-AMEN-CRON-TOKEN") ?? req.headers.get("x-amen-cron-token")
  return (bearer || custom) === CRON_TOKEN
}

serve(async (req) => {
  console.log("AMEN CRON HEARTBEAT Readdy v5 - GitHub=Supabase Sync", new Date().toISOString())

  if (!checkAuth(req)) {
    return new Response(JSON.stringify({ error: "Unauthorized" }), { status: 401, headers: { "Content-Type": "application/json" } })
  }

  const sb = createClient(SUPABASE_URL, SERVICE_KEY, { auth: { persistSession: false } })

  // Automatisation collecte - inventaire sans exposer les valeurs
  const inventory = REQUIRED_SECRETS.map(key => ({
    key,
    present: !!Deno.env.get(key),
    fingerprint: Deno.env.get(key) ? `...${Deno.env.get(key)!.slice(-4)}` : null
  }))

  try {
    // Log inventaire en base pour audit
    await sb.from("amen_cron_runs").insert({
      triggered_by: "cron_with_inventory",
      http_code: 200,
      response_body: { inventory, agents_check: true }
    })

    const { data, error } = await sb.from("amen_agents").select("agent_id").eq("status","ACTIVE").limit(60)
    if (error) throw error

    return new Response(JSON.stringify({
      ok: true,
      agents_count: data?.length ?? 0,
      secrets_inventory: inventory,
      timestamp: new Date().toISOString(),
      source: "amen-cron-fallback-v5"
    }), { status: 200, headers: { "Content-Type": "application/json" } })

  } catch (e) {
    return new Response(JSON.stringify({ ok: false, degraded: true, error: (e as Error).message, inventory }), 
      { status: 200, headers: { "Content-Type": "application/json" } })
  }
})