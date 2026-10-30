
param([string]$SpiritualiteRoot="D:\SPIRITUALITE")
Write-Host "=== D:\SPIRITUALITE SCAN 151k ===" -ForegroundColor Cyan

if (!(Test-Path $SpiritualiteRoot)) {
  Write-Host "D:\SPIRITUALITE not found - check drives" -ForegroundColor Red
  Get-PSDrive -PSProvider FileSystem | Format-Table Name,Root,Used,Free | Out-String | Write-Host
  exit
}

Write-Host "Found $SpiritualiteRoot" -ForegroundColor Green
Get-ChildItem $SpiritualiteRoot -Recurse -Directory -ErrorAction SilentlyContinue | Select-Object -First 30 FullName | Format-Table -Wrap | Out-String -Width 400 | Write-Host

Write-Host "`n=== FILES >10MB - POTENTIAL 151k ===" -ForegroundColor Yellow
Get-ChildItem $SpiritualiteRoot -Recurse -File -ErrorAction SilentlyContinue | Where-Object { $_.Length -gt 10MB } | Sort-Object Length -Descending | Select-Object -First 30 Name, @{N="MB";E={[math]::Round($_.Length/1MB,2)}}, FullName | Format-Table -AutoSize -Wrap | Out-String -Width 400 | Write-Host

Write-Host "`n=== FILES .json .csv .parquet .db .sqlite ===" -ForegroundColor Cyan
Get-ChildItem $SpiritualiteRoot -Recurse -File -ErrorAction SilentlyContinue | Where-Object { $_.Extension -in ".json",".csv",".parquet",".db",".sqlite",".sqlite3" } | Sort-Object Length -Descending | Select-Object -First 40 Name, @{N="MB";E={[math]::Round($_.Length/1MB,2)}}, FullName | Format-Table -AutoSize -Wrap | Out-String -Width 400 | Write-Host

Write-Host "`n=== COUNT LINES IN POTENTIAL CHUNK FILES ===" -ForegroundColor Green
Get-ChildItem $SpiritualiteRoot -Recurse -File -ErrorAction SilentlyContinue | Where-Object { $_.Extension -in ".json",".csv" -and $_.Length -gt 1MB } | Select-Object -First 10 | ForEach-Object {
  try {
    $lines = (Get-Content $_.FullName -ErrorAction SilentlyContinue | Measure-Object -Line).Lines
    Write-Host "$($_.FullName) -> $lines lines, $([math]::Round($_.Length/1MB,2)) MB"
  } catch {}
}
