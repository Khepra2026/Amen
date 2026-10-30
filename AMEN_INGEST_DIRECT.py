import json, time
from pathlib import Path
import requests

KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJlb2VzdXZyc2Jsa3Vjd3RucHBwIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc4OTE3MDQxNSwiZXhwIjoyMTA0NzQ2NDE1fQ.zk9Z9gC53Qi5Wo-nMlqjJKeFdBrryg1AD02jFiKud98"
URL = "https://beoesuvrsblkucwtnppp.supabase.co"
MANIFEST = r"D:\AMEN-SEEDING\03_MANIFEST"
HEADERS = {"apikey": KEY, "Authorization": f"Bearer {KEY}", "Content-Type":"application/json", "Prefer":"return=minimal"}

def check_table(t):
    try:
        r = requests.get(f"{URL}/rest/v1/{t}?limit=1", headers=HEADERS, timeout=15)
        print(f"[{'OK' if r.status_code==200 else 'FAIL'}] {t} -> {r.status_code}")
        return r.status_code==200
    except Exception as e:
        print(f"[ERROR] {t} {e}"); return False

def bulk(table, rows, batch=100):
    url = f"{URL}/rest/v1/{table}"
    for i in range(0, len(rows), batch):
        c = rows[i:i+batch]
        r = requests.post(url, headers=HEADERS, data=json.dumps(c), timeout=30)
        print(f"{'INSERT' if r.status_code in (200,201,204) else 'FAIL'} {table} {i+len(c)}/{len(rows)} {r.status_code} {r.text[:500]}")
        time.sleep(0.2)

print("=== AMEN DIRECT INGEST ===")
for t in ["amen_documents","amen_chunks"]:
    check_table(t)

docs_file = Path(MANIFEST)/"documents.jsonl"
docs=[]
for line in open(docs_file, encoding="utf-8"):
    if not line.strip(): continue
    try:
        j=json.loads(line)
        docs.append({"document_id": j.get("document_id"), "source_path": j.get("source_path",""), "relative_path": j.get("relative_path",""), "filename": j.get("filename",""), "extension": j.get("extension",""), "size_bytes": j.get("size_bytes",0), "sha256": j.get("sha256",""), "title": (j.get("title","") or "")[:500], "language": j.get("language",""), "extraction_status": j.get("extraction_status","SUCCESS"), "quality_status": j.get("quality_status","REVIEW"), "chunk_count": j.get("chunk_count",0), "run_id": j.get("run_id","")})
    except: pass
print(f"{len(docs)} docs")
bulk("amen_documents", docs, 200)

chunks_file = Path(MANIFEST)/"chunks.jsonl"
batch=[]; total=0
for line in open(chunks_file, encoding="utf-8"):
    if not line.strip(): continue
    try:
        j=json.loads(line)
        batch.append({"chunk_id": j.get("chunk_id"), "document_id": j.get("document_id"), "chunk_index": j.get("chunk_index",0), "text": (j.get("text","") or "")[:8000], "character_count": j.get("character_count",0), "title": (j.get("title","") or "")[:500], "sha256": j.get("sha256",""), "run_id": j.get("run_id","")})
        total+=1
        if len(batch)>=200:
            bulk("amen_chunks", batch, 100); batch=[]
    except: pass
if batch: bulk("amen_chunks", batch, 100)
print(f"DONE {total} chunks")
