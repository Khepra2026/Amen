export const handler = async (event) => {
  const API_BASE = process.env.API_DOMAIN ? \https://\\ : 'https://api.khepra.hermeunia.com'
  const { source_id } = JSON.parse(event.body||'{}')
  return { statusCode: 200, body: JSON.stringify({ ok: true, source_id, api_base: API_BASE, env: process.env.ENV }) }
}
