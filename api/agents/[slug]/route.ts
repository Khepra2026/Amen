export const runtime = 'edge'
const API_BASE = process.env.API_DOMAIN ? \https://\\ : process.env.ENV === 'dev' ? 'http://localhost:8000' : 'https://api.khepra.hermeunia.com'

export async function POST(req: Request, { params }: { params: { slug: string } }) {
  const { query } = await req.json()
  const backendUrl = \\/api/v1/agents/\/chat\
  try {
    const res = await fetch(backendUrl, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json', 'Authorization': \Bearer \\ },
      body: JSON.stringify({ query, domain: process.env.DOMAIN })
    })
    const data = await res.json()
    return Response.json(data)
  } catch (e) {
    return Response.json({ agent: params.slug, query, api_base: API_BASE, error: 'amen-api non joignable - fais docker-compose up', env: process.env.ENV, domain: process.env.DOMAIN })
  }
}
