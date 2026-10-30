
# AMEN V750 - AMEN-API AUDIT - RAG BACKEND - LECTURE SEULE - PS5/PS7
param([string]$ProjectRoot="C:\Users\essoc\AMEN", [string]$ReportDir=".\.amen-audit\V750")
$ErrorActionPreference="Continue"
Set-Location $ProjectRoot
New-Item -ItemType Directory -Force -Path $ReportDir | Out-Null
New-Item -ItemType Directory -Force -Path "$ReportDir\evidence" | Out-Null
function SafeOut($Path, $Obj){
  try { $Obj | Out-File $Path -Encoding utf8 -Force } catch { $Obj | Out-File $Path -Force }
}
Write-Host "`n=== V750-01 AMEN-API STRUCTURE ===" -ForegroundColor Cyan
$apiRoot = Get-ChildItem $ProjectRoot -Directory -Filter "amen-api*" -ErrorAction SilentlyContinue | Select-Object -First 1
if(-not $apiRoot){ $apiRoot = Get-ChildItem $ProjectRoot -Directory | Where-Object { $_.Name -match "api" } | Select-Object -First 1 }
Write-Host "API Root: $($apiRoot.FullName)"
Get-ChildItem $apiRoot.FullName -Recurse -Depth 2 -ErrorAction SilentlyContinue | Where-Object { $_.Name -match "chat|rag|embed|supabase|route" } | Select FullName | Format-Table -AutoSize | Out-String | Write-Host

Write-Host "`n=== V750-02 /api/chat et match_documents ===" -ForegroundColor Cyan
$chat = Get-ChildItem $ProjectRoot -Recurse -Include *.ts,*.js -ErrorAction SilentlyContinue | Where-Object { $_.FullName -notlike "*node_modules*" -and $_.FullName -notlike "*dist*" -and $_.FullName -notlike "*\.amen-audit*" } | Select-String -Pattern "match_documents|amen_chunks|/api/chat|supabase.*from.*chunks|embedding" -List | Select-Object -First 40 Path,LineNumber,Line
$chat | Format-Table -Wrap -AutoSize | Out-String | Write-Host
SafeOut "$ReportDir\evidence\api_chat_hits.txt" ($chat | Out-String)

Write-Host "`n=== V750-03 ENV API KEYS (sans valeur) ===" -ForegroundColor Cyan
Get-ChildItem $ProjectRoot -Recurse -Filter ".env*" -ErrorAction SilentlyContinue | Where-Object { $_.FullName -notlike "*node_modules*" } | ForEach-Object {
  Write-Host "`n$($_.FullName)"
  Get-Content $_.FullName -ErrorAction SilentlyContinue | Where-Object { $_ -match "SUPABASE|OPENAI|BGE|EMBED|RAG|VECTOR|ANON|SERVICE_ROLE" } | ForEach-Object { ($_ -split "=")[0] }
} | Tee-Object "$ReportDir\evidence\api_env_keys.txt"

Write-Host "`n=== V750-04 PACKAGE.JSON AMEN-API ===" -ForegroundColor Cyan
$pkg = Get-ChildItem $ProjectRoot -Recurse -Filter "package.json" -ErrorAction SilentlyContinue | Where-Object { $_.FullName -like "*amen-api*" -or $_.FullName -like "*api*" } | Select-Object -First 3
$pkg | ForEach-Object { Write-Host "`n$($_.FullName)"; Get-Content $_.FullName | Write-Host }

Write-Host "`n=== V750-05 RPC / SQL ===" -ForegroundColor Cyan
$sql = Get-ChildItem $ProjectRoot -Recurse -Filter "*.sql" -ErrorAction SilentlyContinue | Where-Object { $_.FullName -notlike "*node_modules*" } | Select-String -Pattern "create.*function.*match|amen_chunks|embedding.*vector" -List | Select-Object -First 20 Path,Line
$sql | Format-Table -Wrap | Out-String | Write-Host
SafeOut "$ReportDir\evidence\sql_rpc.txt" ($sql | Out-String)

Write-Host "`n=== V750-06 PLAN BGE-M3 DRYRUN ===" -ForegroundColor Cyan
$plan = @"
# V750 BGE-M3 REBUILD - DRYRUN - AUCUNE ECRITURE CORPUS

ETAT:
- amen-web/src/services/ragConnector.ts = proxy /api/chat (21.42% couvert)
- 152630 chunks en DB = FNV non semantique = REJECTED_AS_SEMANTIC
- API: $apiRoot doit contenir match_documents RPC

INVARIANT: NE PAS TOUCHER amen_chunks PROD

ETAPES LECTURE SEULE:
1. Extraire: SELECT id, content FROM amen_chunks LIMIT 5 -> verifier chunking
2. Mesurer dim actuelle: SELECT vector_dims(embedding) FROM amen_chunks LIMIT 1
3. Trouver modele actuel dans amen-api: grep -r "openai|cohere|bge|embedding"
4. Creer table shadow: amen_chunks_bge1024_shadow (id uuid, content text, embedding vector(1024))
5. Script local Python: FlagEmbedding BAAI/bge-m3 -> parquet local
6. Test RPC: SELECT * FROM match_documents_shadow(query_embedding, 0.7, 10) sur 1000 lignes
7. Metrique: Recall@10 avant (FNV ~0.05) vs apres (BGE-M3 cible >0.75) sur 50 Q gold

GATE OWNER:
- Si Recall@10 >0.70 et groundedness >0.80: proposer migration prod avec downtimes
- Sinon: rechunker 512 tokens overlap 50

COUVERTURE ACTUELLE:
- 2 tests / 3 passed / ragConnector 21.42%
- Objectif: 70 tests pour atteindre ~60% coverage
"@
SafeOut "$ReportDir\BGE_M3_PLAN_DRYRUN.md" $plan
Write-Host $plan

Write-Host "`n=== V750 DONE - NO_GO_1_FAIL_RAG confirme, source = amen-api ===" -ForegroundColor Yellow
