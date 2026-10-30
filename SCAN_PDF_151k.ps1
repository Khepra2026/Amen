
param([string]$SpiritualiteRoot="D:\SPIRITUALITE", [string]$ProjectRoot="C:\Users\essoc\AMEN")
Set-Location $ProjectRoot
Write-Host "=== SCAN PDF POUR 151k CHUNKS ===" -ForegroundColor Cyan

Get-ChildItem $SpiritualiteRoot -Recurse -File -ErrorAction SilentlyContinue | Where-Object { $_.Extension -eq ".pdf" } | Sort-Object Length -Descending | Select-Object -First 50 Name, @{N="MB";E={[math]::Round($_.Length/1MB,2)}}, FullName | Format-Table -AutoSize -Wrap | Out-String -Width 500 | Write-Host

Write-Host "`n=== BIBLIOTHEQUES ===" -ForegroundColor Yellow
Get-ChildItem "$SpiritualiteRoot\BIBLIOTHEQUES" -Recurse -File -ErrorAction SilentlyContinue | Select-Object Name, @{N="MB";E={[math]::Round($_.Length/1MB,2)}}, FullName | Sort-Object Length -Descending | Select-Object -First 30 | Format-Table -AutoSize -Wrap | Out-String -Width 500 | Write-Host

Write-Host "`n=== LIVRES SACRES ===" -ForegroundColor Yellow
Get-ChildItem "$SpiritualiteRoot\Livres sacrés" -Recurse -File -ErrorAction SilentlyContinue | Select-Object Name, @{N="MB";E={[math]::Round($_.Length/1MB,2)}}, FullName | Sort-Object Length -Descending | Select-Object -First 30 | Format-Table -AutoSize -Wrap | Out-String -Width 500 | Write-Host

Write-Host "`n=== TOTAL PDF ===" -ForegroundColor Green
$total = (Get-ChildItem $SpiritualiteRoot -Recurse -File -Filter "*.pdf" -ErrorAction SilentlyContinue | Measure-Object Length -Sum).Sum
Write-Host "Total PDF: $([math]::Round($total/1MB,2)) MB, count: $((Get-ChildItem $SpiritualiteRoot -Recurse -File -Filter "*.pdf" -ErrorAction SilentlyContinue | Measure-Object).Count) files"
