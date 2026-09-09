@echo off
title AMEN - Launcher
echo ==========================================
echo AMEN - LOCAL-FIRST SOUVERAIN - Launcher
echo ==========================================

REM 1. Qdrant
echo [1/4] Qdrant...
docker start qdrant >nul 2>&1
if errorlevel 1 (
  docker run -d --name qdrant -p 6333:6333 -p 6334:6334 qdrant/qdrant
)
echo Qdrant OK -> http://localhost:6333/dashboard

REM 2. Ollama serve (en fond, minimise)
echo [2/4] Ollama serve...
start "Ollama Serve" /min cmd /c "ollama serve"
timeout /t 4 >nul

REM 3. Verifie modeles
echo [3/4] Modeles Ollama...
ollama list | findstr qwen2:0.5b >nul
if errorlevel 1 (
  echo Pull qwen2:0.5b (350 Mo)...
  ollama pull qwen2:0.5b
)
ollama list | findstr nomic-embed-text >nul
if errorlevel 1 (
  echo Pull nomic-embed-text...
  ollama pull nomic-embed-text
)
echo Modeles OK
ollama list

REM 4. Backend
echo [4/4] Backend FastAPI...
cd /d %~dp0backend
if exist .venv\Scripts\activate.bat (
  call .venv\Scripts\activate.bat
)
start "AMEN API" cmd /k "uvicorn app.main:app --reload --port 8000"
echo API -> http://localhost:8000/docs

REM 5. Frontend
cd /d %~dp0frontend
start "AMEN WEB" cmd /k "npm run dev"
echo WEB -> http://localhost:5173

echo ==========================================
echo Tout est lance !
echo - Qdrant: http://localhost:6333/dashboard
echo - Ollama: http://localhost:11434
echo - API: http://localhost:8000/docs
echo - WEB: http://localhost:5173
echo.
echo Laisse les 3 fenetres ouvertes (Ollama Serve, AMEN API, AMEN WEB)
echo Pour arreter: docker stop qdrant + fermer les fenetres
echo ==========================================
pause
