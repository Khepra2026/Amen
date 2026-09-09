param([string]$Service="")
Write-Host "=== AMEN RUN LOCAL-FIRST ===" -ForegroundColor Yellow
docker-compose up -d --build
Write-Host "Waiting for Ollama..." -ForegroundColor Cyan
Start-Sleep -Seconds 10
$models = @("mistral:7b-instruct","nomic-embed-text","qwen2.5:7b")
foreach($m in $models){
  Write-Host "Pulling $m" -ForegroundColor DarkYellow
  docker exec amen_ollama_1 ollama pull $m 2>$null
  docker exec amen-ollama-1 ollama pull $m 2>$null
  docker exec amen_ollama ollama pull $m 2>$null
}
Write-Host "API: http://localhost:8000/docs" -ForegroundColor Green
Write-Host "WEB: http://localhost:5173 ou http://localhost:3000" -ForegroundColor Green
docker-compose ps
