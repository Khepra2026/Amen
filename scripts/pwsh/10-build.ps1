param([switch]$NoCache)
Write-Host "=== AMEN BUILD MASTER ===" -ForegroundColor Magenta
docker-compose build $(if($NoCache){"--no-cache"})
Write-Host "Build done" -ForegroundColor Green
