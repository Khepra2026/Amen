
import os, json, time, requests
from pathlib import Path

SUPABASE_URL = os.environ.get("SUPABASE_URL", "https://e7e53080-7e80-4477-bc69-67581c9c8ee2.supabase.co")
SERVICE_KEY = os.environ.get("SUPABASE_SERVICE_ROLE_KEY")
HEADERS = {"apikey": SERVICE_KEY, "Authorization": f"Bearer {SERVICE_KEY}", "Content-Type":"application/json", "Prefer":"return=minimal"}

def bulk(table, rows, batch=100):
    url = f"{SUPABASE_URL}/rest/v1/{table}"
    for i in range(0, len(rows), batch):
        c = rows[i:i+batch]
        r = requests.post(url, headers=HEADERS, data=json.dumps(c))
        if r.status_code not in (200,201,204):
            print(f"FAIL {i} {r.text[:300]}")
        else:
            print(f"INSERT {i+len(c)}/{len(rows)}")
        time.sleep(0.3)

base = Path(os.environ.get("AMEN_MANIFEST", "D:/AMEN-SEEDING/03_MANIFEST"))
chunks_file = base / "chunks.jsonl"
rows=[]
for line in open(chunks_file, encoding="utf-8"):
    if not line.strip(): continue
    try:
        j=json.loads(line)
        rows.append({
            "chunk_id": j.get("chunk_id"),
            "document_id": j.get("document_id"),
            "chunk_index": j.get("chunk_index",0),
            "text": j.get("text","")[:8000],
            "character_count": j.get("character_count",0),
            "title": j.get("title","")[:500],
            "sha256": j.get("sha256",""),
            "run_id": j.get("run_id","")
        })
        if len(rows)>=1000:
            bulk("amen_chunks", rows); rows=[]
    except: pass
if rows: bulk("amen_chunks", rows)
