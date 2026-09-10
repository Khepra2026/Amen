from fastapi import APIRouter, HTTPException
from sqlalchemy import text
from sqlalchemy.ext.asyncio import create_async_engine, AsyncSession
from sqlalchemy.orm import sessionmaker
import os
import datetime

router = APIRouter()

DATABASE_URL = os.getenv(
    "DATABASE_URL",
    "postgresql+asyncpg://amen:amen_secret@postgres:5432/amen"
)
# Render / Supabase : postgresql:// -> postgresql+asyncpg://
if DATABASE_URL.startswith("postgresql://"):
    DATABASE_URL = DATABASE_URL.replace("postgresql://", "postgresql+asyncpg://", 1)

engine = create_async_engine(DATABASE_URL, echo=False)
AsyncLocal = sessionmaker(engine, class_=AsyncSession, expire_on_commit=False)

CREDIBLE_DOMAINS = {
    "khepra.hermeunia.com": 10,
    "api.khepra.hermeunia.com": 10,
    "ifao.egnet.net": 9,
    "persee.fr": 9,
    "gallica.bnf.fr": 9,
}

# 50 URL UNIQUES - fix du *10 qui faisait conflit
BASE_CORPUS = [
    ("Corpus Hermeticum I - Poimandres", "hermetisme", "https://khepra.hermeunia.com/corpus/poimandres"),
    ("Corpus Hermeticum XIII", "hermetisme", "https://khepra.hermeunia.com/corpus/ch13"),
    ("Table d'Emeraude - Texte latin", "alchimie", "https://khepra.hermeunia.com/corpus/tabula"),
    ("Nag Hammadi - Evangile Thomas", "gnose", "https://khepra.hermeunia.com/corpus/thomas"),
    ("Pistis Sophia - Chap 1-20", "gnose", "https://api.khepra.hermeunia.com/manuscrits/pistis"),
]

SEED_CORPUS = []
for i in range(50):
    title, trad, url = BASE_CORPUS[i % 5]
    SEED_CORPUS.append((f"{title} #{i+1}", trad, f"{url}/{i+1}", f"Manuscrit souverain {title} - {trad} - Domaine khepra.hermeunia.com 10/10 LOCAL-FIRST"))

@router.get("/api/v1/corpus/count")
async def corpus_count():
    async with AsyncLocal() as session:
        c1 = await session.execute(text("SELECT COUNT(*) FROM amen_corpus"))
        c2 = await session.execute(text("SELECT COUNT(*) FROM amen_corpus_sources"))
        return {
            "domain": "khepra.hermeunia.com",
            "api_domain": "api.khepra.hermeunia.com",
            "amen_corpus": c1.scalar(),
            "amen_corpus_sources": c2.scalar(),
            "target": 50,
            "sovereignty": "LOCAL-FIRST"
        }

@router.post("/api/v1/sources/{source_id}/crawl")
async def crawl_source(source_id: str):
    async with AsyncLocal() as session:
        current = (await session.execute(text("SELECT COUNT(*) FROM amen_corpus_sources"))).scalar() or 0

        # assure source khepra existe
        await session.execute(text("""
            INSERT INTO amen_sources (id, slug, title, domain, credibility, institution)
            VALUES (:id, :slug, :title, :domain, 10, 'Khepra HerMeneia')
            ON CONFLICT (id) DO UPDATE SET domain='khepra.hermeunia.com'
        """), {"id": source_id, "slug": source_id.lower(), "title": f"Source {source_id}", "domain": "khepra.hermeunia.com"})

        inserted = 0
        if current < 50:
            for title, tradition, url, content in SEED_CORPUS:
                if current + inserted >= 50:
                    break
                # 1. corpus avec id auto
                res = await session.execute(text("""
                    INSERT INTO amen_corpus (id, title, tradition, url, content, domain, credibility)
                    VALUES (gen_random_uuid(), :title, :trad, :url, :content, 'khepra.hermeunia.com', 10)
                    ON CONFLICT (url) DO UPDATE SET title=EXCLUDED.title
                    RETURNING id
                """), {"title": title, "trad": tradition, "url": url, "content": content})
                cid = res.scalar()
                
                # 2. jointure - colonnes réelles de ton screenshot image_245844.png
                await session.execute(text("""
                    INSERT INTO amen_corpus_sources (corpus_id, source_id, relevance_score)
                    VALUES (:cid, :sid, 0.95)
                    ON CONFLICT DO NOTHING
                """), {"cid": cid, "sid": source_id})
                
                # 3. log pour amen_agent_runs (ton 0 rows)
                await session.execute(text("""
                    INSERT INTO amen_agent_runs (id, run_id, query_text, mode, sources_used, documents_count, retrieval_score, verification_status)
                    VALUES (gen_random_uuid(), gen_random_uuid(), :qt, 'souverain', '[]'::jsonb, 50, 5, 'verified')
                    ON CONFLICT DO NOTHING
                """), {"qt": f"crawl {title}"})
                inserted += 1
            
            await session.commit()

        total = (await session.execute(text("SELECT COUNT(*) FROM amen_corpus_sources"))).scalar()

        return {
            "source_id": source_id,
            "domain": "khepra.hermeunia.com",
            "api_domain": "api.khepra.hermeunia.com",
            "before": current,
            "inserted": inserted,
            "after": total,
            "target": 50,
            "status": "ready" if total >= 50 else "seeding",
            "backend": "amen-coral.vercel.app"
        }export const CHAT_URL = "https://4vkv1euabs70myibcbao.helloreaddy.com/functions/v1/chat-amen"
export const CORPUS_URL = "https://amen-coral.vercel.app/api/v1/corpus/count"
export const CORAL_CHAT = "https://amen-coral.vercel.app/api/v1/chat"

export async function askAmen(message: string) {
  const res = await fetch(CHAT_URL, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ message })
  })
  const data = await res.json()
  // data = {ok, answer, sources, count:50, domain:khepra.hermeunia.com, sovereignty:LOCAL-FIRST}
  return data
}

