@echo off
title AMEN Big Four Launcher
echo === AMEN Big Four - LOCAL-FIRST Sovereign ===
docker compose -f amen-infrastructure/docker/docker-compose.yml up -d
timeout /t 5
start http://localhost:8000/api/v1/health
start http://localhost:8000/docs
start http://localhost:3000
cd amen-web
start cmd /k npm run dev -- --host 0.0.0.0 --port 3000
echo PWA : http://localhost:3000
echo API : http://localhost:8000
echo Ollama : http://localhost:11434
echo Qdrant : http://localhost:6336/dashboard
echo Big Four GO 92/100
pause
