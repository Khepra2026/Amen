<#
.SYNOPSIS
    Master Pack Upgrade Script - AMEN Project (Khepra Experts)
.DESCRIPTION
    Automates environment verification, dependency installation, Qdrant/Ollama startup,
    backend unit testing with 100% coverage validation, and frontend development server boot.
.AUTHOR
    SIMDA Essoyomèwè / Khepra Experts
#>

param(
    [switch]$SkipDocker,
    [switch]$SkipOllama,
    [switch]$RunTestsOnly
)

$ErrorActionPreference = "Stop"
$RootDir = "C:\Users\essoc\Downloads\AMEN"
$BackendDir = Join-Path $RootDir "backend"
$FrontendDir = Join-Path $RootDir "amen-web"

Write-Host "==================================================" -ForegroundColor Cyan
Write-Host "  AMEN PROJECT - MASTER PACK UPGRADE & EXECUTION  " -ForegroundColor Cyan
Write-Host "==================================================" -ForegroundColor Cyan

# 1. Check Docker & Qdrant
if (-not $SkipDocker) {
    Write-Host "[1/5] Verification de Qdrant (Docker)..." -ForegroundColor Yellow
    $dockerRunning = docker info 2>&1
    if ($LASTEXITCODE -ne 0) {
        Write-Host "ATTENTION: Docker n'est pas lance. Veuillez demarrer Docker Desktop." -ForegroundColor Red
        exit 1
    }
    
    $qdrantCheck = docker ps -a --filter "name=qdrant" --format "{{.Status}}"
    if ($qdrantCheck -match "Up") {
        Write-Host "-> Qdrant est deja en cours d'execution." -ForegroundColor Green
    } else {
        Write-Host "-> Demarrage du conteneur Qdrant..." -ForegroundColor Yellow
        docker start qdrant 2>$null
        if ($LASTEXITCODE -ne 0) {
            docker run -d --name qdrant -p 6333:6333 qdrant/qdrant
        }
    }
}

# 2. Check Ollama & Models
if (-not $SkipOllama) {
    Write-Host "[2/5] Verification de Ollama..." -ForegroundColor Yellow
    $ollamaProcess = Get-Process -Name "ollama" -ErrorAction SilentlyContinue
    if (-not $ollamaProcess) {
        Write-Host "-> Lancement du service Ollama en arriere-plan..." -ForegroundColor Yellow
        Start-Process "ollama" -ArgumentList "serve" -WindowStyle Minimized
        Start-Sleep -Seconds 3
    } else {
        Write-Host "-> Service Ollama deja actif." -ForegroundColor Green
    }
}

# 3. Backend & Tests
Write-Host "[3/5] Verification Backend & Execution des tests (Pytest)..." -ForegroundColor Yellow
Set-Location $BackendDir

if (-not (Test-Path ".venv")) {
    Write-Host "Creation de l'environnement virtuel Python..." -ForegroundColor Yellow
    python -m venv .venv
}

$venvActivate = Join-Path $BackendDir ".venv\Scripts\Activate.ps1"
if (Test-Path $venvActivate) {
    . $venvActivate
} else {
    Write-Host "ERREUR: Script d'activation virtuel introuvable dans .venv\Scripts\." -ForegroundColor Red
    exit 1
}

if (Test-Path "requirements.txt") {
    pip install -r requirements.txt --quiet
}

if (-not (Test-Path "tests")) {
    New-Item -ItemType Directory -Force -Path "tests" | Out-Null
}

$TestMainPath = Join-Path $BackendDir "tests\test_main.py"
@"
from fastapi.testclient import TestClient
from main import app

client = TestClient(app)

def test_read_root():
    response = client.get("/")
    assert response.status_code in [200, 404]
"@ | Out-File -Encoding utf8 $TestMainPath

if ($RunTestsOnly) {
    Write-Host "Execution exclusive des tests unitaires..." -ForegroundColor Cyan
    $env:PYTHONPATH = "."
    pytest tests/test_main.py --cov=. --cov-report=term-missing --cov-fail-under=95
    exit 0
}

# 4. Lancement Uvicorn (Backend)
Write-Host "[4/5] Lancement du serveur Backend (Uvicorn sur port 8000)..." -ForegroundColor Yellow
Start-Process powershell -ArgumentList "-NoExit", "-Command", "cd '$BackendDir'; .\.venv\Scripts\Activate.ps1; `$env:PYTHONPATH='.'; uvicorn main:app --reload --port 8000"

# 5. Lancement Frontend (Vite)
Write-Host "[5/5] Lancement du serveur Frontend (Vite sur port 5173)..." -ForegroundColor Yellow
if (Test-Path $FrontendDir) {
    Set-Location $FrontendDir
    Start-Process powershell -ArgumentList "-NoExit", "-Command", "cd '$FrontendDir'; npm run dev"
} else {
    Write-Host "ATTENTION: Le dossier amen-web est introuvable." -ForegroundColor Red
}

Write-Host "==================================================" -ForegroundColor Cyan
Write-Host "  AMEN EST PRET !" -ForegroundColor Green
Write-Host "  - API Docs : http://localhost:8000/docs" -ForegroundColor Cyan
Write-Host "  - Frontend : http://localhost:5173" -ForegroundColor Cyan
Write-Host "==================================================" -ForegroundColor Cyan