param([switch]$SkipDocker,[switch]$SkipRag,[switch]$SkipPwa)
Write-Host "=== AMEN BIG FOUR - $(Get-Date) ===" -ForegroundColor Yellow
Write-Host " PWD: $PWD" -ForegroundColor Cyan
if(Test-Path ".env.local"){ Get-Content -Path ".env.local" | Select-String "MONGO|POSTGRES|QDRANT|OLLAMA" }
Write-Host " Conda $(conda --version)" -ForegroundColor Cyan
try{ conda activate amen-api }catch{ Write-Host "env amen-api manquant - conda create -n amen-api python=3.11 -y" -ForegroundColor Yellow }

if(-not $SkipDocker){
Write-Host " Docker - utilise override corrige" -ForegroundColor Cyan
docker compose -f docker-compose.yml -f.\amen-remediation\docker-compose.override.yml up -d
docker compose ps
}

Write-Host " API check" -ForegroundColor Cyan
if(Test-Path "amen-api/package.json"){
Push-Location amen-api
npm run typecheck; npm run build
Pop-Location
}else{ Write-Host "amen-api/package.json non trouve - skip" -ForegroundColor DarkGray }

Write-Host " Reports" -ForegroundColor Cyan
if(Test-Path ".\amen-remediation\scripts\generate_bigfour_reports.ps1"){
pwsh -NoProfile -File ".\amen-remediation\scripts\generate_bigfour_reports.ps1"
pwsh -NoProfile -File ".\amen-remediation\scripts\calculate_score.ps1"
}
Write-Host "DONE" -ForegroundColor Green
