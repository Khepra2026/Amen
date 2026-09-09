@echo off
setlocal enabledelayedexpansion
title AMEN DEBUG
echo ==========================================
echo AMEN DEBUG - Ne fermera pas tout seul
echo ==========================================
echo Dossier: %CD%
echo.

REM Teste Ollama
echo [TEST] Ollama...
where ollama >nul 2>&1
if errorlevel 1 (
  echo ERREUR: ollama non trouve dans PATH
  echo Installe https://ollama.com
  pause
  exit /b
)
echo Ollama trouve: 
ollama --version

REM Teste Docker
echo.
echo [TEST] Docker...
where docker >nul 2>&1
if errorlevel 1 (
  echo WARNING: docker non trouve, on skip Qdrant
) else (
  echo Docker trouve, lancement Qdrant...
  docker ps | findstr qdrant >nul
  if errorlevel 1 (
    docker start qdrant >nul 2>&1
    if errorlevel 1 (
      docker run -d --name qdrant -p 6333:6333 qdrant/qdrant
    )
  )
  echo Qdrant OK
)

echo.
echo [LANCEMENT] Ollama serve...
start "Ollama Serve" /min cmd /c "ollama serve"
echo Attente 5 sec...
timeout /t 5 /nobreak >nul

echo.
echo [VERIF] http://localhost:11434
curl -s http://localhost:11434/api/tags >nul 2>&1
if errorlevel 1 (
  echo WARNING: Ollama ne repond pas encore, mais on continue
) else (
  echo Ollama OK!
  ollama list
)

echo.
echo [LANCEMENT] Backend...
cd /d "%~dp0backend"
if not exist app\main.py (
  echo ERREUR: app\main.py non trouve
  echo Le .bat doit etre a cote de docker-compose.yml
  echo Chemin actuel: %CD%
  dir
  pause
  exit /b
)

if exist .venv\Scripts\activate.bat (
  echo Activation venv...
  call .venv\Scripts\activate.bat
  python --version
) else (
  echo WARNING: .venv non trouve, utilisation python global
)

echo Lancement uvicorn...
start "AMEN API - NE PAS FERMER" cmd /k "uvicorn app.main:app --reload --port 8000"

echo.
echo [LANCEMENT] Frontend...
cd /d "%~dp0frontend"
if not exist package.json (
  echo ERREUR: package.json non trouve dans frontend
  echo Chemin: %CD%
  pause
  exit /b
)
start "AMEN WEB - NE PAS FERMER" cmd /k "npm run dev"

echo.
echo ==========================================
echo LANCE !
echo - API: http://localhost:8000/docs
echo - WEB: http://localhost:5173
echo - Qdrant: http://localhost:6333/dashboard
echo - Ollama: http://localhost:11434
echo.
echo Si une fenetre affiche une erreur, copie-colle l'erreur ici
echo ==========================================
pause
