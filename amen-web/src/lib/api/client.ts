
import { z } from 'zod'

export class ApiError extends Error {
  constructor(public status:number, public code:string, message:string){ super(message); this.name='ApiError' }
}
export type ApiConfig = { baseUrl:string; timeoutMs:number }
const DEFAULT: ApiConfig = { baseUrl: (import.meta as any).env.VITE_API_URL || 'http://localhost:3000/api', timeoutMs: 15000 }

export class ApiClient {
  constructor(private cfg: ApiConfig = DEFAULT){}
  private async request<T>(path:string, init: RequestInit & { schema?: z.ZodType<T> } = {}): Promise<T>{
    const controller = new AbortController()
    const t = setTimeout(()=>controller.abort(), this.cfg.timeoutMs)
    try{
      const res = await fetch(`${this.cfg.baseUrl}${path}`, { ...init, signal: controller.signal, headers: { 'Content-Type':'application/json', ...(init.headers||{}) } })
      if(!res.ok) throw new ApiError(res.status, `HTTP_${res.status}`, await res.text())
      const data = await res.json()
      if(init.schema) return init.schema.parse(data)
      return data as T
    } finally { clearTimeout(t) }
  }
  get<T>(p:string, schema?: z.ZodType<T> | undefined){ return this.request<T>(p,{method:'GET', schema}) }
  post<T>(p:string, body:unknown, schema?: z.ZodType<T> | undefined){ return this.request<T>(p,{method:'POST', body: JSON.stringify(body), schema}) }
}
export const api = new ApiClient()

