import { createClient } from '@supabase/supabase-js'
export const runtime = 'edge'
const supabase = createClient(process.env.SUPABASE_URL!, process.env.SUPABASE_SERVICE_KEY!)
export async function POST(req: Request, {params}:{params:{slug:string}}) {
  const { query } = await req.json()
  const { data: agent } = await supabase.from('amen_agents').select('*').eq('slug', params.slug).single()
  if(!agent) return new Response('agent not found', {status:404})
  const { data: corpus } = await supabase.from('amen_corpus').select('*, amen_corpus_sources!inner(amen_sources!inner(title, institution, url, credibility))').ilike('tradition','%'+query+'%').limit(5)
  const context = corpus?.map(c=>[]).join('\n') || 'Aucun corpus'
  return Response.json({agent: agent.slug, role: agent.role, system_prompt: agent.system_prompt, context, answer: Agent  a trouve  manuscrits})
}
