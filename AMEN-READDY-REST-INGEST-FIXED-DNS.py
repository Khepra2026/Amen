
import os, json, sys, time, base64
from pathlib import Path
import requests

def get_ref_from_key(key):
    try:
        payload = key.split('.')[1]
        payload += '=' * (-len(payload) % 4)
        data = json.loads(base64.urlsafe_b64decode(payload).decode())
        return data.get('ref')
    except:
        return None

SERVICE_KEY = os.environ.get("SUPABASE_SERVICE_ROLE_KEY") or os.environ.get("SERVICE_KEY")
if not SERVICE_KEY or "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJlb2VzdXZyc2Jsa3Vjd3RucHBwIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc4OTE3MDQxNSwiZXhwIjoyMTA0NzQ2NDE1fQ.zk9Z9gC53Qi5Wo-nMlqjJKeFdBrryg1AD02jFiKud98" in SERVICE_KEY:
    print("ERROR: $env:SUPABASE_SERVICE_ROLE_KEY manquant")
    sys.exit(1)

ref = get_ref_from_key(SERVICE_KEY)
print(f"[REF DETECTED] {ref}")

# Use ref-based URL if e7e... fails
SUPABASE_URL = os.environ.get("SUPABASE_URL")
if not SUPABASE_URL or "e7e53080" in SUPABASE_URL:
    if ref:
        SUPABASE_URL = f"https://{ref}.supabase.co"
        print(f"[URL FIX] Utilisation URL corrigée: {SUPABASE_URL}")
    else:
        SUPABASE_URL = "https://e7e53080-7e80-4477-bc69-67581c9c8ee2.supabase.co"

HEADERS = {"apikey": SERVICE_KEY, "Authorization": f"Bearer {SERVICE_KEY}", "Content-Type":"application/json", "Prefer":"return=minimal"}

MANIFEST = Path(os.environ.get("AMEN_MANIFEST", r"D:\AMEN-SEEDING\03_MANIFEST"))

def check_table(table):
    url = f"{SUPABASE_URL}/rest/v1/{table}?limit=1"
    try:
        r = requests.get(url, headers=HEADERS, timeout=15)
        if r.status_code == 200:
            print(f"[OK] {table}")
            return True
        else:
            print(f"[MISSING] {table} -> {r.status_code} {r.text[:200]}")
            return False
    except Exception as e:
        print(f"[ERROR] {table} connection failed: {e}")
        print(f"  URL tentée: {url}")
        return False

def bulk_insert(table, rows, batch=100):
    url = f"{SUPABASE_URL}/rest/v1/{table}"
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

print("=== AMEN REST INGEST - FIXED DNS ===")
print(f"URL: {SUPABASE_URL}")
for t in ["amen_documents","amen_chunks","amen_export_control"]:
    check_table(t)

# DOCS
docs_file = MANIFEST / "documents.jsonl"
print(f"\n[DOCS] {docs_file}")
if not docs_file.exists():
    print(f"Fichier introuvable: {docs_file}")
    sys.exit(1)

docs=[]
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
print(f"  {len(docs)} docs -> insert")
bulk_insert("amen_documents", docs, batch=200)

# CHUNKS
chunks_file = MANIFEST / "chunks.jsonl"
print(f"\n[CHUNKS] {chunks_file}")
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
    except: pass
if batch:
    bulk_insert("amen_chunks", batch, batch=100)
print(f"  DONE chunks total {total}")

bulk_insert("amen_export_control", [{
    "export_id": f"AMEN-READDY-{time.strftime('%Y%m%dT%H%M%SZ', time.gmtime())}",
    "run_id": docs[0].get("run_id") if docs else "unknown",
    "documents": len(docs),
    "chunks": total,
    "duplicates": 79,
    "errors": 25,
    "status": "REVIEW"
}])
print("\n=== INGEST TERMINÉ ===")
