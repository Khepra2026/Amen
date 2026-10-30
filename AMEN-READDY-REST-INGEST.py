
import os, json, sys, time
from pathlib import Path
import requests

# CONFIG
SUPABASE_URL = os.environ.get("SUPABASE_URL", "https://e7e53080-7e80-4477-bc69-67581c9c8ee2.supabase.co")
SERVICE_KEY = os.environ.get("SUPABASE_SERVICE_ROLE_KEY") or os.environ.get("SERVICE_KEY")

if not SERVICE_KEY:
    print("ERROR: Mets ta service_role key dans env SUPABASE_SERVICE_ROLE_KEY")
    print("Readdy > Database > API Keys > service_role")
    sys.exit(1)

HEADERS = {
    "apikey": SERVICE_KEY,
    "Authorization": f"Bearer {SERVICE_KEY}",
    "Content-Type": "application/json",
    "Prefer": "return=minimal"
}

def check_table(table):
    url = f"{SUPABASE_URL}/rest/v1/{table}?limit=1"
    r = requests.get(url, headers=HEADERS)
    if r.status_code == 200:
        print(f"[OK] Table {table} existe")
        return True
    else:
        print(f"[MISSING] Table {table} -> {r.status_code} {r.text[:200]}")
        print(f"  -> Va la créer dans Readdy UI: Table Editor > New Table > {table}")
        return False

def bulk_insert(table, rows, batch=500):
    url = f"{SUPABASE_URL}/rest/v1/{table}"
    total = len(rows)
    for i in range(0, total, batch):
        chunk = rows[i:i+batch]
        r = requests.post(url, headers=HEADERS, data=json.dumps(chunk))
        if r.status_code not in (200,201,204):
            print(f"  [FAIL] {table} batch {i//batch} -> {r.status_code} {r.text[:500]}")
            # Try one by one for debug
            if batch > 1:
                bulk_insert(table, chunk, batch=1)
                continue
        else:
            print(f"  [INSERT] {table} {i+len(chunk)}/{total}")
        time.sleep(0.2)

def ingest_manifest():
    base = Path(os.environ.get("AMEN_MANIFEST", "D:/AMEN-SEEDING/03_MANIFEST"))
    docs_file = base / "documents.jsonl"
    chunks_file = base / "chunks.jsonl"
    
    if not docs_file.exists():
        print(f"Manifest not found: {docs_file}")
        return
    
    # Check tables first
    for t in ["amen_documents","amen_chunks","amen_export_control"]:
        if not check_table(t):
            print(f"STOP: crée la table {t} dans Readdy UI avant d'ingérer")
            return
    
    print("[1/3] Lecture documents.jsonl...")
    docs = []
    for line in open(docs_file, encoding="utf-8"):
        if not line.strip(): continue
        try:
            j = json.loads(line)
            # Mapper vers schema minimal
            docs.append({
                "document_id": j.get("document_id"),
                "source_path": j.get("source_path",""),
                "relative_path": j.get("relative_path",""),
                "filename": j.get("filename",""),
                "extension": j.get("extension",""),
                "size_bytes": j.get("size_bytes",0),
                "sha256": j.get("sha256",""),
                "title": j.get("title","")[:500],
                "language": j.get("language",""),
                "extraction_status": j.get("extraction_status","SUCCESS"),
                "quality_status": j.get("quality_status","REVIEW"),
                "chunk_count": j.get("chunk_count",0),
                "run_id": j.get("run_id","")
            })
        except: pass
    print(f"  -> {len(docs)} docs")
    
    print("[2/3] Ingestion documents via REST...")
    bulk_insert("amen_documents", docs, batch=200)
    
    print("[3/3] Export control...")
    export_row = [{
        "export_id": f"AMEN-READDY-{time.strftime('%Y%m%dT%H%M%SZ')}",
        "run_id": docs[0].get("run_id") if docs else "unknown",
        "documents": len(docs),
        "chunks": 151426,
        "duplicates": 79,
        "errors": 25,
        "status": "REVIEW"
    }]
    bulk_insert("amen_export_control", export_row)

if __name__ == "__main__":
    ingest_manifest()
    print("\nDONE. Ensuite: injecte chunks avec amen_chunks_ingest.py")
