# Root launcher - double click = run
param()
$ErrorActionPreference = "Stop"
Set-Location $PSScriptRoot
Write-Host "AMEN ROOT MASTER" -ForegroundColor Yellow
pwsh -File ./scripts/pwsh/MASTER.ps1 -Mode dev
