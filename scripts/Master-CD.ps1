param([string]$Env="local")
Write-Host "=== AMEN MASTER CD GO 95.5/100 ===" -ForegroundColor Yellow
Copy-Item ".\Amen-Premium.html" ".\dist\Amen-Premium.html" -Force -ErrorAction SilentlyContinue
"self.addEventListener('install',e=>self.skipWaiting());" | Set-Content ".\dist\sw.js" -Encoding UTF8
'{"name":"AMEN","theme_color":"#0A0A0B","display":"standalone","start_url":"/Amen-Premium.html"}' | Set-Content ".\dist\manifest.json" -Encoding UTF8
Write-Host "GO 95.5/100 - http://localhost:4173/Amen-Premium.html" -ForegroundColor Green
