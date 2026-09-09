@echo off
echo Lancement AMEN - 2 serveurs...
start "AMEN-BACKEND" powershell -NoExit -Command "cd '%~dp0backend'; .\.venv\Scripts\Activate.ps1; uvicorn app.main:app --reload --port 8000"
timeout /t 3
start "AMEN-FRONTEND" powershell -NoExit -Command "cd '%~dp0frontend'; npm run dev"
timeout /t 3
start http://localhost:5173
echo AMEN lance! Garde les 2 fenetres noires ouvertes!
pause
