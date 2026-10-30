
import json, os, hashlib
from pathlib import Path
from dotenv import load_dotenv
load_dotenv('.env.local')
from supabase import create_client
from FlagEmbedding import BGEM3FlagModel

SEEDING = Path(r"D:\AMEN-SEEDING")
CHUNKS_JSONL = SEEDING / "03_MANIFEST" / "chunks.jsonl"

url = os.getenv('NEXT_PUBLIC_SUPABASE_URL')
key = os.getenv('SUPABASE_SERVICE_ROLE_KEY')
supabase = create_client(url, key)

print(f"Loading chunks from {CHUNKS_JSONL}")
if not CHUNKS_JSONL.exists():
    print(f"NOT FOUND: {CHUNKS_JSONL} - run extraction first!")
    exit(1)

chunks = []
with open(CHUNKS_JSONL, 'r', encoding='utf-8') as f:
    for line in f:
        try:
            chunks.append(json.loads(line))
        except:
            pass
print(f"Loaded {len(chunks)} chunks - expected ~151k")

print("Loading BGE-M3...")
model = BGEM3FlagModel('BAAI/bge-m3', use_fp16=True)
print("Model loaded")

BATCH = 50
for i in range(0, len(chunks), BATCH):
    batch = chunks[i:i+BATCH]
    texts = [c.get('text','')[:8000] for c in batch]
    print(f"Embedding {i}/{len(chunks)}...")
    out = model.encode(texts, batch_size=12, max_length=8192)
    embs = out['dense_vecs']
    for c, emb in zip(batch, embs):
        content = c.get('text','')[:8000]
        if len(content) < 20:
            continue
        h = hashlib.md5(content.encode()).hexdigest()
        try:
            supabase.table("amen_chunks").upsert({
                "content": content,
                "content_hash": h,
                "tradition": c.get('language','Vodun')[:50],
                "chapter_title": c.get('title','')[:200],
                "embedding": emb.tolist()
            }, on_conflict="content_hash").execute()
        except Exception as e:
            print(f"Upsert error {e}")

print("DONE 151k GO")
