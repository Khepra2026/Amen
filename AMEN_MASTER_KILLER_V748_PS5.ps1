# AMEN MASTER KILLER V748 - RAG AUDIT + BGE-M3 PLAN - PS5 COMPATIBLE - LECTURE SEULE
param([string]$ProjectRoot=(Get-Location).Path, [string]$ReportDir=".\.amen-audit\V748")
$ErrorActionPreference="Continue"
New-Item -ItemType Directory -Force -Path $ReportDir | Out-Null
New-Item -ItemType Directory -Force -Path "$ReportDir\evidence" | Out-Null
Write-Host "`n=== V748-01 RAG CONNECTOR SRC ===" -ForegroundColor Cyan
$rc = Get-ChildItem $ProjectRoot -Recurse -Filter "ragConnector.ts" -ErrorAction SilentlyContinue | Where-Object { $_.FullName -notlike "*node_modules*" }
if($rc){ $rc | ForEach-Object { Write-Host $_.FullName; Get-Content $_.FullName | Out-File "$ReportDir\evidence\ragConnector_$($_.Directory.Name).txt" -Encoding utf8; Get-Content $_.FullName } } else { Write-Host "ragConnector.ts introuvable" -ForegroundColor Yellow }

Write-Host "`n=== V748-02 EMBEDDINGS CONFIG SEARCH ===" -ForegroundColor Cyan
$emb = Get-ChildItem $ProjectRoot -Recurse -Include *.ts,*.tsx,*.js,*.json -ErrorAction SilentlyContinue | Where-Object { $_.FullName -notlike "*node_modules*" -and $_.FullName -notlike "*dist*" } | Select-String -Pattern "embedding|BGE|bge-m3|dimension|vector|pgvector" -List | Select-Object -First 30 Path,LineNumber,Line
$emb | Format-Table -AutoSize | Out-String | Tee-Object "$ReportDir\evidence\embedding_hits.txt" -Encoding utf8 | Write-Host

Write-Host "`n=== V748-03 SUPABASE SQL RAG ===" -ForegroundColor Cyan
$sql = Get-ChildItem $ProjectRoot -Recurse -Filter "*.sql" -ErrorAction SilentlyContinue | Where-Object { $_.FullName -notlike "*node_modules*" } | Select-String -Pattern "amen_chunks|embedding|match_documents|ivfflat|hnsw" -List | Select-Object -First 20 Path,LineNumber
$sql | Format-Table -AutoSize | Out-String | Tee-Object "$ReportDir\evidence\sql_rag.txt" -Encoding utf8 | Write-Host

Write-Host "`n=== V748 DONE - voir $ReportDir ===" -ForegroundColor Green
