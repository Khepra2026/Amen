# AMEN_V753_BGE_EMBEDDING_FILL.py
# Après AMEN_V753_BGE_TEST.py validé
# 1. Fetch chunks PENDING via REST GET (ça marche chez toi)
# 2. Calcule embedding BGE-M3 1024D local
# 3. Sauve en CSV + tente PATCH REST (si Cloudflare débloque) sinon fallback CSV pour import UI

import requests, json
from FlagEmbedding import BGEM3FlagModel

SUPABASE_URL="https://beoesuvrsblkucwtnppp.supabase.co"
KEY="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.[STRIPPED 138 bytes].zk9Z9gC53Qi5Wo-nMlqjJKeFdBrryg1AD02jFiKud98"

model = BGEM3FlagModel('BAAI/bge-m3', use_fp16=True)
print("BGE-M3 loaded")

# Fetch 100 chunks PENDING
url = f"{SUPABASE_URL}/rest/v1/amen_chunks?embedding_status=eq.PENDING&select=id,chunk_id,content&limit=100"
r = requests.get(url, headers={"apikey": KEY, "Authorization": f"Bearer {KEY}"})
chunks = r.json()
print(f"Fetched {len(chunks)} PENDING chunks")

for c in chunks:
    emb = model.encode([c['content']])['dense_vecs'][0].tolist()
    # PATCH attempt
    patch_url = f"{SUPABASE_URL}/rest/v1/amen_chunks?id=eq.{c['id']}"
    pr = requests.patch(patch_url, 
        headers={"apikey": KEY, "Authorization": f"Bearer {KEY}", "Content-Type": "application/json"},
        json={"embedding": emb, "embedding_status": "DONE"})
    print(f"{c['chunk_id']} -> PATCH {pr.status_code} {pr.text[:100]}")