import json, time
from pathlib import Path
import requests

KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.[STRIPPED 138 bytes].zk9Z9gC53Qi5Wo-nMlqjJKeFdBrryg1AD02jFiKud98"
URL = "https://beoesuvrsblkucwtnppp.supabase.co"
MANIFEST = r"D:\AMEN-SEEDING\03_MANIFEST"
HEADERS = {"apikey": KEY, "Authorization": f"Bearer {KEY}", "Content-Type":"application/json", "Prefer":"return=minimal"}

print("=== Schema discovery ===")
r = requests.get(f"{URL}/rest/v1/amen_chunks?limit=1", headers=HEADERS)
print(f"GET chunks: {r.status_code} {r.text[:1000]}")

# Test minimal
test_payload = [{"chunk_id": "test-0000", "document_id": "706054b5-3d69-4535-85fd-0dbb1602f2bb", "chunk_index": 0, "content_text": "test"}]
r = requests.post(f"{URL}/rest/v1/amen_chunks", headers=HEADERS, data=json.dumps(test_payload))
print(f"Test content_text: {r.status_code} {r.text[:1000]}")

test_payload2 = [{"chunk_id": "test-0001", "document_id": "706054b5-3d69-4535-85fd-0dbb1602f2bb", "chunk_index": 1, "content": "test content"}]
r = requests.post(f"{URL}/rest/v1/amen_chunks", headers=HEADERS, data=json.dumps(test_payload2))
print(f"Test content: {r.status_code} {r.text[:1000]}")
