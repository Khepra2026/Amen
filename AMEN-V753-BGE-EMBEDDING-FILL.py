#!/usr/bin/env python3
"""
AMEN_V753_BGE_EMBEDDING_FILL.py
Après V753 test validé 1024D
- Fetch PENDING chunks via REST GET (marche chez toi)
- Calcule embedding BGE-M3 1024D local
- Tente PATCH REST, sinon sauve CSV pour import UI (bypass Cloudflare 401)
"""
import requests
import csv
import json
import os
from pathlib import Path
from FlagEmbedding import BGEM3FlagModel

SUPABASE_URL = "https://beoesuvrsblkucwtnppp.supabase.co"
KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJlb2VzdXZyc2Jsa3Vjd3RucHBwIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc4OTE3MDQxNSwiZXhwIjoyMTA0NzQ2NDE1fQ.zk9Z9gC53Qi5Wo-nMlqjJKeFdBrryg1AD02jFiKud98"

# Load BGE-M3
print("=== V753 BGE-M3 loading BAAI/bge-m3 ===")
model = BGEM3FlagModel('BAAI/bge-m3', use_fp16=True)
print("Model loaded!")

# Output dir for fallback CSV (if PATCH blocked by Cloudflare)
out_dir = Path(r"D:\AMEN-SEEDING\03_MANIFEST\EMBEDDINGS_CSV")
out_dir.mkdir(exist_ok=True)

def fetch_pending(limit=20):
    url = f"{SUPABASE_URL}/rest/v1/amen_chunks?embedding_status=eq.PENDING&select=id,chunk_id,content&limit={limit}"
    r = requests.get(url, headers={"apikey": KEY, "Authorization": f"Bearer {KEY}"})
    if r.status_code != 200:
        print(f"GET FAIL {r.status_code} {r.text}")
        return []
    data = r.json()
    print(f"Fetched {len(data)} PENDING chunks")
    return data

def try_patch(chunk_id_uuid, embedding, batch_csv_rows):
    # Attempt REST PATCH
    patch_url = f"{SUPABASE_URL}/rest/v1/amen_chunks?id=eq.{chunk_id_uuid}"
    try:
        pr = requests.patch(patch_url,
            headers={"apikey": KEY, "Authorization": f"Bearer {KEY}", "Content-Type": "application/json", "Prefer": "return=minimal"},
            json={"embedding": embedding, "embedding_status": "DONE"},
            timeout=30)
        if pr.status_code in [200, 204]:
            print(f"  PATCH OK {chunk_id_uuid}")
            return True
        else:
            print(f"  PATCH FAIL {pr.status_code} {pr.text[:120]} -> fallback CSV")
            return False
    except Exception as e:
        print(f"  PATCH EXC {e} -> fallback CSV")
        return False

# Test on 100 first
chunks = fetch_pending(limit=100)
if not chunks:
    print("No PENDING chunks found - maybe already DONE or count=6 still? Run SELECT count(*) FROM amen_chunks")
    exit(0)

csv_path = out_dir / "amen_embeddings_fallback_100.csv"
csv_file = open(csv_path, "w", newline="", encoding="utf-8")
writer = csv.DictWriter(csv_file, fieldnames=["id","embedding","embedding_status"])
writer.writeheader()

success_patch = 0
fallback = 0

for c in chunks:
    text = c.get("content","")[:8000]
    if not text.strip():
        continue
    emb = model.encode([text])["dense_vecs"][0].tolist()
    # Try PATCH
    ok = try_patch(c["id"], emb, writer)
    if ok:
        success_patch += 1
    else:
        # Save for CSV import via Table Editor UI
        writer.writerow({"id": c["id"], "embedding": json.dumps(emb), "embedding_status": "DONE"})
        fallback += 1

csv_file.close()
print(f"\n=== DONE ===")
print(f"PATCH OK: {success_patch}")
print(f"FALLBACK CSV: {fallback} -> {csv_path}")
print(f"If PATCH blocked by Cloudflare 401, import CSV via Readdy Table Editor -> amen_chunks -> Update")
