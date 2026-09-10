export const handler = async (event) => {
  const API_BASE = process.env.API_DOMAIN ? \https://\\ : 'https://api.khepra.hermeunia.com'
  const slug = event.path.split('/').pop()
  const { query } = JSON.parse(event.body||'{}')
  return { statusCode: 200, body: JSON.stringify({ agent: slug, query, api_base: API_BASE, routed_to: \\/api/v1/agents/\/chat\ }) }
}
