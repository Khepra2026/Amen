
import json, os, hashlib, time
from pathlib import Path
from dotenv import load_dotenv
load_dotenv('.env.local')
from supabase import create_client
from FlagEmbedding import BGEM3FlagModel

SEEDING = Path(r"D:\AMEN-SEEDING")
CHUNKS_JSONL = SEEDING / "03_MANIFEST" / "chunks.jsonl"
CHECKPOINT = Path(r"D:\AMEN-SEEDING\03_MANIFEST\checkpoint_172k.txt")

url = os.getenv('NEXT_PUBLIC_SUPABASE_URL')
key = os.getenv('SUPABASE_SERVICE_ROLE_KEY')
supabase = create_client(url, key)

print(f"Loading {CHUNKS_JSONL}")
chunks = []
with open(CHUNKS_JSONL, 'r', encoding='utf-8', errors='ignore') as f:
    for line in f:
        try:
            chunks.append(json.loads(line))
        except:
            pass
print(f"Loaded {len(chunks)} chunks - 172441 expected")

# Resume from checkpoint
start_idx = 0
if CHECKPOINT.exists():
    try:
        start_idx = int(CHECKPOINT.read_text().strip())
        print(f"Resuming from {start_idx}")
    except:
        start_idx = 0

print("Loading BGE-M3 BAAI/bge-m3...")
model = BGEM3FlagModel('BAAI/bge-m3', use_fp16=True)
print("Model loaded - shape (1,1024) validated")

BATCH = 32  # smaller for stability
for i in range(start_idx, len(chunks), BATCH):
    batch = chunks[i:i+BATCH]
    texts = []
    for c in batch:
        t = c.get('text','')[:5000]  # limit for speed
        if len(t) < 20:
            t = ""
        texts.append(t)
    
    # Skip empty batch
    if all(t=="" for t in texts):
        CHECKPOINT.write_text(str(i+BATCH))
        continue

    print(f"[{i}/{len(chunks)}] Embedding {len(texts)}...")
    try:
        out = model.encode(texts, batch_size=12, max_length=4096)
        embs = out['dense_vecs']
    except Exception as e:
        print(f"Encode error {e}, retry single")
        embs = []
        for t in texts:
            try:
                o = model.encode([t], batch_size=1, max_length=4096)
                embs.append(o['dense_vecs'][0])
            except:
                embs.append(None)

    for c, emb, txt in zip(batch, embs, texts):
        if emb is None or txt == "":
            continue
        h = hashlib.md5(txt.encode()).hexdigest()
        try:
            supabase.table("amen_chunks").upsert({
                "content": txt,
                "content_hash": h,
                "tradition": str(c.get('language','Vodun'))[:50],
                "chapter_title": str(c.get('title',''))[:200],
                "embedding": emb.tolist() if hasattr(emb, 'tolist') else list(emb)
            }, on_conflict="content_hash").execute()
        except Exception as e:
            msg = str(e).lower()
            if "duplicate" not in msg:
                print(f"Upsert error: {e}")

    CHECKPOINT.write_text(str(i+BATCH))
    # Progress log
    if i % 320 == 0:
        cnt = supabase.table("amen_chunks").select("*", count="exact", head=True).execute()
        print(f"--- Supabase amen_chunks now: {cnt.count} rows ---")
    
    time.sleep(0.1)

print("=== DONE 172k BGE-M3 1024d GO ===")
cnt = supabase.table("amen_chunks").select("*", count="exact", head=True).execute()
print(f"Final amen_chunks: {cnt.count} rows")
