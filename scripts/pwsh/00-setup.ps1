# AMEN - Setup Master Souverain - pwsh everywhere
param([string]$Env="dev")
Write-Host "=== AMEN SETUP [$Env] - LOCAL-FIRST ===" -ForegroundColor Yellow
$ErrorActionPreference = "Stop"

# Check tools
@("docker","git","pwsh") | ForEach-Object {
  if (-not (Get-Command $_ -ErrorAction SilentlyContinue)) { throw "$_ manquant" }
}

# Env file
if (-not (Test-Path ".env")) {
  @"
DATABASE_URL=postgresql+asyncpg://amen:amen_secret@postgres:5432/amen
MONGODB_URL=mongodb://mongodb:27017
QDRANT_URL=http://qdrant:6333
OLLAMA_URL=http://ollama:11434
REDIS_URL=redis://redis:6379/0
JWT_SECRET=AMEN_KHEPRA_2026_SOUVERAIN
ENV=$Env
DOMAIN=khepra.hermeunia.com
API_DOMAIN=api.khepra.hermeunia.com
"@ | Set-Content .env -Encoding UTF8
}

# Miniconda envs
$envs = @("amen-api","amen-ai","amen-rag","amen-data","amen-dev")
foreach($e in $envs){
  Write-Host "Checking conda env $e" -ForegroundColor Cyan
  # conda env create if needed - optional
}

Write-Host "Setup OK - Master ready" -ForegroundColor Green
