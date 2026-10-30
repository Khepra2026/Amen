# ============================================================
# AMEN v329 — MASTER LOCAL ACCEPTANCE / REMEDIATION
# Big Four execution controller
#
# Objectif :
#   1. Vérifier Ollama
#   2. Vérifier qwen3:8b
#   3. Vérifier API OpenAI-compatible
#   4. Tester une vraie génération
#   5. Vérifier les scripts AMEN disponibles
#   6. Démarrer le serveur embedding si disponible
#   7. Lancer BGE-M3 en mode --all
#   8. Vérifier semantic full
#   9. Vérifier RAG E2E
#  10. Vérifier sécurité
#  11. Générer un rapport JSON
#
# IMPORTANT :
#   - Aucun PASS n'est inventé.
#   - Une commande absente = NOT_AVAILABLE.
#   - Une erreur runtime = FAIL.
#   - Les vecteurs amen-local-1024 ne sont PAS comptés comme BGE-M3.
# ============================================================

$ErrorActionPreference = "Continue"

$ProjectRoot = (Get-Location).Path
$ReportDir = Join-Path $ProjectRoot "reports"
$Timestamp = Get-Date -Format "yyyyMMdd-HHmmss"
$ReportFile = Join-Path $ReportDir "AMEN_V329_MASTER_$Timestamp.json"

New-Item -ItemType Directory -Force -Path $ReportDir | Out-Null

$Results = [System.Collections.Generic.List[object]]::new()

function Add-Result {
    param(
        [string]$Stage,
        [string]$Status,
        [string]$Detail
    )

    $item = [PSCustomObject]@{
        timestamp = (Get-Date).ToString("o")
        stage     = $Stage
        status    = $Status
        detail    = $Detail
    }

    $Results.Add($item)

    $color = switch ($Status) {
        "PASS"          { "Green" }
        "FAIL"          { "Red" }
        "NOT_AVAILABLE" { "DarkYellow" }
        "SKIPPED"       { "Yellow" }
        default         { "Gray" }
    }

    Write-Host "[$Status] $Stage — $Detail" -ForegroundColor $color
}

function Run-Command {
    param(
        [string]$Stage,
        [string]$Command,
        [string[]]$Arguments
    )

    Write-Host "`n==================================================" -ForegroundColor Cyan
    Write-Host "$Stage" -ForegroundColor Cyan
    Write-Host "==================================================" -ForegroundColor Cyan
    Write-Host "$Command $($Arguments -join ' ')" -ForegroundColor DarkGray

    try {
        & $Command @Arguments

        $exitCode = $LASTEXITCODE

        if ($exitCode -eq 0) {
            Add-Result $Stage "PASS" "exit code 0"
            return $true
        }

        Add-Result $Stage "FAIL" "exit code $exitCode"
        return $false
    }
    catch {
        Add-Result $Stage "FAIL" $_.Exception.Message
        return $false
    }
}

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host " AMEN v329 — MASTER LOCAL ACCEPTANCE" -ForegroundColor Cyan
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "Project : $ProjectRoot"
Write-Host "Report  : $ReportFile"
Write-Host ""

# ------------------------------------------------------------
# P0 — PROJECT
# ------------------------------------------------------------

if (-not (Test-Path ".\package.json")) {
    Add-Result "PROJECT" "FAIL" "package.json introuvable dans $ProjectRoot"
    exit 1
}

Add-Result "PROJECT" "PASS" "package.json trouvé"

# ------------------------------------------------------------
# P0 — NODE / NPM
# ------------------------------------------------------------

if (Get-Command node -ErrorAction SilentlyContinue) {
    $nodeVersion = node --version
    Add-Result "NODE" "PASS" $nodeVersion
}
else {
    Add-Result "NODE" "FAIL" "node introuvable"
}

if (Get-Command npm -ErrorAction SilentlyContinue) {
    $npmVersion = npm --version
    Add-Result "NPM" "PASS" $npmVersion
}
else {
    Add-Result "NPM" "FAIL" "npm introuvable"
}

# ------------------------------------------------------------
# P0 — OLLAMA
# ------------------------------------------------------------

if (-not (Get-Command ollama -ErrorAction SilentlyContinue)) {
    Add-Result "OLLAMA" "FAIL" "ollama introuvable dans PATH"
}
else {

    $ollamaVersion = ollama --version
    Add-Result "OLLAMA VERSION" "PASS" $ollamaVersion

    $ollamaBase = "http://127.0.0.1:11434"

    try {
        $tags = Invoke-RestMethod `
            "$ollamaBase/api/tags" `
            -Method GET `
            -TimeoutSec 10

        Add-Result `
            "OLLAMA SERVER" `
            "PASS" `
            "$($tags.models.Count) modèles disponibles"
    }
    catch {
        Add-Result `
            "OLLAMA SERVER" `
            "FAIL" `
            "Ollama ne répond pas sur $ollamaBase"

        Write-Host ""
        Write-Host "Lance dans une autre fenêtre :" -ForegroundColor Yellow
        Write-Host "ollama serve" -ForegroundColor White
        Write-Host ""

        $tags = $null
    }

    if ($tags) {

        $targetModel = "qwen3:8b"

        $target = $tags.models |
            Where-Object { $_.model -eq $targetModel }

        if ($target) {
            Add-Result `
                "OLLAMA MODEL" `
                "PASS" `
                "$targetModel installé"
        }
        else {
            Add-Result `
                "OLLAMA MODEL" `
                "FAIL" `
                "$targetModel absent"
        }

        # --------------------------------------------------------
        # OpenAI-compatible /v1/models
        # --------------------------------------------------------

        try {

            $openaiModels = Invoke-RestMethod `
                "$ollamaBase/v1/models" `
                -Method GET `
                -TimeoutSec 10

            $apiModel = $openaiModels.data |
                Where-Object { $_.id -eq $targetModel }

            if ($apiModel) {
                Add-Result `
                    "OPENAI API MODELS" `
                    "PASS" `
                    "$targetModel exposé par /v1/models"
            }
            else {
                Add-Result `
                    "OPENAI API MODELS" `
                    "FAIL" `
                    "$targetModel absent de /v1/models"
            }

        }
        catch {
            Add-Result `
                "OPENAI API MODELS" `
                "FAIL" `
                $_.Exception.Message
        }

        # --------------------------------------------------------
        # REAL GENERATION
        # --------------------------------------------------------

        try {

            $body = @{
                model = $targetModel
                messages = @(
                    @{
                        role = "user"
                        content = "Réponds exactement avec AMEN_OPENAI_COMPATIBLE_OK et rien d'autre."
                    }
                )
                stream = $false
                temperature = 0
            } | ConvertTo-Json -Depth 10

            $start = Get-Date

            $generation = Invoke-RestMethod `
                "$ollamaBase/v1/chat/completions" `
                -Method POST `
                -ContentType "application/json" `
                -Body $body `
                -TimeoutSec 180

            $elapsed = ((Get-Date) - $start).TotalSeconds

            $answer = $generation.choices[0].message.content

            if ($answer -match "AMEN_OPENAI_COMPATIBLE_OK") {

                Add-Result `
                    "REAL LLM GENERATION" `
                    "PASS" `
                    "qwen3:8b génération réelle en $([math]::Round($elapsed,2))s"

            }
            else {

                Add-Result `
                    "REAL LLM GENERATION" `
                    "FAIL" `
                    "Réponse inattendue : $answer"
            }

        }
        catch {

            Add-Result `
                "REAL LLM GENERATION" `
                "FAIL" `
                $_.Exception.Message
        }
    }
}

# ------------------------------------------------------------
# ENVIRONMENT
# ------------------------------------------------------------

$env:LOCAL_LLM_BASE_URL = "http://127.0.0.1:11434/v1"
$env:LOCAL_LLM_MODEL = "qwen3:8b"
$env:LOCAL_LLM_API_KEY = "local"

Add-Result `
    "LOCAL LLM ENV" `
    "PASS" `
    "LOCAL_LLM_BASE_URL / MODEL / API_KEY définis uniquement dans ce processus PowerShell"

# ------------------------------------------------------------
# PACKAGE SCRIPTS DISCOVERY
# ------------------------------------------------------------

try {

    $package = Get-Content ".\package.json" -Raw |
        ConvertFrom-Json

    $scripts = $package.scripts

    $requiredScripts = @(
        "amen:llm:health",
        "amen:llm:test",
        "amen:embed-server",
        "amen:bge-m3",
        "amen:semantic:full",
        "amen:rag:e2e",
        "amen:llm:security"
    )

    foreach ($scriptName in $requiredScripts) {

        $property = $scripts.PSObject.Properties |
            Where-Object { $_.Name -eq $scriptName }

        if ($property) {
            Add-Result `
                "SCRIPT $scriptName" `
                "PASS" `
                "script présent"
        }
        else {
            Add-Result `
                "SCRIPT $scriptName" `
                "NOT_AVAILABLE" `
                "script absent de package.json"
        }
    }

}
catch {

    Add-Result `
        "PACKAGE DISCOVERY" `
        "FAIL" `
        $_.Exception.Message
}

# ------------------------------------------------------------
# P1 — LLM HEALTH
# ------------------------------------------------------------

if ($scripts."amen:llm:health") {

    Run-Command `
        "AMEN LLM HEALTH" `
        "npm" `
        @("run","amen:llm:health")
}
else {
    Add-Result "AMEN LLM HEALTH" "NOT_AVAILABLE" "script absent"
}

# ------------------------------------------------------------
# P1 — LLM TEST
# ------------------------------------------------------------

if ($scripts."amen:llm:test") {

    Run-Command `
        "AMEN LLM TEST T01-T10" `
        "npm" `
        @("run","amen:llm:test")
}
else {
    Add-Result "AMEN LLM TEST" "NOT_AVAILABLE" "script absent"
}

# ------------------------------------------------------------
# P1 — EMBEDDING SERVER
# ------------------------------------------------------------

$embedProcess = $null

if ($scripts."amen:embed-server") {

    Write-Host ""
    Write-Host "==================================================" -ForegroundColor Cyan
    Write-Host "DEMARRAGE SERVEUR EMBEDDING" -ForegroundColor Cyan
    Write-Host "==================================================" -ForegroundColor Cyan

    try {

        $embedProcess = Start-Process `
            -FilePath "npm" `
            -ArgumentList @("run","amen:embed-server") `
            -WorkingDirectory $ProjectRoot `
            -PassThru `
            -WindowStyle Normal

        Add-Result `
            "EMBED SERVER START" `
            "PASS" `
            "process lancé PID=$($embedProcess.Id)"

        Start-Sleep -Seconds 8

    }
    catch {

        Add-Result `
            "EMBED SERVER START" `
            "FAIL" `
            $_.Exception.Message
    }

}
else {

    Add-Result `
        "EMBED SERVER" `
        "NOT_AVAILABLE" `
        "script amen:embed-server absent"
}

# ------------------------------------------------------------
# P1 — BGE-M3
# ------------------------------------------------------------

if ($scripts."amen:bge-m3") {

    Run-Command `
        "BGE-M3 FULL INDEXING" `
        "npm" `
        @("run","amen:bge-m3","--","--all")

}
else {

    Add-Result `
        "BGE-M3 FULL INDEXING" `
        "NOT_AVAILABLE" `
        "script amen:bge-m3 absent"
}

# ------------------------------------------------------------
# P1 — SEMANTIC FULL
# ------------------------------------------------------------

if ($scripts."amen:semantic:full") {

    Run-Command `
        "SEMANTIC FULL" `
        "npm" `
        @("run","amen:semantic:full")

}
else {

    Add-Result `
        "SEMANTIC FULL" `
        "NOT_AVAILABLE" `
        "script absent"
}

# ------------------------------------------------------------
# P1 — RAG E2E
# ------------------------------------------------------------

if ($scripts."amen:rag:e2e") {

    Run-Command `
        "RAG E2E" `
        "npm" `
        @("run","amen:rag:e2e")

}
else {

    Add-Result `
        "RAG E2E" `
        "NOT_AVAILABLE" `
        "script absent"
}

# ------------------------------------------------------------
# P1 — SECURITY
# ------------------------------------------------------------

if ($scripts."amen:llm:security") {

    Run-Command `
        "LLM SECURITY" `
        "npm" `
        @("run","amen:llm:security")

}
else {

    # fallback direct script
    if (Test-Path ".\scripts\amen-llm-security-scan.mjs") {

        Run-Command `
            "LLM SECURITY" `
            "node" `
            @(".\scripts\amen-llm-security-scan.mjs")

    }
    else {

        Add-Result `
            "LLM SECURITY" `
            "NOT_AVAILABLE" `
            "script de sécurité absent"
    }
}

# ------------------------------------------------------------
# STOP EMBED SERVER
# ------------------------------------------------------------

if ($embedProcess) {

    try {

        if (-not $embedProcess.HasExited) {

            Stop-Process `
                -Id $embedProcess.Id `
                -Force `
                -ErrorAction SilentlyContinue

            Add-Result `
                "EMBED SERVER STOP" `
                "PASS" `
                "process arrêté"
        }

    }
    catch {

        Add-Result `
            "EMBED SERVER STOP" `
            "FAIL" `
            $_.Exception.Message
    }
}

# ------------------------------------------------------------
# FINAL REPORT
# ------------------------------------------------------------

$pass = @($Results | Where-Object Status -eq "PASS").Count
$fail = @($Results | Where-Object Status -eq "FAIL").Count
$na   = @($Results | Where-Object Status -eq "NOT_AVAILABLE").Count

$finalStatus = if ($fail -gt 0) {
    "FAIL"
}
elseif ($na -gt 0) {
    "DEGRADED"
}
else {
    "PASS"
}

$Summary = [PSCustomObject]@{
    version          = "AMEN-v329"
    timestamp        = (Get-Date).ToString("o")
    project_root     = $ProjectRoot
    final_status     = $finalStatus
    pass_count       = $pass
    fail_count       = $fail
    not_available    = $na
    llm_base_url     = "http://127.0.0.1:11434/v1"
    llm_model        = "qwen3:8b"
    llm_api_key      = "local"
    results          = $Results
}

$Summary |
    ConvertTo-Json -Depth 10 |
    Set-Content `
        -Path $ReportFile `
        -Encoding UTF8

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host " AMEN v329 — FINAL LOCAL VERDICT" -ForegroundColor Cyan
Write-Host "============================================================" -ForegroundColor Cyan

Write-Host "PASS           : $pass"
Write-Host "FAIL           : $fail"
Write-Host "NOT_AVAILABLE  : $na"
Write-Host "FINAL STATUS   : $finalStatus"
Write-Host ""
Write-Host "REPORT         : $ReportFile"
Write-Host "============================================================" -ForegroundColor Cyan

if ($finalStatus -eq "PASS") {
    Write-Host ""
    Write-Host "ATTENTION : PASS local ≠ PRODUCTION VERIFIED." -ForegroundColor Yellow
    Write-Host "Le runtime doit encore être joignable depuis Readdy Edge." -ForegroundColor Yellow
}

Write-Host ""
Write-Host "FIN AMEN v329" -ForegroundColor Cyan