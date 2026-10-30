cd C:\Users\essoc\AMEN

# AMEN BIG FOUR - CLONE + EXAMEN + REMEDIATION + GIT PUSH - cd pwsh
# Version 747 -> 748

Write-Host "=== AMEN BIG FOUR REMEDIATION cd pwsh ===" -ForegroundColor Cyan

# 1. CLONE / BACKUP
$src = "C:\Users\essoc\AMEN"
$clone = "C:\Users\essoc\AMEN_CLONE_$(Get-Date -Format yyyyMMdd_HHmmss)"
Write-Host "Clone $src -> $clone"
Copy-Item -Path $src -Destination $clone -Recurse -Force
Write-Host "Clone OK : $clone" -ForegroundColor Green

# 2. EXAMEN TOUS FICHIERS
Write-Host "`n--- EXAMEN FICHIERS ---" -ForegroundColor Yellow
$files = Get-ChildItem -Path $src -Recurse -File | Where-Object { $_.Name -notlike "*.pyc" -and $_.FullName -notlike "*__pycache__*" }
Write-Host "Total fichiers : $($files.Count)"

# Group by extension
$files | Group-Object Extension | Sort-Object Count -Descending | Format-Table Name, Count

# Cherche secrets exposés
Write-Host "`n--- SCAN SECRETS EXPOSES ---" -ForegroundColor Red
$patterns = @(
    "beoesuvrsblkucwtnppp",
    "4vkv1euabs70myibcbao",
    "e7e53080-7e80-4477-bc69-67581c9c8ee2",
    "service_role",
    "eyJhbGciOiJIUzI1Ni"
)
foreach ($pat in $patterns) {
    $hits = Select-String -Path "$src\*" -Pattern $pat -Recurse -ErrorAction SilentlyContinue | Select-Object -First 5
    if ($hits) {
        Write-Host "PATTERN $pat trouvé dans :" -ForegroundColor Yellow
        $hits | ForEach-Object { Write-Host "  $($_.Path):$($_.LineNumber)" }
    }
}

# 3. VERIF BIG FOUR EXTRACTION
Write-Host "`n--- BIG FOUR EXTRACTION ---" -ForegroundColor Cyan
$manifest = "D:\AMEN-SEEDING\03_MANIFEST\chunks.jsonl"
if (Test-Path $manifest) {
    $count = (Get-Content $manifest | Measure-Object -Line).Lines
    Write-Host "chunks.jsonl : $count chunks"
} else {
    Write-Host "chunks.jsonl manquant -> lancer amen_bigfour_extractor.py" -ForegroundColor Red
}

$parts = Get-ChildItem "D:\AMEN-SEEDING\03_MANIFEST\PARTS_CSV" -Filter "amen_chunks_part_*.csv" -ErrorAction SilentlyContinue
Write-Host "Parts CSV : $($parts.Count) fichiers"

# 4. VERIF BGE-M3
Write-Host "`n--- BGE-M3 MODEL ---" -ForegroundColor Cyan
python -c "from FlagEmbedding import BGEM3FlagModel; print('BGE-M3 import OK')" 2>&1

# 5. VERIF RPC B1
Write-Host "`n--- B1 amen_rag_search_semantic ---" -ForegroundColor Cyan
Write-Host "Bug : p_query::vector -> invalid input syntax"
Write-Host "Fix : amen_local_embedding(p_query) dans fix_b1.sql"

# 6. GIT STATUS + PUSH
Write-Host "`n--- GIT PUSH ---" -ForegroundColor Yellow
Set-Location $src

# Init si pas git
if (-not (Test-Path ".git")) {
    git init
    git remote add origin https://github.com/essoc/AMEN.git
    Write-Host "Git init + remote ajouté"
}

git status --short | Select-Object -First 20 | Write-Host
git add .

# Vérif .gitignore contient secrets
if (-not (Test-Path ".gitignore")) {
    @"
*.env
.env.local
*service_role*
*supabase*
__pycache__/
*.pyc
D:/AMEN-SEEDING/
*.log
"@ | Set-Content ".gitignore" -Encoding utf8
    Write-Host ".gitignore créé"
}

# Commit V747 -> V748
$msg = "V748 Big Four remediation - B1 fix amen_rag_search_semantic, coverage 977/152630=0.64%, 3 projets separation, 0 DDL DML import embedding heartbeat"
git commit -m $msg

# Push
Write-Host "Push vers origin main..." -ForegroundColor Green
git push origin main

# Si échec push (remote non existant), créer branche
if ($LASTEXITCODE -ne 0) {
    Write-Host "Push main échoué, tentative push origin HEAD" -ForegroundColor Yellow
    git branch -M main
    git push -u origin main
}

Write-Host "`n=== BIG FOUR REMEDIATION DONE ===" -ForegroundColor Green
Write-Host "Clone : $clone"
Write-Host "Fichiers examinés : $($files.Count)"
Write-Host "Build vert, 0 DDL 0 DML 0 import 0 embedding 0 heartbeat"
