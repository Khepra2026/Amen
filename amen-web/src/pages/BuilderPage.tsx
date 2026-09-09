
import { useEffect, useRef, useState } from 'react'
export default function BuilderPage(){
  const ref = useRef<HTMLDivElement>(null)
  const [status,setStatus]=useState('INITIALIZING')
  useEffect(()=>{
    let mounted=true
    import('grapesjs').then(m=>{
      if(!mounted || !ref.current) return
      const grapesjs = m.default
      const editor = grapesjs.init({
        container: ref.current,
        height: '100%',
        storageManager: { type:'local', autosave:true, autoload:true },
        blockManager: { blocks: [
          { id:'hero', label:'Hero AMEN', content:'<section class=\"p-12 text-center\"><h1 class=\"text-4xl font-serif\">AMEN Hero</h1></section>' },
          { id:'text', label:'Text', content:'<div data-gjs-type=\"text\">Texte sacré éditable</div>' },
          { id:'card', label:'KnowledgeCard', content:'<div class=\"border rounded-xl p-6\"><h3>Knowledge Card</h3><p>Provenance requise</p></div>' }
        ]}
      })
      setStatus('READY')
    })
    return ()=>{ mounted=false }
  },[])
  return <div className='h-[calc(100vh-4rem)] flex flex-col'>
    <div className='border-b p-2 flex justify-between items-center'><span className='text-sm'>AMEN Visual Builder - GrapesJS - STATUS: {status}</span><span className='text-xs'>Design System → Reusable Components → Builder → Page Schema → Renderer</span></div>
    <div ref={ref} className='flex-1'></div>
  </div>
}
