# Makefile pwsh style
param([string]$Target="help")
switch($Target){
  "setup" { & ./scripts/pwsh/00-setup.ps1 }
  "build" { & ./scripts/pwsh/10-build.ps1 }
  "run" { & ./scripts/pwsh/20-run.ps1 }
  "test" { & ./scripts/pwsh/30-test.ps1 }
  "deploy" { & ./scripts/pwsh/40-deploy-master.ps1 }
  "exe" { & ./scripts/pwsh/99-exe-builder.ps1 }
  "master" { & ./scripts/pwsh/MASTER.ps1 }
  default {
    Write-Host "Targets: setup build run test deploy exe master" -ForegroundColor Cyan
  }
}
