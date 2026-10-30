
import json, time, uuid
from pathlib import Path
import requests

KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.[STRIPPED 138 bytes].zk9Z9gC53Qi5Wo-nMlqjJKeFdBrryg1AD02jFiKud98"
URL = "https://beoesuvrsblkucwtnppp.supabase.co"
MANIFEST = r"D:\AMEN-SEEDING\03_MANIFEST"

HEADERS = {"apikey": KEY, "Authorization": f"Bearer {KEY}", "Content-Type":"application/json", "Prefer":"return=minimal"}

def bulk(table, rows, batch=50):
    url = f"{URL}/rest/v1/{table}"
    for i in range(0, len(rows), batch):
        c = rows[i:i+batch]
        r = requests.post(url, headers=HEADERS, data=json.dumps(c), timeout=30)
        if r.status_code not in (200,201,204):
            print(f"FAIL {table} {i+len(c)}/{len(rows)} {r.status_code} {r.text[:800]}")
        else:
            print(f"INSERT {table} {i+len(c)}/{len(rows)}")
        time.sleep(0.2)

print("=== AMEN CHUNKS INGEST FINAL - content (not content_text) ===")

chunks_file = Path(MANIFEST) / "chunks.jsonl"
batch=[]
total=0
for line in open(chunks_file, encoding="utf-8"):
    if not line.strip(): continue
    try:
        j=json.loads(line)
        batch.append({
            "id": str(uuid.uuid4()),
            "chunk_id": j.get("chunk_id"),
            "document_id": j.get("document_id"),
            "chunk_index": j.get("chunk_index",0),
            "content": (j.get("text","") or j.get("content","") or "")[:8000],
            "embedding_status": "PENDING"
        })
        total+=1
        if len(batch)>=100:
            bulk("amen_chunks", batch, batch=50)
            batch=[]
            if total % 500 == 0:
                print(f"... {total} processed")
    except Exception as e:
        print(f"parse error {e}")

if batch:
    bulk("amen_chunks", batch, batch=50)

print(f"DONE {total} chunks inserted into amen_chunks with column 'content'")
