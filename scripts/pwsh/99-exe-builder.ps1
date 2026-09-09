# Convertir tous les pwsh en .exe portables pour Windows sans dépendance
# Utilise ps2exe ou MakeExe
Write-Host "=== BUILD EXE PARTOUT ===" -ForegroundColor Red
Install-Module ps2exe -Force -Scope CurrentUser -ErrorAction SilentlyContinue
$scripts = Get-ChildItem "scripts/pwsh/*.ps1"
foreach($s in $scripts){
  $exe = "dist/exe/$($s.BaseName).exe"
  New-Item -ItemType Directory -Force -Path "dist/exe" | Out-Null
  Write-Host "Compiling $($s.Name) -> $exe" -ForegroundColor Cyan
  try {
    Invoke-ps2exe $s.FullName $exe -noConsole:$false -requireAdmin:$false
  } catch {
    Write-Host "ps2exe fail, copy as .cmd wrapper" -ForegroundColor Yellow
    "@echo off`npwsh -ExecutionPolicy Bypass -File `"%~dp0..\..\$($s.Name)`" %*" | Set-Content "$exe.cmd"
  }
}
# Master Launcher EXE
@"
Write-Host "AMEN MASTER LAUNCHER" -ForegroundColor Yellow
& `$PSScriptRoot/00-setup.ps1
& `$PSScriptRoot/10-build.ps1
& `$PSScriptRoot/20-run.ps1
"@ | Set-Content "scripts/pwsh/MASTER.ps1"
Invoke-ps2exe "scripts/pwsh/MASTER.ps1" "dist/exe/AMEN-MASTER.exe" -ErrorAction SilentlyContinue
Write-Host "EXE built in dist/exe/" -ForegroundColor Green
Get-ChildItem dist/exe/
