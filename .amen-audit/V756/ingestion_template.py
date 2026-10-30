# AMEN V756 INGESTION - Vodun corpus -> amen_chunks -> BGE-M3 1024d
import os
from dotenv import load_dotenv
load_dotenv('.env.local')
from supabase import create_client
import hashlib

url = os.getenv('NEXT_PUBLIC_SUPABASE_URL')
key = os.getenv('SUPABASE_SERVICE_ROLE_KEY')
supabase = create_client(url, key)

# Exemple: ingestion d'un dossier local de .txt/.md
corpus_dir = "./corpus/vodun"  # A CREER - mets tes .txt Fa, Egungun, Legba ici

def chunk_text(text, size=800, overlap=100):
    chunks = []
    for i in range(0, len(text), size-overlap):
        chunks.append(text[i:i+size])
    return chunks

def ingest_file(path, tradition="Vodun"):
    with open(path, 'r', encoding='utf-8', errors='ignore') as f:
        text = f.read()
    chunks = chunk_text(text)
    print(f"{path}: {len(chunks)} chunks")
    for c in chunks:
        h = hashlib.md5(c.encode()).hexdigest()
        try:
            supabase.table("amen_chunks").insert({
                "content": c,
                "content_hash": h,
                "tradition": tradition,
                "chapter_title": os.path.basename(path)
            }).execute()
            print(f"  Inserted chunk hash {h[:8]}")
        except Exception as e:
            if "duplicate" in str(e).lower() or "content_hash" in str(e):
                print(f"  Skip duplicate {h[:8]}")
            else:
                print(f"  ERROR: {e}")

# Usage:
# for file in os.listdir(corpus_dir):
#     ingest_file(os.path.join(corpus_dir, file), tradition="Fon")
