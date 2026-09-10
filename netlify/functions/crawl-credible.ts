import { Handler } from '@netlify/functions'
import { createClient } from '@supabase/supabase-js'
const supabase = createClient(process.env.SUPABASE_URL!, process.env.SUPABASE_SERVICE_KEY!)
export const handler: Handler = async (event) => {
  const { source_id } = JSON.parse(event.body||'{}')
  const { data: src } = await supabase.from('amen_sources').select('*').eq('source_id', source_id).single()
  const html = await fetch(src.url).then(r=>r.text())
  return {statusCode:200, body: JSON.stringify({ok:true, source_id, length: html.length, institution: src.institution})}
}
