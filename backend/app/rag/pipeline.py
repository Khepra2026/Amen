import hashlib, datetime
from app.core.ai_gateway import get_provider

async def ingest_document(text: str, metadata: dict):
    # 1. hash déduplication
    doc_hash = hashlib.sha256(text.encode()).hexdigest()
    # 2. langue
    from langdetect import detect
    lang = detect(text)
    # 3. chunking 512 tokens overlap 50
    chunks = [text[i:i+1500] for i in range(0, len(text), 1350)]
    # 4. embeddings
    provider = get_provider("ollama")
    vectors = []
    for c in chunks:
        emb = await provider.embed(c)
        vectors.append({"text": c, "embedding": emb, "hash": doc_hash, "lang": lang, **metadata})
    # 5. store -> Qdrant + Mongo + Postgres (à implémenter)
    return {"doc_hash": doc_hash, "chunks": len(chunks), "lang": lang}
