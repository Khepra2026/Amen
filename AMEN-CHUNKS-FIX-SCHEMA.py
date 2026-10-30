
import json, time
from pathlib import Path
import requests

KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJlb2VzdXZyc2Jsa3Vjd3RucHBwIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc4OTE3MDQxNSwiZXhwIjoyMTA0NzQ2NDE1fQ.zk9Z9gC53Qi5Wo-nMlqjJKeFdBrryg1AD02jFiKud98"
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
            # stop after first fail to see error
            if r.status_code == 400:
                # Try to understand schema by testing smaller payload
                pass
        else:
            print(f"INSERT {table} {i+len(c)}/{len(rows)}")
        time.sleep(0.2)

# Schema discovery: try to get one existing row to see columns
print("=== Schema discovery amen_chunks ===")
r = requests.get(f"{URL}/rest/v1/amen_chunks?limit=1", headers=HEADERS)
print(f"GET chunks: {r.status_code} {r.text[:1000]}")

# Try information schema via rpc if available
# Try to insert minimal payload to see what is required
print("\n=== Testing minimal insert ===")
test_id = "test-0000-0000-0000"
test_payload = [{"chunk_id": test_id, "document_id": "706054b5-3d69-4535-85fd-0dbb1602f2bb", "chunk_index": 0, "content_text": "test"}]
r = requests.post(f"{URL}/rest/v1/amen_chunks", headers=HEADERS, data=json.dumps(test_payload))
print(f"Test with chunk_id,document_id,chunk_index,content_text: {r.status_code} {r.text[:1000]}")

# Try alternative column names
for col in ["text", "content", "chunk_text"]:
    payload = [{"id": test_id, "document_id": "706054b5-3d69-4535-85fd-0dbb1602f2bb", col: "test content"}]
    r = requests.post(f"{URL}/rest/v1/amen_chunks", headers=HEADERS, data=json.dumps(payload))
    print(f"Try col {col}: {r.status_code} {r.text[:500]}")

# Now try real ingestion with minimal schema that works
print("\n=== Real ingestion with discovered schema ===")
# Based on previous table, likely schema is: chunk_id OR id, document_id, chunk_index, content_text OR content
# We will try to adapt

docs_file = Path(MANIFEST) / "chunks.jsonl"
batch=[]
total=0
for line in open(docs_file, encoding="utf-8"):
    if not line.strip(): continue
    try:
        j=json.loads(line)
        # Minimal payload that should work on most schemas: use both possible text fields
        batch.append({
            "chunk_id": j.get("chunk_id"),
            "document_id": j.get("document_id"),
            "chunk_index": j.get("chunk_index",0),
            "content_text": (j.get("text","") or "")[:8000],
            "content": (j.get("text","") or "")[:8000]
        })
        total+=1
        if len(batch)>=100:
            # Try with content_text only first
            clean_batch = []
            for b in batch:
                # Remove content if content_text works, keep both for compatibility then filter by error
                clean_batch.append({
                    "chunk_id": b["chunk_id"],
                    "document_id": b["document_id"],
                    "chunk_index": b["chunk_index"],
                    "content_text": b["content_text"]
                })
            bulk("amen_chunks", clean_batch, batch=50)
            batch=[]
            if total % 500 == 0:
                print(f"... {total} processed")
    except Exception as e:
        print(f"parse error {e}")
        pass

if batch:
    clean_batch = [{"chunk_id": b["chunk_id"], "document_id": b["document_id"], "chunk_index": b["chunk_index"], "content_text": b["content_text"]} for b in batch]
    bulk("amen_chunks", clean_batch, batch=50)

print(f"DONE {total}")
