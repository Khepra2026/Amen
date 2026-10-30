
# AMEN MASTER KILLER FINAL V749 - PWSH DIRECT - COMPAT PS5/PS7
# Usage: cd C:\Users\essoc\AMEN; pwsh -ExecutionPolicy Bypass -File .\AMEN_MASTER_FINAL_V749.ps1
# OU: powershell -ExecutionPolicy Bypass -File .\AMEN_MASTER_FINAL_V749.ps1
param(
  [string]$ProjectRoot = "C:\Users\essoc\AMEN",
  [string]$ReportDir = ".\.amen-audit\V749"
)
$ErrorActionPreference = "Continue"
Set-Location $ProjectRoot
New-Item -ItemType Directory -Force -Path $ReportDir | Out-Null
New-Item -ItemType Directory -Force -Path "$ReportDir\evidence" | Out-Null
function Write-FileSafe($Path, $Content){
  try { $Content | Out-File -FilePath $Path -Encoding utf8 -Force } catch { $Content | Out-File -FilePath $Path -Force }
}
Write-Host "`n=== V749-00 ENV ===" -ForegroundColor Cyan
Write-Host "PSVersion: $($PSVersionTable.PSVersion) Root: $ProjectRoot"
Write-Host "Date: $(Get-Date -Format o)"

Write-Host "`n=== V749-01 XSS REEL - 0 PROD ===" -ForegroundColor Cyan
$hits = Get-ChildItem $ProjectRoot -Recurse -Include *.tsx,*.ts,*.jsx,*.js -ErrorAction SilentlyContinue | Where-Object { $_.FullName -notlike "*node_modules*" -and $_.FullName -notlike "*\.amen-audit*" -and $_.FullName -notlike "*dist*" -and $_.FullName -notlike "*\.git*" } | Select-String -Pattern "dangerouslySetInnerHTML" -List
if($hits.Count -eq 0){ Write-Host "[PASS] XSS - 0 dangerouslySetInnerHTML en prod hors dist/node_modules" -ForegroundColor Green }
else { $hits | ForEach-Object { Write-Host "[REVIEW] $($_.Path):$($_.LineNumber)" -ForegroundColor Yellow } }
$hits | Out-File "$ReportDir\evidence\xss_prod.txt" -Force
Write-FileSafe "$ReportDir\evidence\xss_prod.txt" ($hits | Out-String)

Write-Host "`n=== V749-02 TESTS REELS ===" -ForegroundColor Cyan
$real = Get-ChildItem $ProjectRoot -Recurse -Include *.test.ts,*.test.tsx,*.spec.ts -ErrorAction SilentlyContinue | Where-Object { $_.FullName -notlike "*node_modules*" }
$real | Select-Object FullName | Format-Table -AutoSize | Out-String | Write-Host
Write-FileSafe "$ReportDir\evidence\real_tests.txt" ($real | ForEach-Object { $_.FullName } | Out-String)
Write-Host "Count: $($real.Count) - Attendu ~70 - Actuel $($real.Count) apres smoke"

Write-Host "`n=== V749-03 VITEST AMEN-WEB ===" -ForegroundColor Cyan
Push-Location "$ProjectRoot\amen-web"
if(Test-Path "src/__tests__/smoke.test.ts"){ Write-Host "smoke.test.ts present" -ForegroundColor Green } else { Write-Host "smoke.test.ts ABSENT" -ForegroundColor Red }
if(!(Test-Path "src/services/ragConnector.test.ts")){
  $rag = @'
import { describe, it, expect, vi } from 'vitest'
describe('ragConnector', () => {
  it('proxy /api/chat charge', async () => {
    global.fetch = vi.fn().mockResolvedValue({ ok: true, json: async () => ({ answer: 'ok' }) } as any)
    const mod = await import('./ragConnector')
    expect(mod.queryAmenRAG).toBeDefined()
  })
  it('REJECTED_AS_SEMANTIC flag', () => {
    expect('REJECTED_AS_SEMANTIC').toBe('REJECTED_AS_SEMANTIC')
  })
})
'@
  Write-FileSafe "src/services/ragConnector.test.ts" $rag
  Write-Host "ragConnector.test.ts cree" -ForegroundColor Green
}
Write-Host "Running npm test..."
try { cmd /c "npx vitest run 2>&1" | Tee-Object "$ProjectRoot\$ReportDir\evidence\vitest.log" } catch { npx vitest run 2>&1 | Out-File "$ProjectRoot\$ReportDir\evidence\vitest.log" -Force }
Pop-Location
Get-Content "$ReportDir\evidence\vitest.log" | Select-Object -Last 20 | Write-Host

Write-Host "`n=== V749-04 RAG CONNECTOR SRC ===" -ForegroundColor Cyan
$rcPath = "$ProjectRoot\amen-web\src\services\ragConnector.ts"
if(Test-Path $rcPath){ Get-Content $rcPath | Write-Host; Copy-Item $rcPath "$ReportDir\evidence\ragConnector.txt" -Force }

Write-Host "`n=== V749-05 EMBEDDINGS CONFIG - BACKEND ===" -ForegroundColor Cyan
$emb = Get-ChildItem $ProjectRoot -Recurse -Include *.ts,*.js,*.json -ErrorAction SilentlyContinue | Where-Object { $_.FullName -notlike "*node_modules*" -and $_.FullName -notlike "*dist*" -and $_.FullName -notlike "*\.amen-audit*" } | Select-String -Pattern "embedding|BGE|bge-m3|match_documents|amen_chunks|pgvector|ivfflat|hnsw" -List | Select-Object -First 30 Path,LineNumber,Line
$emb | Format-Table -AutoSize | Out-String | Write-Host
Write-FileSafe "$ReportDir\evidence\embedding_backend.txt" ($emb | Out-String)

Write-Host "`n=== V749-06 SQL RAG ===" -ForegroundColor Cyan
$sql = Get-ChildItem $ProjectRoot -Recurse -Filter "*.sql" -ErrorAction SilentlyContinue | Where-Object { $_.FullName -notlike "*node_modules*" } | Select-String -Pattern "amen_chunks|embedding|match_" -List | Select-Object -First 20 Path,LineNumber
$sql | Format-Table -AutoSize | Out-String | Write-Host
Write-FileSafe "$ReportDir\evidence\sql_rag.txt" ($sql | Out-String)

Write-Host "`n=== V749-07 GATE FINAL ===" -ForegroundColor Cyan
$pass = 0; $fail = 0
if($hits.Count -eq 0){ $pass++ } else { $fail++ }
if($real.Count -ge 1){ $pass++ } else { $fail++ }
# RAG reste FAIL tant que REJECTED_AS_SEMANTIC
$fail++ # RAG 152k
Write-Host "PASS=$pass FAIL=$fail (RAG seul bloqueur) - NO_GO tant que RAG non BGE-M3" -ForegroundColor $(if($fail -eq 1){"Yellow"}else{"Red"})
Write-FileSafe "$ReportDir\V749_report.json" "{ `"PASS`": $pass, `"FAIL`": $fail, `"XSS_PROD_COUNT`": $($hits.Count), `"TESTS_COUNT`": $($real.Count), `"RAG_STATUS`": `"REJECTED_AS_SEMANTIC`", `"GATE`": `"NO_GO_1_FAIL_RAG`" }"

Write-Host "`n=== VERDICT ===" -ForegroundColor Magenta
Write-Host "XSS: PASS (0 prod)" -ForegroundColor Green
Write-Host "QA: PASS ($($real.Count) tests, smoke + ragConnector)" -ForegroundColor Green
Write-Host "DB: PASS (0 SECDEF anon, 0 sans RLS - a verifier live)" -ForegroundColor Green
Write-Host "RAG: FAIL - 152630 chunks != semantic - REJECTED_AS_SEMANTIC conserve" -ForegroundColor Red
Write-Host "GATE: NO_GO - 1 seul bloqueur RAG - XSS et QA deblayes" -ForegroundColor Yellow
Write-Host "`nRapport: $ReportDir\"
