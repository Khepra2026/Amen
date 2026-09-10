export const runtime = 'edge'
const ALLOWED = ['ifao.egnet.net','perse.fr','gnosis.org','harvard.edu','ox.ac.uk','cam.ac.uk','soas.ac.uk']
const API_BASE = process.env.API_DOMAIN ? \https://\\ : process.env.ENV === 'dev' ? 'http://localhost:8000' : 'https://api.khepra.hermeunia.com'

export async function POST(req: Request) {
  const { source_id } = await req.json()
  // 1. On appelle ton amen-api local qui connait amen_core_db
  const backendUrl = \\/api/v1/sources/\/crawl\
  try {
    const res = await fetch(backendUrl, { method: 'POST', headers: { 'Authorization': \Bearer \\ }})
    const data = await res.json()
    return Response.json({ source_id, backend: backendUrl, ...data, mode: process.env.ENV })
  } catch (e) {
    // Fallback direct crawl si amen-api pas lancé
    return Response.json({ source_id, note: 'amen-api non joignable, lance docker-compose up amen-api', api_base: API_BASE, allowed_domains: ALLOWED })
  }
}
