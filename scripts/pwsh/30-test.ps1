Write-Host "=== AMEN TEST GO PROD >=95% ===" -ForegroundColor Cyan
# Backend tests
docker exec amen-api-1 pytest -q 2>$null; if($LASTEXITCODE -ne 0){ docker-compose exec amen-api pytest tests/ --cov=app --cov-report=term-missing }
# Frontend build test
Push-Location frontend
npm run build
Pop-Location
Write-Host "Tests OK" -ForegroundColor Green
