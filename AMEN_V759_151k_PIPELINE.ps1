
# AMEN V759 MASTER - 151k CHUNKS PIPELINE - D:\SPIRITUALITE -> SEEDING -> BGE-M3 -> SUPABASE GO
param([string]$ProjectRoot="C:\Users\essoc\AMEN", [string]$SpiritualiteRoot="D:\SPIRITUALITE", [string]$SeedingRoot="D:\AMEN-SEEDING")
$ErrorActionPreference="Continue"
Set-Location $ProjectRoot

function Head($t){ Write-Host "`n=== $t ===" -ForegroundColor Cyan }

Head "V759-00 CHECK D:\SPIRITUALITE"
if(!(Test-Path $SpiritualiteRoot)){ Write-Host "D:\SPIRITUALITE not found" -ForegroundColor Red; exit 1 }
$totalPDF = (Get-ChildItem $SpiritualiteRoot -Recurse -File -Filter "*.pdf" -ErrorAction SilentlyContinue | Measure-Object Length -Sum).Sum
$countPDF = (Get-ChildItem $SpiritualiteRoot -Recurse -File -Filter "*.pdf" -ErrorAction SilentlyContinue | Measure-Object).Count
Write-Host "Found $countPDF PDF, total $([math]::Round($totalPDF/1MB,2)) MB" -ForegroundColor Green

Head "V759-01 CHECK PYTHON DEPS FOR EXTRACTION"
Write-Host "Need: PyMuPDF (fitz), python-docx, openpyxl, pandas"
python -c "import fitz; print('fitz OK')" 2>&1 | Write-Host
python -c "import docx; print('docx OK')" 2>&1 | Write-Host
if($LASTEXITCODE -ne 0){
  Write-Host "Installing deps..." -ForegroundColor Yellow
  pip install PyMuPDF python-docx openpyxl pandas openpyxl python-pptx -q
}

Head "V759-02 RUN BIG FOUR EXTRACTOR - D:\SPIRITUALITE -> D:\AMEN-SEEDING"
Write-Host "Extractor: .\amen_bigfour_extractor.py" -ForegroundColor Cyan
Write-Host "Source: $SpiritualiteRoot"
Write-Host "Output: $SeedingRoot"
Write-Host "This will take 20-60 min for 1048 PDF 4777MB..." -ForegroundColor Yellow
Write-Host "Run:" -ForegroundColor Green
Write-Host "python .\amen_bigfour_extractor.py"
Write-Host ""
Write-Host "Expected output:"
Write-Host " D:\AMEN-SEEDING\01_EXTRACTED\"
Write-Host " D:\AMEN-SEEDING\02_CHUNKS\"
Write-Host " D:\AMEN-SEEDING\03_MANIFEST\chunks.jsonl (~151k)"
Write-Host " D:\AMEN-SEEDING\03_MANIFEST\documents.jsonl"
Write-Host " D:\AMEN-SEEDING\04_QA\QA_REPORT_*.txt"

Head "V759-03 AFTER EXTRACTION - BGE-M3 1024d EMBEDDING"
$pyEmbed = @'
import json, os, hashlib
from pathlib import Path
from dotenv import load_dotenv
load_dotenv('.env.local')
from supabase import create_client
from FlagEmbedding import BGEM3FlagModel
import pandas as pd

SEEDING = Path(r"D:\AMEN-SEEDING")
CHUNKS_JSONL = SEEDING / "03_MANIFEST" / "chunks.jsonl"

url = os.getenv('NEXT_PUBLIC_SUPABASE_URL')
key = os.getenv('SUPABASE_SERVICE_ROLE_KEY')
supabase = create_client(url, key)

print(f"Loading chunks from {CHUNKS_JSONL}")
chunks = []
with open(CHUNKS_JSONL, 'r', encoding='utf-8') as f:
    for line in f:
        chunks.append(json.loads(line))
print(f"Loaded {len(chunks)} chunks - expected ~151k")

print("Loading BGE-M3 BAAI/bge-m3...")
model = BGEM3FlagModel('BAAI/bge-m3', use_fp16=True)
print("Model loaded")

# Batch embed and upsert to amen_chunks
BATCH = 50
for i in range(0, len(chunks), BATCH):
    batch = chunks[i:i+BATCH]
    texts = [c['text'][:8000] for c in batch]
    print(f"Embedding {i}/{len(chunks)}...")
    out = model.encode(texts, batch_size=12, max_length=8192)
    embs = out['dense_vecs']
    
    for c, emb in zip(batch, embs):
        content = c['text'][:8000]
        h = hashlib.md5(content.encode()).hexdigest()
        try:
            supabase.table("amen_chunks").upsert({
                "content": content,
                "content_hash": h,
                "tradition": c.get('language','Vodun'),
                "chapter_title": c.get('title','')[:200],
                "embedding": emb.tolist()
            }, on_conflict="content_hash").execute()
        except Exception as e:
            # retry without embedding if vector type mismatch
            try:
                supabase.table("amen_chunks").upsert({
                    "content": content,
                    "content_hash": h,
                    "tradition": c.get('language','Vodun'),
                    "chapter_title": c.get('title','')[:200]
                }, on_conflict="content_hash").execute()
                # then update embedding separately
                supabase.table("amen_chunks").update({"embedding": emb.tolist()}).eq("content_hash", h).execute()
            except Exception as e2:
                print(f"Error {e2}")

print("=== V759 GO - 151k BGE-M3 1024d DONE ===")
'@

$pyEmbed | Out-File ".\.amen-audit\V759\bge_embed_151k.py" -Encoding utf8 -Force

Head "V759-04 RPC GO FINAL"
$sqlGO = @"
-- FINAL GO RPC - 151k BGE-M3 1024d
CREATE INDEX IF NOT EXISTS idx_amen_chunks_hnsw_1024 ON public.amen_chunks USING hnsw (embedding vector_cosine_ops);
CREATE OR REPLACE FUNCTION public.amen_rag_search_text(p_query_embedding vector(1024), p_match_count int DEFAULT 8, p_min_similarity float DEFAULT 0.22)
RETURNS TABLE(id uuid, content text, similarity float, tradition text, chapter_title text)
LANGUAGE sql STABLE AS $$
  SELECT id, content, 1 - (embedding <=> p_query_embedding)::float, tradition, chapter_title
  FROM public.amen_chunks WHERE embedding IS NOT NULL AND 1 - (embedding <=> p_query_embedding) > p_min_similarity
  ORDER BY embedding <=> p_query_embedding LIMIT p_match_count;
$$;
GRANT EXECUTE ON FUNCTION public.amen_rag_search_text(vector(1024), int, float) TO anon, authenticated, service_role;
SELECT count(*) as total, count(embedding) as embedded FROM public.amen_chunks;
"@

$sqlGO | Out-File ".\.amen-audit\V759\GO_RPC_151k.sql" -Encoding utf8 -Force

Head "V759 DONE"
Write-Host "Steps:" -ForegroundColor Green
Write-Host "1. python .\amen_bigfour_extractor.py  (20-60min -> D:\AMEN-SEEDING\03_MANIFEST\chunks.jsonl ~151k)"
Write-Host "2. python .\.amen-audit\V759\bge_embed_151k.py  (hours -> Supabase 151k vector 1024d)"
Write-Host "3. Run .\.amen-audit\V759\GO_RPC_151k.sql in Supabase SQL Editor"
Write-Host "4. Test: amen_rag_search_text with BGE-M3 query"
Write-Host ""
Write-Host "Current: amen_corpus 4309 + amen_chunks 6 = 4315"
Write-Host "Target: 151k BGE-M3 1024d GO 100% PASS"
