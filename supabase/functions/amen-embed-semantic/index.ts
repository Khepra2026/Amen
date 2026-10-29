import { serve } from "https://deno.land/std@0.224.0/http/server.ts"
import { createClient } from "https://esm.sh/@supabase/supabase-js@2.45.4"
import { pipeline, env } from "https://esm.sh/@huggingface/transformers@3.7.2"
env.allowLocalModels = false
env.allowRemoteModels = true
const MODEL_ID = "Xenova/paraphrase-multilingual-MiniLM-L12-v2"
let extractor:any=null
serve(async (req)=>{
  const url=new URL(req.url)
  const supabase=createClient(Deno.env.get("SUPABASE_URL")!,Deno.env.get("SUPABASE_SERVICE_ROLE_KEY")!)
  const {count:total}=await supabase.from("documents").select("id",{count:"exact",head:true})
  const {count:embedded}=await supabase.from("documents").select("id",{count:"exact",head:true}).not("embedding_semantic","is",null)
  const coverage={total:total||0,embedded:embedded||0,pending:Math.max(0,(total||0)-(embedded||0))}
  if(!extractor){
    try{extractor=await pipeline("feature-extraction",MODEL_ID,{dtype:"fp32"})}catch(e){
      return new Response(JSON.stringify({ok:false,coverage,probe:{ok:false,error:String(e)},loaded:false,load_error:String(e)}),{headers:{"Content-Type":"application/json"}})
    }
  }
  if(url.searchParams.get("probe")==="1"){
    try{
      const out=await extractor("test probe amen",{pooling:"mean",normalize:true})
      return new Response(JSON.stringify({ok:true,loaded:true,dim:out.data.length,coverage,probe:{ok:true,dim:out.data.length}}),{headers:{"Content-Type":"application/json"}})
    }catch(e){
      return new Response(JSON.stringify({ok:false,coverage,probe:{ok:false,error:String(e)},loaded:false,load_error:String(e)}),{headers:{"Content-Type":"application/json"}})
    }
  }
  if(req.method==="POST"){
    try{
      const body=await req.json()
      if(body.mode==="index"){
        const {data:docs}=await supabase.from("documents").select("id,content,title").is("embedding_semantic",null).limit(body.batch||24)
        let indexed=0
        for(const doc of docs||[]){
          const txt=(doc.title+" "+doc.content).slice(0,8000)
          const out=await extractor(txt,{pooling:"mean",normalize:true})
          await supabase.from("documents").update({embedding_semantic:Array.from(out.data)}).eq("id",doc.id)
          indexed++
        }
        return new Response(JSON.stringify({ok:true,indexed}),{headers:{"Content-Type":"application/json"}})
      }
    }catch(e){}
  }
  return new Response(JSON.stringify({ok:true,coverage,loaded:!!extractor}),{headers:{"Content-Type":"application/json"}})
})
