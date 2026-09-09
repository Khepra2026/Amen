# AMEN MASTER - One Click Local Souverain
param([string]$Mode="dev")
Set-Location $PSScriptRoot/../..
Write-Host @"
   ___   __  __ _____ _   _
  / _ \ |  \/  | ____| \ | |
 | |_| || |\/| |  _| |  \| |
 |  _  || |  | | |___| |\  |
 |_| |_||_|  |_|_____|_| \_|
 SPIRITECH KNOWLEDGE OS - MASTER CD
 LOCAL-FIRST - SOUVERAIN - pwsh EXE
"@ -ForegroundColor Yellow

& ./scripts/pwsh/00-setup.ps1 -Env $Mode
& ./scripts/pwsh/10-build.ps1
& ./scripts/pwsh/20-run.ps1

Write-Host "AMEN est LIVE - Master" -ForegroundColor Green
