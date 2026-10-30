# AMEN MASTER KILLER V747 FINAL - PS5 COMPATIBLE
param([string]$ProjectRoot=(Get-Location).Path, [string]$ReportDir=".\.amen-audit\V747")
$ErrorActionPreference="Continue"
New-Item -ItemType Directory -Force -Path $ReportDir | Out-Null
New-Item -ItemType Directory -Force -Path "$ReportDir\evidence" | Out-Null
Write-Host "`n=== V747 SCAN XSS REEL ===" -ForegroundColor Cyan
$hits = Get-ChildItem $ProjectRoot -Recurse -Include *.tsx,*.ts,*.jsx,*.js -ErrorAction SilentlyContinue | Where-Object { $_.FullName -notlike "*node_modules*" -and $_.FullName -notlike "*\.amen-audit*" -and $_.FullName -notlike "*\.git*" } | Select-String -Pattern "dangerouslySetInnerHTML|innerHTML" -List
if($hits.Count -eq 0){ Write-Host "[PASS] Aucun dangerouslySetInnerHTML dans code prod hors node_modules" -ForegroundColor Green }
else { $hits | ForEach-Object { Write-Host "[REVIEW] $($_.Path):$($_.LineNumber) $($_.Line.Trim())" -ForegroundColor Yellow } }
$hits | Out-File "$ReportDir\evidence\xss_real_scan.txt" -Encoding utf8

Write-Host "`n=== V747 TESTS REELS ===" -ForegroundColor Cyan
$real = Get-ChildItem $ProjectRoot -Recurse -Include *.test.ts,*.test.tsx,*.spec.ts -ErrorAction SilentlyContinue | Where-Object { $_.FullName -notlike "*node_modules*" }
$real | Select-Object FullName | Out-File "$ReportDir\evidence\real_tests_v747.txt" -Encoding utf8
Write-Host "Tests reels: $($real.Count)" -ForegroundColor $(if($real.Count -eq 0){"Red"}else{"Green"})

Write-Host "`n=== V747 VITEST AMEN-WEB ===" -ForegroundColor Cyan
Push-Location "$ProjectRoot\amen-web"
cmd /c "npx vitest run 2>&1" | Tee-Object "$ProjectRoot\$ReportDir\evidence\vitest_v747.log"
Pop-Location

Write-Host "`n=== V747 DONE - Verdict NO_GO tant que 0 test et RAG non semantique ===" -ForegroundColor Red
