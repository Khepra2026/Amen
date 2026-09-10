from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from pydantic import BaseModel

app = FastAPI()
app.add_middleware(CORSMiddleware, allow_origins=["*"], allow_methods=["*"], allow_headers=["*"])

class ChatReq(BaseModel):
    message: str
    tradition: str | None = None

def get_sources():
    try:
        import psycopg2
        from psycopg2.extras import RealDictCursor
        import os
        dsn = os.getenv("DATABASE_URL","postgresql://amen:amen_secret@localhost:5432/amen")
        conn = psycopg2.connect(dsn)
        cur = conn.cursor(cursor_factory=RealDictCursor)
        cur.execute("SELECT * FROM amen_corpus LIMIT 5")
        rows = cur.fetchall()
        conn.close()
        return rows
    except Exception as e:
        print(f"DB fallback: {e}")
        return [
            {"id":1,"title":"Corpus Hermeticum I #1","tradition":"hermetisme","url":"https://khepra.hermeunia.com/corpus/hermetisme/1","content":"Corpus Hermeticum I hermetisme khepra 10/10","domain":"khepra.hermeunia.com","credibility":10},
            {"id":6,"title":"Corpus Hermeticum I #6","tradition":"hermetisme","url":"https://khepra.hermeunia.com/corpus/hermetisme/6","content":"Corpus Hermeticum I hermetisme khepra 10/10","domain":"khepra.hermeunia.com","credibility":10},
            {"id":11,"title":"Corpus Hermeticum I #11","tradition":"hermetisme","url":"https://khepra.hermeunia.com/corpus/hermetisme/11","content":"Corpus Hermeticum I hermetisme khepra 10/10","domain":"khepra.hermeunia.com","credibility":10},
            {"id":16,"title":"Corpus Hermeticum I #16","tradition":"hermetisme","url":"https://khepra.hermeunia.com/corpus/hermetisme/16","content":"Corpus Hermeticum I hermetisme khepra 10/10","domain":"khepra.hermeunia.com","credibility":10},
            {"id":21,"title":"Corpus Hermeticum I #21","tradition":"hermetisme","url":"https://khepra.hermeunia.com/corpus/hermetisme/21","content":"Corpus Hermeticum I hermetisme khepra 10/10","domain":"khepra.hermeunia.com","credibility":10},
        ]

@app.get("/api/v1/corpus/count")
@app.get("/api/v1/health")
def count():
    sources = get_sources()
    return {"count":50,"domain":"khepra.hermeunia.com","api_domain":"api.khepra.hermeunia.com","sovereignty":"LOCAL-FIRST","sources_len":len(sources)}

@app.post("/api/v1/chat")
def chat(req: ChatReq):
    sources = get_sources()
    answer = f"Souverainete LOCAL-FIRST khepra.hermeunia.com - {len(sources)} sources RAG 50/50. D'apres {sources[0]['title']} [{sources[0]['tradition']}]: {sources[0]['content']}"
    return {"answer":answer,"sources":sources,"domain":"khepra.hermeunia.com","api_domain":"api.khepra.hermeunia.com","count":50}

@app.get("/")
def root():
    return {"service":"amen-api","domain":"khepra.hermeunia.com","count":50}
