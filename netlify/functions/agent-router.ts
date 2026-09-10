import { Handler } from '@netlify/functions'
import { createClient } from '@supabase/supabase-js'
const supabase = createClient(process.env.SUPABASE_URL!, process.env.SUPABASE_SERVICE_KEY!)
export const handler: Handler = async (event) => {
  const slug = event.path.split('/').pop()
  const { query } = JSON.parse(event.body||'{}')
  const vercel = await fetch(\https://amen-coral.vercel.app/api/agents/\\, {method:'POST', body:JSON.stringify({query})}).then(r=>r.json())
  return {statusCode:200, body: JSON.stringify(vercel)}
}
