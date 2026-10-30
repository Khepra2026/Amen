
# V751 - INSPECT SUPABASE FUNCTIONS - LECTURE SEULE
param([string]$ProjectRoot="C:\Users\essoc\AMEN", [string]$ReportDir=".\.amen-audit\V751")
$ErrorActionPreference="Continue"
Set-Location $ProjectRoot
New-Item -ItemType Directory -Force -Path $ReportDir | Out-Null
New-Item -ItemType Directory -Force -Path "$ReportDir\evidence" | Out-Null
function SafeOut($Path, $Obj){ try { $Obj | Out-File $Path -Encoding utf8 -Force } catch { $Obj | Out-File $Path -Force } }

Write-Host "`n=== V751-01 amen-rag-query ===" -ForegroundColor Cyan
$path = "$ProjectRoot\supabase\functions\amen-rag-query\index.ts"
if(Test-Path $path){ Get-Content $path | Write-Host; Copy-Item $path "$ReportDir\evidence\amen-rag-query.ts" -Force }

Write-Host "`n=== V751-02 amen-embed-semantic ===" -ForegroundColor Cyan
$path2 = "$ProjectRoot\supabase\functions\amen-embed-semantic\index.ts"
if(Test-Path $path2){ Get-Content $path2 | Write-Host; Copy-Item $path2 "$ReportDir\evidence\amen-embed-semantic.ts" -Force }

Write-Host "`n=== V751-03 Amen-Embeddings-Real ===" -ForegroundColor Cyan
$path3 = Get-ChildItem "$ProjectRoot\supabase\functions" -Recurse -Filter "index.ts" | Where-Object { $_.FullName -like "*Embeddings-Real*" } | Select-Object -First 1
if($path3){ Get-Content $path3.FullName | Write-Host; Copy-Item $path3.FullName "$ReportDir\evidence\Amen-Embeddings-Real.ts" -Force }

Write-Host "`n=== V751-04 remote_schema embedding ===" -ForegroundColor Cyan
$schema = "$ProjectRoot\supabase\migrations\20260930220929_remote_schema.sql"
Select-String -Path $schema -Pattern "amen_chunks|embedding|vector|match_documents" | Select-Object -First 20 | Format-Table -Wrap | Out-String | Write-Host
Select-String -Path $schema -Pattern "amen_chunks|embedding|vector|match_documents" | Out-File "$ReportDir\evidence\remote_schema_hits.txt" -Force
