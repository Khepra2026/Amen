
# FIND 151k SEEDING
param([string]$ProjectRoot="C:\Users\essoc\AMEN")
Set-Location $ProjectRoot
Write-Host "=== SEARCH SEEDING 151k ===" -ForegroundColor Cyan

Get-ChildItem -Path $ProjectRoot -Recurse -Directory -ErrorAction SilentlyContinue | Where-Object { $_.Name -match "seed|corpus|chunk|amen|data" } | Select-Object FullName | Format-Table -Wrap | Out-String -Width 300 | Write-Host

Write-Host "`n=== FILES >1MB ===" -ForegroundColor Yellow
Get-ChildItem -Path $ProjectRoot -Recurse -File -ErrorAction SilentlyContinue | Where-Object { $_.Length -gt 1MB } | Sort-Object Length -Descending | Select-Object -First 20 Name, @{N="MB";E={[math]::Round($_.Length/1MB,2)}}, FullName | Format-Table -AutoSize -Wrap | Out-String -Width 300 | Write-Host

Write-Host "`n=== SEEDING FOLDER ===" -ForegroundColor Cyan
if (Test-Path "$ProjectRoot\seeding") { Get-ChildItem "$ProjectRoot\seeding" -Recurse | Select-Object Name,Length,FullName | Format-Table -AutoSize -Wrap | Out-String -Width 300 | Write-Host }
if (Test-Path "$ProjectRoot\scripts\seeding") { Get-ChildItem "$ProjectRoot\scripts\seeding" -Recurse | Select-Object Name,Length,FullName | Format-Table -AutoSize -Wrap | Out-String -Width 300 | Write-Host }
if (Test-Path "$ProjectRoot\supabase\seeding") { Get-ChildItem "$ProjectRoot\supabase\seeding" -Recurse | Select-Object Name,Length,FullName | Format-Table -AutoSize -Wrap | Out-String -Width 300 | Write-Host }
if (Test-Path "$ProjectRoot\amen-web\seeding") { Get-ChildItem "$ProjectRoot\amen-web\seeding" -Recurse | Select-Object Name,Length,FullName | Format-Table -AutoSize -Wrap | Out-String -Width 300 | Write-Host }

Write-Host "`n=== JSON/CSV with chunks ===" -ForegroundColor Cyan
Get-ChildItem -Path $ProjectRoot -Recurse -File -Filter "*.json" -ErrorAction SilentlyContinue | Where-Object { $_.Length -gt 100KB } | Select-Object -First 10 | ForEach-Object {
  try {
    $content = Get-Content $_.FullName -First 1 -ErrorAction SilentlyContinue
    Write-Host "$($_.FullName) - $($_.Length) - first: $($content.Substring(0, [Math]::Min(200, $content.Length)))"
  } catch {}
}
