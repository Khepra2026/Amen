
import { useState } from 'react'
import { Button } from '@/components/ui/button'
import { Input } from '@/components/ui/input'
export default function ChatPage(){
  const [msgs,setMsgs]=useState<{role:string;content:string; sources?:string[]}[]>([])
  const [input,setInput]=useState('')
  return <div className='container mx-auto p-4 max-w-3xl'>
    <h1 className='text-2xl font-serif mb-4'>AMEN Knowledge Chat - RAG with Sources</h1>
    <div className='border rounded-lg h-[60vh] overflow-auto p-4 space-y-3'>
      {msgs.map((m,i)=><div key={i} className={m.role==='user'?'text-right':''}><div className='inline-block p-3 rounded-lg bg-muted'>{m.content}</div>{m.sources && <div className='text-xs text-muted-foreground mt-1'>Sources: {m.sources.join(', ')}</div>}</div>)}
      {msgs.length===0 && <div className='text-muted-foreground text-center py-12'>Aucune conversation. Les réponses exigeront des sources en mode RAG.</div>}
    </div>
    <div className='flex gap-2 mt-4'>
      <Input value={input} onChange={e=>setInput(e.target.value)} placeholder='Interrogez les traditions...' />
      <Button onClick={()=>{ if(!input) return; setMsgs([...msgs,{role:'user',content:input},{role:'assistant',content:'[MOCK RAG] Réponse avec provenance obligatoire - Mode local', sources:['Manuscrit A','Source B']} ]); setInput('')}}>Envoyer</Button>
    </div>
  </div>
}
