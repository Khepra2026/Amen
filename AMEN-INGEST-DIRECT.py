
# AMEN - DIRECT INGEST - PAS BESOIN DE $env:
# 1. Colle ta service_role key ici dans KEY (entre les guillemets)
# 2. python AMEN_INGEST_DIRECT.py

KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJlb2VzdXZyc2Jsa3Vjd3RucHBwIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc4OTE3MDQxNSwiZXhwIjoyMTA0NzQ2NDE1fQ.zk9Z9gC53Qi5Wo-nMlqjJKeFdBrryg1AD02jFiKud98"
URL = "https://beoesuvrsblkucwtnppp.supabase.co"
MANIFEST = r"D:\AMEN-SEEDING\03_MANIFEST"

import json, time, sys
from pathlib import Path
import requests

HEADERS = {"apikey": KEY, "Authorization": f"Bearer {KEY}", "Content-Type":"application/json", "Prefer":"return=minimal"}

def check_table(table):
    url = f"{URL}/rest/v1/{table}?limit=1"
    try:
        r = requests.get(url, headers=HEADERS, timeout=15)
        if r.status_code == 200:
            print(f"[OK] {table} -> {len(r.json())} sample")
            return True
        else:
            print(f"[MISSING/ERROR] {table} -> {r.status_code} {r.text[:300]}")
            return False
    except Exception as e:
        print(f"[ERROR] {table} {e}")
        return False

def bulk_insert(table, rows, batch=100):
    url = f"{URL}/rest/v1/{table}"
    for i in range(0, len(rows), batch):
        chunk = rows[i:i+batch]
        try:
            r = requests.post(url, headers=HEADERS, data=json.dumps(chunk), timeout=30)
            if r.status_code not in (200,201,204):
                print(f"  FAIL {table} {i} -> {r.status_code} {r.text[:400]}")
            else:
                print(f"  INSERT {table} {i+len(chunk)}/{len(rows)}")
        except Exception as e:
            print(f"  EXCEPTION {e}")
        time.sleep(0.2)

print("=== AMEN DIRECT INGEST ===")
print(f"URL: {URL}")
for t in ["amen_documents","amen_chunks","amen_export_control","amen_agents"]:
    check_table(t)

docs_file = Path(MANIFEST) / "documents.jsonl"
chunks_file = Path(MANIFEST) / "chunks.jsonl"

print(f"\n[DOCS] {docs_file}")
docs=[]
if docs_file.exists():
    for line in open(docs_file, encoding="utf-8"):
        if not line.strip(): continue
        try:
            j=json.loads(line)
            docs.append({
                "document_id": j.get("document_id"),
                "source_path": j.get("source_path",""),
                "relative_path": j.get("relative_path",""),
                "filename": j.get("filename",""),
                "extension": j.get("extension",""),
                "size_bytes": j.get("size_bytes",0),
                "sha256": j.get("sha256",""),
                "title": (j.get("title","") or "")[:500],
                "language": j.get("language",""),
                "extraction_status": j.get("extraction_status","SUCCESS"),
                "quality_status": j.get("quality_status","REVIEW"),
                "chunk_count": j.get("chunk_count",0),
                "run_id": j.get("run_id","")
            })
        except: pass
    print(f"  {len(docs)} docs found")
    if docs:
        bulk_insert("amen_documents", docs, batch=200)
else:
    print(f"  NOT FOUND: {docs_file}")

print(f"\n[CHUNKS] {chunks_file} - streaming")
if chunks_file.exists():
    batch=[]
    total=0
    for line in open(chunks_file, encoding="utf-8"):
        if not line.strip(): continue
        try:
            j=json.loads(line)
            batch.append({
                "chunk_id": j.get("chunk_id"),
                "document_id": j.get("document_id"),
                "chunk_index": j.get("chunk_index",0),
                "text": (j.get("text","") or "")[:8000],
                "character_count": j.get("character_count",0),
                "title": (j.get("title","") or "")[:500],
                "sha256": j.get("sha256",""),
                "run_id": j.get("run_id","")
            })
            total+=1
            if len(batch)>=200:
                bulk_insert("amen_chunks", batch, batch=100)
                batch=[]
                print(f"    ... {total} processed")
        except: pass
    if batch:
        bulk_insert("amen_chunks", batch, batch=100)
    print(f"  DONE chunks total {total}")
else:
    print(f"  NOT FOUND: {chunks_file}")

print("\n=== FIN INGEST ===")
