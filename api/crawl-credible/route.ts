import { createClient } from '@supabase/supabase-js'
export const runtime = 'edge'
const ALLOWED = ['ifao.egnet.net','perse.fr','gnosis.org','harvard.edu','ox.ac.uk','cam.ac.uk','soas.ac.uk']
const supabase = createClient(process.env.SUPABASE_URL!, process.env.SUPABASE_SERVICE_KEY!)

export async function POST(req: Request) {
  const { source_id } = await req.json()
  const { data: src } = await supabase.from('amen_sources').select('*').eq('source_id', source_id).single()
  if(!src) return new Response('source not found', {status:404})
  const url = new URL(src.url)
  if(!ALLOWED.some(d=>url.hostname.includes(d))) return new Response('domain not allowed', {status:403})
  const html = await fetch(src.url, {headers:{'User-Agent':'AmenBot/1.0'}}).then(r=>r.text())
  const text = html.replace(/<[^>]+>/g,' ').slice(0,15000)
  const credibility = src.institution.includes('CNRS')||src.institution.includes('IFAO')? 10 : src.credibility
  await supabase.from('amen_sources').update({credibility, is_peer_reviewed: credibility>=9, last_crawled_at: new Date().toISOString()}).eq('id', src.id)
  await supabase.from('amen_agent_runs').insert({agent_slug:'amen-crawler', input_payload:{source_id, url:src.url}, output_payload:{length:text.length, credibility}, status:'success'})
  return Response.json({source_id, url:src.url, chars:text.length, credibility, validated:credibility>=9})
}
