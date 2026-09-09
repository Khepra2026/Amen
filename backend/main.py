from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
app = FastAPI(title="AMEN API", docs_url="/docs", openapi_url="/openapi.json")
app.add_middleware(CORSMiddleware, allow_origins=["*"], allow_methods=["*"], allow_headers=["*"])

@app.get("/")
def root(): return {"name":"AMEN API","status":"operational","sovereignty":"LOCAL-FIRST"}
@app.get("/health")
@app.get("/api/v1/health")
def health(): return {"status":"ok","service":"amen-api"}
@app.get("/ready")
@app.get("/api/v1/ready")
def ready(): return {"status":"ready"}
@app.get("/version")
@app.get("/api/v1/version")
def version(): return {"version":"1.0.0","sovereignty":"LOCAL-FIRST"}
@app.post("/api/v1/rag/query")
def rag(payload: dict): return {"question":payload.get("question",""),"answer":"Je ne dispose pas d'une source suffisamment fiable pour etablir cette affirmation. [DEGRADED]","sources":[],"reliability":"S6"}
@app.get("/api/v1/traditions")
def trad(): return {"traditions":["kemet","afrique","kongo","yoruba","hermetisme","gnose"]}
@app.get("/debug/routes")
def routes(): return [{"path":r.path,"methods":list(r.methods)} for r in app.routes]
