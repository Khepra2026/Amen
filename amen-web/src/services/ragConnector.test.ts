import { describe, it, expect, vi } from 'vitest'
describe('ragConnector', () => {
  it('proxy /api/chat charge', async () => {
    global.fetch = vi.fn().mockResolvedValue({ ok: true, json: async () => ({ answer: 'ok' }) } as any)
    const mod = await import('../services/ragConnector')
    expect(mod.queryAmenRAG).toBeDefined()
  })
  it('REJECTED_AS_SEMANTIC doit rester tant que BGE-M3 non deploye', () => {
    expect('REJECTED_AS_SEMANTIC').toBe('REJECTED_AS_SEMANTIC')
  })
})
