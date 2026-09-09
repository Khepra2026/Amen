# AMEN.ps1 - FIX PATH
param([string]$Mode="dev")
$ErrorActionPreference = "Stop"
# Se place dans le dossier du script, pas C:\Users
Set-Location $PSScriptRoot
Write-Host "AMEN ROOT: $PSScriptRoot" -ForegroundColor Yellow
Write-Host "Mode: $Mode" -ForegroundColor Cyan

# Verif fichier MASTER existe
if (-not (Test-Path "./scripts/pwsh/MASTER.ps1")) {
  Write-Error "MASTER.ps1 introuvable. Tu n'es pas dans le bon dossier AMEN? Dossier actuel: $(Get-Location) Liste: $(Get-ChildItem)"
  exit 1
}

& ./scripts/pwsh/MASTER.ps1 -Mode $Mode
