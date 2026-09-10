import os
from supabase import create_client

URL = "https://e7e53080-7e80-4477-bc69-67581c9c8ee2.supabase.co"  # remplace par ton SUPABASE_URL du Settings
KEY = os.getenv("SUPABASE_SERVICE_ROLE_KEY") or input("colle SERVICE_ROLE_KEY: ").strip()

supabase = create_client(URL, KEY)

traditions = ['hermetisme','alchimie','gnose','kabbale','soufisme']
corpus = []
for i in range(1,51):
    trad = traditions[(i-1) % len(traditions)]
    corpus.append({
      "title": f"Corpus Hermeticum I #{i}",
      "tradition": trad,
      "url": f"https://khepra.hermeunia.com/corpus/{trad}/{i}",
      "content": f"Corpus Hermeticum I {trad} khepra 10/10 sovereignty LOCAL-FIRST",
      "domain": "khepra.hermeunia.com",
      "api_domain": "api.khepra.hermeunia.com",
      "credibility": 10
    })

res = supabase.table("amen_corpus").upsert(corpus, on_conflict="url").execute()
print(f"amen_corpus: {len(res.data)} / 50")

sources = [{"corpus_id": r["id"], "source_id": f"souverain-{r['id']}", "url": r["url"], "title": r["title"], "tradition": r["tradition"], "domain": "khepra.hermeunia.com"} for r in res.data]
res2 = supabase.table("amen_corpus_sources").upsert(sources, on_conflict="url").execute()
print(f"amen_corpus_sources: {len(res2.data)} / 50")

supabase.table("amen_agents").upsert({"name":"Khepra Souverain","role":"guardian-corpus","status":"active","domain":"khepra.hermeunia.com"}, on_conflict="name").execute()
print("amen_agents: 1 - OK")
print("VERCEL PROD deja OK:", "https://amen-coral.vercel.app/api/v1/corpus/count = 50")
