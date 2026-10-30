
param([string]$ProjectRoot="C:\Users\essoc\AMEN")
Set-Location $ProjectRoot

Write-Host "=== AMEN-RAG CONTENT ===" -ForegroundColor Cyan
Get-ChildItem "$ProjectRoot\amen-rag" -Recurse -File -ErrorAction SilentlyContinue | Select-Object Name,Length,FullName | Sort-Object Length -Descending | Select-Object -First 20 | Format-Table -AutoSize -Wrap | Out-String -Width 400 | Write-Host

Write-Host "`n=== CORPUS CONTENT ===" -ForegroundColor Cyan
Get-ChildItem "$ProjectRoot\corpus" -Recurse -File -ErrorAction SilentlyContinue | Select-Object Name,Length,FullName | Format-Table -AutoSize -Wrap | Out-String -Width 400 | Write-Host

Write-Host "`n=== AMEN-CRAWLERS CONTENT ===" -ForegroundColor Cyan
Get-ChildItem "$ProjectRoot\amen-crawlers" -Recurse -File -ErrorAction SilentlyContinue | Select-Object Name,Length,FullName | Sort-Object Length -Descending | Select-Object -First 20 | Format-Table -AutoSize -Wrap | Out-String -Width 400 | Write-Host

Write-Host "`n=== AMEN-DOCS CONTENT (was empty) ===" -ForegroundColor Cyan
Get-ChildItem "$ProjectRoot\amen-docs" -Recurse -File -ErrorAction SilentlyContinue | Select-Object Name,Length,FullName | Format-Table -AutoSize -Wrap | Out-String -Width 400 | Write-Host

Write-Host "`n=== SUPABASE MIGRATIONS - 152k trace ===" -ForegroundColor Yellow
Select-String -Path "$ProjectRoot\supabase\migrations\*.sql" -Pattern "152|amen_chunks|amen_corpus" -ErrorAction SilentlyContinue | Select-Object -First 30 Filename,LineNumber,Line | Format-Table -AutoSize -Wrap | Out-String -Width 400 | Write-Host

Write-Host "`n=== AMEN_WEB SRC DATA ===" -ForegroundColor Cyan
Get-ChildItem "$ProjectRoot\amen-web\src" -Recurse -File -Filter "*.json" -ErrorAction SilentlyContinue | Select-Object Name,Length,FullName | Sort-Object Length -Descending | Select-Object -First 10 | Format-Table -AutoSize -Wrap | Out-String -Width 400 | Write-Host
