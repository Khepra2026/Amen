
param([string]$QAPath="D:\AMEN-SEEDING\04_QA\QA_REPORT_20261030T122127Z.txt")
Get-Content $QAPath -First 100 | Write-Host
Write-Host "`n=== TOP ERRORS ===" -ForegroundColor Yellow
Select-String -Path $QAPath -Pattern "ERROR|REVIEW" | Select-Object -First 20 | Format-Table | Out-String | Write-Host

Write-Host "`n=== CHUNKS SAMPLE ===" -ForegroundColor Cyan
$chunksJsonl = "D:\AMEN-SEEDING\03_MANIFEST\chunks.jsonl"
Get-Content $chunksJsonl -First 3 | ForEach-Object { $_.Substring(0, [Math]::Min(300, $_.Length)) } | Write-Host

Write-Host "`n=== MANIFEST ===" -ForegroundColor Green
$manifest = "D:\AMEN-SEEDING\03_MANIFEST\AMEN_SEED_MANIFEST_20261030T122127Z.json"
if(Test-Path $manifest){ Get-Content $manifest | Write-Host }
