# AMEN - Master CD PWSH - Mise à jour C:\Users\essoc\AMEN avec dépôt GitHub
# Usage: pwsh -ExecutionPolicy Bypass -File .\AMEN_Update.ps1
# Ou: .\AMEN_Update.ps1 -Branch main -PushMasterPack

param(
    [string]$RepoPath = "C:\Users\essoc\AMEN",
    [string]$Branch = "main",
    [string]$Remote = "origin",
    [switch]$PushMasterPack,
    [string]$MasterPackSource = ""  # chemin vers AMEN_MasterPack_BigFour.json local si différent
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

Write-Host "=== AMEN BigFour - Master Update ===" -ForegroundColor Cyan
Write-Host "RepoPath: $RepoPath"
Write-Host "Branch: $Branch / Remote: $Remote"

# 1. Vérifier pwsh + git
if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    throw "git non trouvé dans PATH. Installe Git for Windows."
}

# 2. cd master
if (-not (Test-Path $RepoPath)) {
    Write-Host "Dossier $RepoPath introuvable, clone depuis Khepra2026/Amen..." -ForegroundColor Yellow
    $parent = Split-Path $RepoPath -Parent
    if (-not (Test-Path $parent)) { New-Item -ItemType Directory -Path $parent -Force | Out-Null }
    Set-Location $parent
    git clone https://github.com/Khepra2026/Amen.git (Split-Path $RepoPath -Leaf)
    Set-Location $RepoPath
} else {
    Set-Location $RepoPath
}

Write-Host "PWD: $(Get-Location)" -ForegroundColor Green

# 3. Vérifier que c'est bien un repo git
if (-not (Test-Path ".git")) {
    throw "$RepoPath n'est pas un dépôt git (.git manquant). Vérifie le chemin."
}

# 4. Vérifier remote
$remotes = git remote -v
Write-Host $remotes
if ($remotes -notmatch "Khepra2026/Amen") {
    Write-Host "Remote actuel ne pointe pas vers Khepra2026/Amen, ajout/vérification..." -ForegroundColor Yellow
    $existingOrigin = git remote get-url $Remote 2>$null
    if (-not $existingOrigin) {
        git remote add $Remote https://github.com/Khepra2026/Amen.git
    } else {
        Write-Host "Remote $Remote = $existingOrigin"
    }
}

# 5. Status avant
Write-Host "`n--- git status ---" -ForegroundColor Cyan
git status --short
Write-Host "`n--- git branch ---"
git branch --show-current
Write-Host "`n--- dernier commit ---"
git log -1 --oneline

# 6. Sauvegarde stash si modifications locales
$hasChanges = (git status --porcelain) -ne $null
if ($hasChanges) {
    Write-Host "`nModifications locales détectées, stash auto..." -ForegroundColor Yellow
    git stash push -m "auto-stash before master update $(Get-Date -Format 'yyyy-MM-dd_HHmmss')" --include-untracked
}

# 7. Fetch + pull
Write-Host "`n--- git fetch $Remote ---" -ForegroundColor Cyan
git fetch $Remote --prune

Write-Host "--- git checkout $Branch ---"
# essaie checkout, sinon crée depuis remote
$localBranchExists = git branch --list $Branch
if (-not $localBranchExists) {
    git checkout -b $Branch "$Remote/$Branch"
} else {
    git checkout $Branch
}

Write-Host "--- git pull --ff-only $Remote $Branch ---"
try {
    git pull --ff-only $Remote $Branch
} catch {
    Write-Host "Fast-forward impossible, merge nécessaire..." -ForegroundColor Yellow
    git pull $Remote $Branch
}

# 8. Submodules si présents
if (Test-Path ".gitmodules") {
    Write-Host "`n--- submodules update ---"
    git submodule sync
    git submodule update --init --recursive
}

# 9. Déployer Master Pack BigFour si présent dans dossier Downloads ou source fournie
$possibleSources = @(
    $MasterPackSource,
    "$env:USERPROFILE\Downloads\AMEN_MasterPack_BigFour.json",
    "$PSScriptRoot\AMEN_MasterPack_BigFour.json",
    "C:\Users\essoc\Downloads\AMEN_MasterPack_BigFour.json",
    ".\AMEN_MasterPack_BigFour.json"
) | Where-Object { $_ -and (Test-Path $_) } | Select-Object -Unique

if ($possibleSources) {
    $src = $possibleSources[0]
    Write-Host "`n--- Déploiement Master Pack trouvé: $src ---" -ForegroundColor Green
    $destDir = Join-Path $RepoPath "docs\BigFour"
    if (-not (Test-Path $destDir)) { New-Item -ItemType Directory -Path $destDir -Force | Out-Null }
    Copy-Item $src -Destination (Join-Path $destDir "AMEN_MasterPack_BigFour.json") -Force
    Write-Host "Copié vers $destDir\AMEN_MasterPack_BigFour.json"

    # aussi copier le md si trouvé
    $mdSrc = $src -replace "\.json$",".md"
    $mdCandidates = @($mdSrc, "$env:USERPROFILE\Downloads\AMEN_Investigation_Contradictoire_BigFour.md", "$PSScriptRoot\AMEN_Investigation_Contradictoire_BigFour.md") | Where-Object { Test-Path $_ }
    if ($mdCandidates) {
        Copy-Item $mdCandidates[0] -Destination (Join-Path $destDir "AMEN_Investigation_Contradictoire_BigFour.md") -Force
        Write-Host "Rapport MD copié."
    }
} else {
    Write-Host "`nAucun Master Pack JSON trouvé à déployer (optionnel). Place le fichier dans Downloads." -ForegroundColor DarkGray
}

# 10. Afficher état final
Write-Host "`n--- État final ---" -ForegroundColor Cyan
git status
git log -3 --oneline --graph --decorate

# 11. Option push si modifications master pack
if ($PushMasterPack) {
    Write-Host "`n--- Push Master Pack ---" -ForegroundColor Cyan
    git add docs\BigFour\AMEN_MasterPack_BigFour.json docs\BigFour\AMEN_Investigation_Contradictoire_BigFour.md 2>$null
    $staged = git diff --cached --name-only
    if ($staged) {
        git commit -m "chore(BigFour): master pack P0/P1 remediation full - $(Get-Date -Format 'yyyy-MM-dd')"
        git push $Remote $Branch
        Write-Host "Push effectué." -ForegroundColor Green
    } else {
        Write-Host "Rien à pousser."
    }
}

Write-Host "`n=== Update terminée - PWD: $(Get-Location) ===" -ForegroundColor Green
Write-Host "Commandes suivantes suggérées:"
Write-Host "  code .                # ouvrir dans VSCode"
Write-Host "  pwsh .\scripts\01_revoke_public.ps1  # exécuter fix sécurité (à créer depuis MasterPack)"
Write-Host "  git stash list        # voir stash sauvegardé si besoin"
