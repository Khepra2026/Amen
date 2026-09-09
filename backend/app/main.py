from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
import httpx, os, traceback

app = FastAPI(title="AMEN API", docs_url="/docs")
app.add_middleware(CORSMiddleware, allow_origins=["*"], allow_methods=["*"], allow_headers=["*"])

OLLAMA_URL = os.getenv("OLLAMA_URL", "http://ollama:11434")

@app.get("/")
def root(): return {"name":"AMEN API","status":"operational","llm":"mistral:7b-instruct","ollama_url":OLLAMA_URL,"sovereignty":"LOCAL-FIRST"}

@app.get("/health")
@app.get("/api/v1/health")
def health(): return {"status":"ok","service":"amen-api","ollama_url":OLLAMA_URL}

@app.get("/api/v1/traditions")
def trad(): return {"traditions":["kemet","afrique","kongo","yoruba","hermetisme","gnose","kabbale","vedanta","yoga","bouddhisme","taoisme","soufisme","alchimie"]}

@app.post("/api/v1/rag/query")
async def rag(payload: dict):
    q=payload.get("question","")
    if not q or len(q)<3:
        return {"question":q,"answer":"Je ne dispose pas d'une source suffisamment fiable pour établir cette affirmation.","sources":[],"reliability":"S6","status":"DEGRADED"}
    try:
        async with httpx.AsyncClient(timeout=90) as client:
            # Test d'abord si Ollama est joignable
            tags = await client.get(f"{OLLAMA_URL}/api/tags", timeout=10)
            print(f"Ollama tags: {tags.status_code}")
            r = await client.post(f"{OLLAMA_URL}/api/generate", json={
                "model":"mistral:7b-instruct",
                "prompt":f"Tu es AMEN, expert traditions anciennes avec rigueur S0-S1. Question: {q}. Réponds en 3 phrases max avec fiabilité.",
                "stream":False,
                "options":{"temperature":0.2}
            }, timeout=60)
            data=r.json()
            print(f"Ollama response: {data.get('response','')[:200]}")
            return {
                "question":q,
                "answer":data.get("response",""),
                "sources":[{"id":"ollama-mistral:7b-instruct","type":"LLM local","reliability":"S3","model":"mistral:7b-instruct"}],
                "reliability":"S3",
                "status":"OK",
                "model":"mistral:7b-instruct"
            }
    except Exception as e:
        tb=traceback.format_exc()
        print(f"RAG ERROR: {e}\n{tb}")
        return {"question":q,"answer":f"Je ne dispose pas d'une source suffisamment fiable pour établir cette affirmation. [Erreur Ollama: {e} | URL={OLLAMA_URL}]","sources":[],"reliability":"S6","status":"DEGRADED","error":str(e),"trace":tb[:1000]}

@app.get("/debug/ollama")
async def debug_ollama():
    try:
        async with httpx.AsyncClient(timeout=10) as client:
            r=await client.get(f"{OLLAMA_URL}/api/tags")
            return {"ollama_url":OLLAMA_URL,"status":r.status_code,"data":r.json()}
    except Exception as e:
        return {"ollama_url":OLLAMA_URL,"error":str(e),"trace":traceback.format_exc()[:1000]}
