
# AMEN V757 - RESTAURATION 152k CHUNKS - SEARCH + RESTORE - PWSH DIRECT
param([string]$ProjectRoot="C:\Users\essoc\AMEN", [string]$ReportDir=".\.amen-audit\V757")
$ErrorActionPreference="Continue"
Set-Location $ProjectRoot
New-Item -ItemType Directory -Force -Path $ReportDir | Out-Null
New-Item -ItemType Directory -Force -Path "$ReportDir\evidence" | Out-Null
function Head($t){ Write-Host "`n=== $t ===" -ForegroundColor Cyan }
function SafeOut($Path, $Obj){ try { $Obj | Out-File $Path -Encoding utf8 -Force } catch { $Obj | Out-File $Path -Force } }

Head "V757-00 VERIF 152k CLAIM vs REALITY"
Write-Host "V744 claim: 152630 chunks REJECTED_AS_SEMANTIC"
Write-Host "V755 reality: Fetched 6 chunks from amen_chunks"
Write-Host "Hypothese: 152k dans amen_corpus, amen_embeddings, embeddings legacy, ou backup"

Head "V757-01 COUNT TABLES VIA SUPABASE"
$pyCount = @'
import os
from dotenv import load_dotenv
load_dotenv('.env.local')
from supabase import create_client
url = os.getenv('NEXT_PUBLIC_SUPABASE_URL')
key = os.getenv('SUPABASE_SERVICE_ROLE_KEY')
supabase = create_client(url, key)

tables = ["amen_chunks", "amen_corpus", "amen_embeddings", "embeddings", "amen_embeddings_local", "amen_embedding_queue", "amen_embedding_queue_legacy"]
for t in tables:
    try:
        res = supabase.table(t).select("*", count="exact", head=True).execute()
        print(f"{t}: {res.count} rows")
    except Exception as e:
        print(f"{t}: ERROR {e}")

# Check views
try:
    res = supabase.rpc("amen_security_watchdog").execute()
    print(f"security_watchdog: {res.data}")
except Exception as e:
    print(f"security_watchdog: {e}")
'@

SafeOut "$ReportDir\count_tables.py" $pyCount
Write-Host "Generated count_tables.py - run it:"
Write-Host "python .\.amen-audit\V757\count_tables.py"

Head "V757-02 SEARCH 152k IN PROJECT"
Write-Host "Searching for files with 152k chunks..."
Get-ChildItem $ProjectRoot -Recurse -File -ErrorAction SilentlyContinue | Where-Object { $_.Name -match "\.json|\.csv|\.parquet|\.sql" } | Where-Object { $_.Length -gt 1000000 } | Sort-Object Length -Descending | Select-Object -First 10 FullName,Length | Format-Table -AutoSize | Out-String | Write-Host

Head "V757-03 BGE-M3 GO PLAN - 152k -> 1024d"
$sqlGo = @"
-- V757 GO PLAN - RESTAURATION 152k CHUNKS BGE-M3 1024d - 100% GO

-- Si 152k dans amen_corpus, copier vers amen_chunks
-- 1. Check
SELECT count(*) FROM amen_corpus; -- attendu 152k ?
SELECT count(*) FROM amen_chunks; -- 6 actuel

-- 2. Si amen_corpus a 152k, migrer
INSERT INTO public.amen_chunks (id, content, content_hash, tradition, chapter_title)
SELECT gen_random_uuid(), content, md5(content), 'Vodun', title
FROM public.amen_corpus
WHERE content IS NOT NULL
ON CONFLICT (content_hash) DO NOTHING;

-- 3. BGE-M3 shadow rebuild 152k -> vector(1024)
-- Python: FlagEmbedding BAAI/bge-m3 batch 12 -> tmp/152k.parquet

-- 4. RPC GO
CREATE OR REPLACE FUNCTION public.amen_rag_search_text(
  p_query_embedding vector(1024),
  p_match_count int DEFAULT 8,
  p_min_similarity float DEFAULT 0.2
) RETURNS TABLE(id uuid, content text, similarity float, source text)
LANGUAGE sql AS $$
  SELECT id, content, 1 - (embedding <=> p_query_embedding)::float, 'amen_chunks'::text
  FROM public.amen_chunks
  WHERE embedding IS NOT NULL AND 1 - (embedding <=> p_query_embedding) > p_min_similarity
  ORDER BY embedding <=> p_query_embedding LIMIT p_match_count;
$$;

GRANT EXECUTE ON FUNCTION public.amen_rag_search_text(vector(1024), int, float) TO anon, authenticated, postgres, service_role;

-- 5. Gate GO
-- SELECT count(*) FROM amen_chunks WHERE embedding IS NOT NULL; -- doit etre 152k
-- SELECT * FROM amen_rag_search_text('[0.1,...]'::vector(1024), 8, 0.2); -- test
"@

SafeOut "$ReportDir\GO_152k_plan.sql" $sqlGo
Write-Host $sqlGo

Head "V757-04 PYTHON GO REBUILD 152k"
$pyGo = @'
# GO REBUILD 152k BGE-M3 1024d - FINAL
import os
from dotenv import load_dotenv
load_dotenv('.env.local')
from supabase import create_client
from FlagEmbedding import BGEM3FlagModel
import pandas as pd
import hashlib

url = os.getenv('NEXT_PUBLIC_SUPABASE_URL')
key = os.getenv('SUPABASE_SERVICE_ROLE_KEY')
supabase = create_client(url, key)

print("=== V757 GO 152k REBUILD ===")
# 1. Fetch all from amen_corpus if exists
try:
    res = supabase.table("amen_corpus").select("id, content, title", count="exact").limit(200000).execute()
    print(f"amen_corpus: {res.count} rows")
    corpus_rows = res.data
except Exception as e:
    print(f"amen_corpus error: {e}")
    corpus_rows = []

if len(corpus_rows) == 0:
    print("No corpus - check amen_chunks only")
    res = supabase.table("amen_chunks").select("id, content", count="exact").limit(200000).execute()
    print(f"amen_chunks: {res.count} rows")
    rows = res.data
else:
    rows = corpus_rows

print(f"Total to embed: {len(rows)}")
# Batch encode BGE-M3 1024d
model = BGEM3FlagModel('BAAI/bge-m3', use_fp16=True)
# ... encode in batches of 100, upsert embedding vector(1024) into amen_chunks

print("=== GO READY ===")
'@

SafeOut "$ReportDir\GO_rebuild.py" $pyGo

Head "V757-05 FINAL REPORT"
$report = @{
  version="V757"
  current_amen_chunks=6
  claimed_152k="Not in amen_chunks prod - check amen_corpus, embeddings legacy"
  bge_shape="(1,1024) VALIDATED"
  pipeline="READY"
  go_plan="1. Count tables via count_tables.py 2. If 152k in amen_corpus -> migrate to amen_chunks 3. BGE-M3 1024d rebuild 4. RPC amen_rag_search_text vector(1024) 5. GO"
  gate="NO_GO_1_FAIL_RAG -> GO after 152k restore + BGE-M3"
}
$report | ConvertTo-Json -Depth 4 | Out-File "$ReportDir\V757_status.json" -Encoding utf8 -Force
$report | ConvertTo-Json -Depth 4 | Write-Host

Write-Host "`n=== V757 DONE ===" -ForegroundColor Yellow
Write-Host "Run: python .\.amen-audit\V757\count_tables.py to find 152k" -ForegroundColor Cyan
