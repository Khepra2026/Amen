# ============================================================
# AMEN v330 — MASTER RECONCILIATION / BGE-M3 / LLM
# ============================================================
# OBJECTIF
#   Réconcilier le projet LOCAL avec les livrables annoncés
#   par Readdy, sans inventer de scripts ni de résultats.
#
#   P0  : inventaire réel du projet
#   P0  : validation Ollama / qwen3:8b
#   P0  : installation + validation BGE-M3
#   P1  : recherche des workers/scripts AMEN
#   P1  : vérification Supabase / environnement
#   P1  : exécution uniquement des scripts réellement présents
#   P2  : rapport objectif
#
# IMPORTANT
#   - Aucun PASS fictif.
#   - amen-local-1024 != BGE-M3.
#   - Aucun secret affiché.
#   - Aucun secret écrit dans Git.
#   - Aucun localhost présenté comme accessible à Readdy Edge.
# ============================================================

$ErrorActionPreference = "Continue"

$Root = (Get-Location).Path
$Timestamp = Get-Date -Format "yyyyMMdd-HHmmss"
$ReportDir = Join-Path $Root "reports"
$Report = Join-Path $ReportDir "AMEN_V330_RECONCILIATION_$Timestamp.json"

New-Item -ItemType Directory -Force -Path $ReportDir | Out-Null

$Results = @()

function Result {
    param(
        [string]$Stage,
        [string]$Status,
        [string]$Detail
    )

    $script:Results += [PSCustomObject]@{
        timestamp = (Get-Date).ToString("o")
        stage     = $Stage
        status    = $Status
        detail    = $Detail
    }

    $color = switch ($Status) {
        "PASS"          { "Green" }
        "FAIL"          { "Red" }
        "DEGRADED"      { "Yellow" }
        "NOT_AVAILABLE" { "DarkYellow" }
        "NOT_VERIFIED"  { "DarkYellow" }
        default         { "Gray" }
    }

    Write-Host "[$Status] $Stage — $Detail" -ForegroundColor $color
}

function Test-CommandExists {
    param([string]$Name)

    return [bool](Get-Command $Name -ErrorAction SilentlyContinue)
}

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host " AMEN v330 — RECONCILIATION MASTER" -ForegroundColor Cyan
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "ROOT : $Root"
Write-Host ""

# ============================================================
# P0 — PROJECT
# ============================================================

if (-not (Test-Path ".\package.json")) {
    Result "PROJECT" "FAIL" "package.json absent"
    exit 1
}

Result "PROJECT" "PASS" "package.json présent"

# ============================================================
# P0 — NODE / NPM
# ============================================================

if (Test-CommandExists "node") {
    Result "NODE" "PASS" "$(node --version)"
}
else {
    Result "NODE" "FAIL" "Node absent"
}

if (Test-CommandExists "npm") {
    Result "NPM" "PASS" "$(npm --version)"
}
else {
    Result "NPM" "FAIL" "npm absent"
}

# ============================================================
# P0 — PACKAGE.JSON REALITY
# ============================================================

try {

    $package = Get-Content ".\package.json" -Raw |
        ConvertFrom-Json

    Write-Host ""
    Write-Host "=== package.json / scripts réellement présents ===" -ForegroundColor Cyan

    if ($package.scripts) {

        $package.scripts.PSObject.Properties |
            Sort-Object Name |
            ForEach-Object {
                Write-Host "$($_.Name) = $($_.Value)"
            }

        Result `
            "PACKAGE SCRIPTS" `
            "PASS" `
            "$($package.scripts.PSObject.Properties.Count) scripts réellement présents"

    }
    else {

        Result `
            "PACKAGE SCRIPTS" `
            "FAIL" `
            "aucun script package.json"
    }

}
catch {

    Result `
        "PACKAGE PARSE" `
        "FAIL" `
        $_.Exception.Message
}

# ============================================================
# P0 — RECHERCHE DES FICHIERS READDY ANNONCÉS
# ============================================================

$ExpectedFiles = @(
    "scripts\amen-llm-security-scan.mjs",
    "scripts\amen-v329-report.mjs",
    "scripts\amen-bge-m3-embed.mjs",
    "scripts\amen-embed-server.mjs",
    "src\lib\llm\client.ts",
    "src\lib\llm\config.ts",
    "src\lib\llm\health.ts",
    "src\lib\llm\metrics.ts",
    "src\lib\llm\schemas.ts",
    "src\lib\rag\pipeline.ts"
)

Write-Host ""
Write-Host "=== Vérification des fichiers annoncés par Readdy ===" -ForegroundColor Cyan

foreach ($file in $ExpectedFiles) {

    if (Test-Path (Join-Path $Root $file)) {

        Result `
            "FILE $file" `
            "PASS" `
            "présent localement"

    }
    else {

        Result `
            "FILE $file" `
            "NOT_AVAILABLE" `
            "absent localement"
    }
}

# ============================================================
# P0 — OLLAMA
# ============================================================

if (-not (Test-CommandExists "ollama")) {

    Result "OLLAMA" "FAIL" "Ollama absent"
}
else {

    Result "OLLAMA VERSION" "PASS" "$(ollama --version)"

    $OllamaBase = "http://127.0.0.1:11434"

    try {

        $Tags = Invoke-RestMethod `
            "$OllamaBase/api/tags" `
            -Method GET `
            -TimeoutSec 10

        Result `
            "OLLAMA SERVER" `
            "PASS" `
            "$($Tags.models.Count) modèles"

    }
    catch {

        Result `
            "OLLAMA SERVER" `
            "FAIL" `
            "serveur inaccessible"

        $Tags = $null
    }
}

# ============================================================
# P0 — QWEN3 REAL GENERATION
# ============================================================

if ($Tags) {

    $Qwen = $Tags.models |
        Where-Object { $_.model -eq "qwen3:8b" }

    if ($Qwen) {

        Result `
            "QWEN3:8B" `
            "PASS" `
            "modèle installé"

        try {

            $Body = @{
                model = "qwen3:8b"
                messages = @(
                    @{
                        role = "user"
                        content = "Réponds exactement AMEN_QWEN3_OK"
                    }
                )
                stream = $false
                temperature = 0
            } | ConvertTo-Json -Depth 10

            $Generation = Invoke-RestMethod `
                "$OllamaBase/v1/chat/completions" `
                -Method POST `
                -ContentType "application/json" `
                -Body $Body `
                -TimeoutSec 180

            $Answer = $Generation.choices[0].message.content

            if ($Answer -match "AMEN_QWEN3_OK") {

                Result `
                    "REAL LLM GENERATION" `
                    "PASS" `
                    "qwen3:8b répond réellement"

            }
            else {

                Result `
                    "REAL LLM GENERATION" `
                    "FAIL" `
                    "réponse inattendue"
            }

        }
        catch {

            Result `
                "REAL LLM GENERATION" `
                "FAIL" `
                $_.Exception.Message
        }

    }
    else {

        Result `
            "QWEN3:8B" `
            "FAIL" `
            "qwen3:8b absent"
    }
}

# ============================================================
# P0 — BGE-M3
# ============================================================

Write-Host ""
Write-Host "=== BGE-M3 ===" -ForegroundColor Cyan

if (-not $Tags) {

    Result "BGE-M3" "NOT_VERIFIED" "Ollama indisponible"

}
else {

    $Bge = $Tags.models |
        Where-Object {
            $_.model -eq "bge-m3" -or
            $_.name -eq "bge-m3"
        }

    if (-not $Bge) {

        Write-Host ""
        Write-Host "BGE-M3 absent d'Ollama." -ForegroundColor Yellow
        Write-Host "Installation : ollama pull bge-m3" -ForegroundColor White

        try {

            & ollama pull bge-m3

            if ($LASTEXITCODE -eq 0) {

                Result `
                    "BGE-M3 INSTALL" `
                    "PASS" `
                    "ollama pull bge-m3 terminé"

                $Tags = Invoke-RestMethod `
                    "$OllamaBase/api/tags"
            }
            else {

                Result `
                    "BGE-M3 INSTALL" `
                    "FAIL" `
                    "ollama pull bge-m3 exit code $LASTEXITCODE"
            }

        }
        catch {

            Result `
                "BGE-M3 INSTALL" `
                "FAIL" `
                $_.Exception.Message
        }

    }
    else {

        Result `
            "BGE-M3 INSTALL" `
            "PASS" `
            "bge-m3 déjà installé"
    }
}

# ============================================================
# P0 — TEST EMBEDDING BGE-M3
# ============================================================

$BgeInstalled = $false

if ($Tags) {

    $BgeInstalled = [bool](
        $Tags.models |
        Where-Object {
            $_.model -eq "bge-m3" -or
            $_.name -eq "bge-m3"
        }
    )
}

if ($BgeInstalled) {

    Write-Host ""
    Write-Host "Test réel embedding BGE-M3..." -ForegroundColor Cyan

    try {

        $EmbedBody = @{
            model = "bge-m3"
            input = "AMEN BGE M3 EMBEDDING VALIDATION"
        } | ConvertTo-Json -Depth 10

        $EmbedResult = Invoke-RestMethod `
            "$OllamaBase/api/embed" `
            -Method POST `
            -ContentType "application/json" `
            -Body $EmbedBody `
            -TimeoutSec 180

        $Vector = $EmbedResult.embeddings[0]

        if ($Vector) {

            $Dimension = $Vector.Count

            $Squares = 0.0

            foreach ($x in $Vector) {
                $Squares += ([double]$x * [double]$x)
            }

            $Norm = [Math]::Sqrt($Squares)

            Write-Host "Dimension : $Dimension"
            Write-Host "Norm      : $Norm"

            if (($Dimension -eq 1024) -and ($Norm -gt 0)) {

                Result `
                    "BGE-M3 REAL EMBEDDING" `
                    "PASS" `
                    "1024 dimensions, norme non nulle"

            }
            else {

                Result `
                    "BGE-M3 REAL EMBEDDING" `
                    "FAIL" `
                    "dimension=$Dimension norm=$Norm"
            }

        }
        else {

            Result `
                "BGE-M3 REAL EMBEDDING" `
                "FAIL" `
                "aucun vecteur retourné"
        }

    }
    catch {

        Result `
            "BGE-M3 REAL EMBEDDING" `
            "FAIL" `
            $_.Exception.Message
    }
}

# ============================================================
# P1 — RECHERCHE DU WORKER BGE-M3
# ============================================================

$BgeWorkers = Get-ChildItem `
    -Path $Root `
    -Recurse `
    -File `
    -Include "*bge*m3*.mjs","*bge*m3*.js","*embed*.mjs","*embed*.js" `
    -ErrorAction SilentlyContinue |
    Where-Object {
        $_.FullName -notmatch "\\node_modules\\"
    }

if ($BgeWorkers) {

    Write-Host ""
    Write-Host "=== Workers embedding détectés ===" -ForegroundColor Cyan

    foreach ($worker in $BgeWorkers) {

        Write-Host $worker.FullName

    }

    Result `
        "BGE WORKER DISCOVERY" `
        "PASS" `
        "$($BgeWorkers.Count) fichier(s) détecté(s)"

}
else {

    Result `
        "BGE WORKER DISCOVERY" `
        "NOT_AVAILABLE" `
        "aucun worker BGE-M3 détecté"
}

# ============================================================
# P1 — INSTALLATION DEPENDENCIES
# ============================================================

Write-Host ""
Write-Host "=== npm install ===" -ForegroundColor Cyan

try {

    npm install

    if ($LASTEXITCODE -eq 0) {

        Result `
            "NPM INSTALL" `
            "PASS" `
            "dépendances installées"

    }
    else {

        Result `
            "NPM INSTALL" `
            "FAIL" `
            "exit code $LASTEXITCODE"
    }

}
catch {

    Result `
        "NPM INSTALL" `
        "FAIL" `
        $_.Exception.Message
}

# ============================================================
# P1 — SCRIPTS REELS APRES npm install
# ============================================================

try {

    $package = Get-Content ".\package.json" -Raw |
        ConvertFrom-Json

    $RequiredScripts = @(
        "amen:llm:health",
        "amen:llm:test",
        "amen:embed-server",
        "amen:bge-m3",
        "amen:semantic:full",
        "amen:rag:e2e",
        "amen:llm:security",
        "amen:v329"
    )

    foreach ($name in $RequiredScripts) {

        $exists = $false

        if ($package.scripts) {

            $exists = [bool](
                $package.scripts.PSObject.Properties |
                Where-Object { $_.Name -eq $name }
            )
        }

        if ($exists) {

            Result `
                "SCRIPT $name" `
                "PASS" `
                "présent"

        }
        else {

            Result `
                "SCRIPT $name" `
                "NOT_AVAILABLE" `
                "absent"
        }
    }

}
catch {

    Result `
        "SCRIPT DISCOVERY" `
        "FAIL" `
        $_.Exception.Message
}

# ============================================================
# P1 — EXÉCUTION UNIQUEMENT DES SCRIPTS DISPONIBLES
# ============================================================

function RunIfAvailable {
    param(
        [string]$ScriptName
    )

    try {

        $pkg = Get-Content ".\package.json" -Raw |
            ConvertFrom-Json

        $exists = [bool](
            $pkg.scripts.PSObject.Properties |
            Where-Object { $_.Name -eq $ScriptName }
        )

        if (-not $exists) {

            Result `
                "RUN $ScriptName" `
                "NOT_AVAILABLE" `
                "script absent"

            return
        }

        Write-Host ""
        Write-Host "==================================================" -ForegroundColor Cyan
        Write-Host "npm run $ScriptName" -ForegroundColor Cyan
        Write-Host "==================================================" -ForegroundColor Cyan

        npm run $ScriptName

        if ($LASTEXITCODE -eq 0) {

            Result `
                "RUN $ScriptName" `
                "PASS" `
                "exit code 0"

        }
        else {

            Result `
                "RUN $ScriptName" `
                "FAIL" `
                "exit code $LASTEXITCODE"
        }

    }
    catch {

        Result `
            "RUN $ScriptName" `
            "FAIL" `
            $_.Exception.Message
    }
}

# LLM health
RunIfAvailable "amen:llm:health"

# LLM tests
RunIfAvailable "amen:llm:test"

# BGE-M3 FULL INDEX
#
# NE PAS LANCER si le worker n'existe pas.
#
# Cette protection évite de fabriquer une fausse indexation.
$BgeScriptExists = $false

try {

    $pkg = Get-Content ".\package.json" -Raw |
        ConvertFrom-Json

    $BgeScriptExists = [bool](
        $pkg.scripts.PSObject.Properties |
        Where-Object { $_.Name -eq "amen:bge-m3" }
    )

}
catch {}

if ($BgeScriptExists) {

    Write-Host ""
    Write-Host "==================================================" -ForegroundColor Cyan
    Write-Host "BGE-M3 FULL INDEX — 151542 CHUNKS ÉLIGIBLES" -ForegroundColor Cyan
    Write-Host "==================================================" -ForegroundColor Cyan

    npm run amen:bge-m3 -- --all

    if ($LASTEXITCODE -eq 0) {

        Result `
            "BGE-M3 FULL INDEX" `
            "PASS" `
            "worker terminé sans erreur"

    }
    else {

        Result `
            "BGE-M3 FULL INDEX" `
            "FAIL" `
            "exit code $LASTEXITCODE"
    }

}
else {

    Result `
        "BGE-M3 FULL INDEX" `
        "NOT_AVAILABLE" `
        "worker amen:bge-m3 absent localement"
}

# ============================================================
# P2 — SEMANTIC / RAG / SECURITY
# ============================================================

RunIfAvailable "amen:semantic:full"
RunIfAvailable "amen:rag:e2e"
RunIfAvailable "amen:llm:security"
RunIfAvailable "amen:v329"

# ============================================================
# RAPPORT FINAL
# ============================================================

$Pass = @(
    $Results |
    Where-Object { $_.status -eq "PASS" }
).Count

$Fail = @(
    $Results |
    Where-Object { $_.status -eq "FAIL" }
).Count

$NA = @(
    $Results |
    Where-Object { $_.status -eq "NOT_AVAILABLE" }
).Count

$NotVerified = @(
    $Results |
    Where-Object { $_.status -eq "NOT_VERIFIED" }
).Count

if ($Fail -gt 0) {

    $FinalStatus = "FAIL"

}
elseif (($NA -gt 0) -or ($NotVerified -gt 0)) {

    $FinalStatus = "DEGRADED"

}
else {

    $FinalStatus = "PASS"
}

$Final = [PSCustomObject]@{
    version = "AMEN-v330"
    timestamp = (Get-Date).ToString("o")
    project = $Root

    ollama = @{
        base_url = "http://127.0.0.1:11434"
        llm_model = "qwen3:8b"
        api_key = "local"
        note = "local only; not accessible from hosted Edge"
    }

    acceptance = @{
        pass = $Pass
        fail = $Fail
        not_available = $NA
        not_verified = $NotVerified
        final_status = $FinalStatus
    }

    results = $Results
}

$Final |
    ConvertTo-Json -Depth 12 |
    Set-Content `
        -Path $Report `
        -Encoding UTF8

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host " AMEN v330 — VERDICT LOCAL" -ForegroundColor Cyan
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "PASS          : $Pass"
Write-Host "FAIL          : $Fail"
Write-Host "NOT_AVAILABLE : $NA"
Write-Host "NOT_VERIFIED  : $NotVerified"
Write-Host "STATUS        : $FinalStatus"
Write-Host ""
Write-Host "REPORT : $Report"
Write-Host "============================================================" -ForegroundColor Cyan