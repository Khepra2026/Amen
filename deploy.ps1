[CmdletBinding()]
param(
    [string]$RemoteUser = "root",
    [string]$RemoteHost = "your-server-ip-or-domain",
    [string]$RemotePath = "/var/www/html/dist",
    [string]$SshKeyPath = "$HOME\.ssh\id_rsa"
)

$ErrorActionPreference = "Stop"
$ArchiveName = "release-$(Get-Date -Format 'yyyyMMddHHmmss').zip"

Write-Host "=== Starting Production Deployment Pipeline ===" -ForegroundColor Cyan

try {
    Write-Host "[1/4] Running production build..." -ForegroundColor Yellow
    npm install
    npm run build

    if (-not (Test-Path "dist")) {
        throw "Build failed: 'dist' directory not found."
    }
    Write-Host "Build completed successfully." -ForegroundColor Green

    Write-Host "[2/4] Packaging build artifacts..." -ForegroundColor Yellow
    Compress-Archive -Path "dist\*" -DestinationPath $ArchiveName -Force
    Write-Host "Package created: $ArchiveName" -ForegroundColor Green

    Write-Host "[3/4] Transferring files to $RemoteHost..." -ForegroundColor Yellow
    scp -i $SshKeyPath $ArchiveName "${RemoteUser}@${RemoteHost}:/tmp/$ArchiveName"

    Write-Host "[4/4] Extracting files on remote server..." -ForegroundColor Yellow
    $RemoteCommand = "unzip -o /tmp/$ArchiveName -d $RemotePath && rm /tmp/$ArchiveName"
    ssh -i $SshKeyPath "${RemoteUser}@${RemoteHost}" $RemoteCommand

    Write-Host "=== Deployment Completed Successfully! ===" -ForegroundColor Green
}
catch {
    Write-Error "Deployment failed: $_"
    exit 1
}
finally {
    if (Test-Path $ArchiveName) {
        Remove-Item $ArchiveName -Force
    }
}
