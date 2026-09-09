param([string]$Target="cloudflare-vps")
Write-Host "=== AMEN DEPLOY MASTER CD -> $Target ===" -ForegroundColor Yellow
# Git master
git checkout master
git pull origin master
# Tag version
$version = Get-Date -Format "yyyy.MM.dd-HHmm"
git tag "v$version"
# Build prod images
docker-compose -f docker-compose.yml -f docker-compose.prod.yml build
# Push to GHCR
# docker push ghcr.io/khepra2026/amen-api:$version

# Cloudflare Pages
Write-Host "Deploy frontend to Cloudflare Pages: khepra.hermeunia.com" -ForegroundColor Cyan
Push-Location frontend
npm run build
# npx wrangler pages deploy dist --project-name=amen-web
Pop-Location

# VPS API
Write-Host "Deploy API to api.khepra.hermeunia.com via SSH" -ForegroundColor Cyan
# ssh amen@api.khepra.hermeunia.com "cd /opt/amen && git pull && docker-compose up -d"

Write-Host "Deploy $version DONE" -ForegroundColor Green
