@echo off
REM AMEN MASTER BAT - FIX PATH C:\Users
REM Se place automatiquement dans le dossier du .bat
cd /d "%~dp0"
echo ========================================
echo  AMEN MASTER - %CD%
echo ========================================

where pwsh >nul 2>nul
if %ERRORLEVEL% EQU 0 (
  echo [OK] pwsh trouve
  pwsh -ExecutionPolicy Bypass -NoProfile -File "%~dp0scripts\pwsh\MASTER.ps1" %*
) else (
  where powershell >nul 2>nul
  if %ERRORLEVEL% EQU 0 (
    echo [WARN] pwsh non trouve, fallback powershell
    powershell -ExecutionPolicy Bypass -NoProfile -File "%~dp0scripts\pwsh\MASTER.ps1" %*
  ) else (
    echo [ERREUR] PowerShell introuvable - installe PowerShell 7: https://aka.ms/pwsh
    pause
    exit /b 1
  )
)
if %ERRORLEVEL% NEQ 0 (
  echo [ERREUR] Echec execution
  pause
)
