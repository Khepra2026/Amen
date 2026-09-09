// ==============================================================================
// AMEN RAG & AI MULTI-AGENT CONNECTOR (Production Ready)
// ==============================================================================
export async function queryAmenRAG(prompt: string, contextFilter?: string) {
    const response = await fetch('/api/chat', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ prompt, contextFilter })
    });
    if (!response.ok) {
        throw new Error(`Erreur RAG API: ${response.statusText}`);
    }
    return await response.json();
}
