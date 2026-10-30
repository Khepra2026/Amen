import json, csv
from pathlib import Path

src = Path(r"D:\AMEN-SEEDING\03_MANIFEST\chunks.jsonl")
out_dir = Path(r"D:\AMEN-SEEDING\03_MANIFEST\PARTS_CSV")
out_dir.mkdir(exist_ok=True)

batch_size = 15000
batch_idx = 1
rows = []

def flush(rows, idx):
    path = out_dir / f"amen_chunks_part_{idx:02d}.csv"
    with open(path, "w", newline="", encoding="utf-8") as f:
        w = csv.DictWriter(f, fieldnames=["chunk_id","document_id","chunk_index","content","embedding_status"])
        w.writeheader()
        for r in rows:
            w.writerow(r)
    print(f"Part {idx:02d} : {len(rows)} chunks -> {path}")

with open(src, "r", encoding="utf-8") as fin:
    for line in fin:
        if not line.strip():
            continue
        j = json.loads(line)
        text = j.get("text","") or ""
        text = text.replace("\n"," ").replace("\r"," ").replace('"',"'")[:8000]
        rows.append({
            "chunk_id": j.get("chunk_id"),
            "document_id": j.get("document_id"),
            "chunk_index": j.get("chunk_index",0),
            "content": text,
            "embedding_status": "PENDING"
        })
        if len(rows) >= batch_size:
            flush(rows, batch_idx)
            batch_idx += 1
            rows = []

if rows:
    flush(rows, batch_idx)

print("DONE")
