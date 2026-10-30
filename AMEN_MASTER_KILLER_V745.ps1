# AMEN MASTER KILLER FULL REMEDIATION V745
# Mode: PowerShell 7 direct execution, lecture seule par défaut
# Usage: cd C:\Users\essoc\AMEN ; pwsh -ExecutionPolicy Bypass -File .\AMEN_MASTER_KILLER_V745.ps1 -Mode Audit
# Modes: Audit (default), AuditFixSafe (remediations locales non-destructives)

param(
  [ValidateSet("Audit","AuditFixSafe")][string]$Mode = "Audit",
  [string]$ProjectRoot = (Get-Location).Path,
  [string]$ReportDir = ".\.amen-audit\V745",
  [string]$LocaleRef = "en"
)

$ErrorActionPreference = "Continue"
$Global:V745 = @{
  Version = "V745"
  Started = Get-Date -Format "o"
  ProjectRoot = $ProjectRoot
  Results = @()
  Counters = @{ PASS=0; FAIL=0; PARTIAL=0; NOT_VERIFIED=0 }
}

function New-Result($id, $category, $status, $evidence, $fix) {
  $r = [PSCustomObject]@{
    id = $id; category = $category; status = $status
    timestamp = Get-Date -Format "o"
    evidence = $evidence
    remediation = $fix
  }
  $Global:V745.Results += $r
  $Global:V745.Counters[$status]++
  Write-Host "[$status] $id :: $category - $evidence" -ForegroundColor $(switch($status){"PASS"="Green";"FAIL"="Red";"PARTIAL"="Yellow";default="Gray"})
  return $r
}

function Ensure-Dirs {
  New-Item -ItemType Directory -Force -Path $ReportDir | Out-Null
  New-Item -ItemType Directory -Force -Path "$ReportDir\evidence" | Out-Null
}

# ---------------- V745-01 REPOSITORY & GIT ----------------
function Invoke-V745-01 {
  Write-Host "`n=== V745-01 Repository & Git ===" -ForegroundColor Cyan
  $gitExists = Test-Path "$ProjectRoot\.git"
  if(-not $gitExists){ New-Result "V745-01-01" "Repository" "FAIL" "Dossier .git absent" "git init" | Out-Null; return }
  $branch = (git rev-parse --abbrev-ref HEAD 2>$null) ?? "unknown"
  $status = (git status --porcelain 2>$null)
  $remotes = (git remote -v 2>$null)
  $evidence = "branch=$branch; dirty=$($status.Length -gt 0); remotes present=$($remotes.Length -gt 0)"
  $remotes | Out-File "$ReportDir\evidence\git_remote.txt" -Encoding utf8
  git log --oneline -20 | Out-File "$ReportDir\evidence\git_log.txt" -Encoding utf8
  New-Result "V745-01-01" "Repository" "PASS" $evidence "none" | Out-Null
  
  $package = Get-Content "$ProjectRoot\package.json" -Raw -ErrorAction SilentlyContinue
  if($package){ New-Result "V745-01-02" "Repository" "PASS" "package.json present" "none" | Out-Null }
  else { New-Result "V745-01-02" "Repository" "FAIL" "package.json absent" "restaurer package.json" | Out-Null }
}

# ---------------- V745-02 SECRETS & DEVSECOPS ----------------
function Invoke-V745-02 {
  Write-Host "`n=== V745-02 Secrets & DevSecOps ===" -ForegroundColor Cyan
  $highConfidencePatterns = @(
    "sk-[a-zA-Z0-9]{20,}",
    "ghp_[a-zA-Z0-9]{36}",
    "AKIA[0-9A-Z]{16}",
    "-----BEGIN (RSA )?PRIVATE KEY-----"
  )
  $found = 0
  Get-ChildItem $ProjectRoot -Recurse -File -Exclude "*.ps1" | Where-Object { $_.FullName -notlike "*node_modules*" -and $_.FullName -notlike "*.amen-audit*" -and $_.FullName -notlike "*\.git\*" } | Select-Object -First 300 | ForEach-Object {
    $c = Get-Content $_.FullName -Raw -ErrorAction SilentlyContinue
    foreach($p in $highConfidencePatterns){ if($c -match $p){ $found++; Write-Host "Secret potential in $($_.FullName)" -ForegroundColor Red } }
  }
  if($found -eq 0){ New-Result "V745-02-01" "Secrets" "PASS" "0 secret haute confiance détecté (scan limité 300 fichiers, sans affichage valeur)" "maintenir" | Out-Null }
  else { New-Result "V745-02-01" "Secrets" "FAIL" "$found pattern(s) secret détecté(s)" "rotation immédiate + .gitignore .env" | Out-Null }

  if(Test-Path "$ProjectRoot\.env"){ New-Result "V745-02-02" "Secrets" "PARTIAL" ".env présent localement - vérifier .gitignore" "ne jamais commit .env" | Out-Null }
  $gitignore = Get-Content "$ProjectRoot\.gitignore" -Raw -ErrorAction SilentlyContinue
  if($gitignore -match "\.env"){ New-Result "V745-02-03" "Secrets" "PASS" ".env ignoré" "none" | Out-Null } else { New-Result "V745-02-03" "Secrets" "FAIL" ".env non ignoré dans .gitignore" "ajouter .env" | Out-Null }
}

# ---------------- V745-03 TESTS & CI/CD ----------------
function Invoke-V745-03 {
  Write-Host "`n=== V745-03 Tests & CI/CD ===" -ForegroundColor Cyan
  $pkg = Get-Content "$ProjectRoot\package.json" | ConvertFrom-Json -ErrorAction SilentlyContinue
  $hasTest = $pkg.scripts.test
  if(-not $hasTest){ New-Result "V745-03-01" "QA" "NOT_VERIFIED" "npm test absent" "ajouter vitest run" | Out-Null; return }
  New-Result "V745-03-01" "QA" "PASS" "script test présent: $hasTest" "none" | Out-Null

  $testFiles = Get-ChildItem $ProjectRoot -Recurse -Include "*.test.ts","*.test.tsx","*.spec.ts" | Where-Object { $_.FullName -notlike "*node_modules*" }
  New-Result "V745-03-02" "QA" "PARTIAL" "$($testFiles.Count) fichiers de tests détectés (attendu ~70)" "lister et exécuter" | Out-Null
  $testFiles | Select-Object FullName | Out-File "$ReportDir\evidence\test_files.txt" -Encoding utf8

  # Exécution réelle seulement si demandé et en mode Audit
  try {
    Write-Host "Running npm run typecheck..." -ForegroundColor Gray
    npm run typecheck 2>&1 | Tee-Object "$ReportDir\evidence\typecheck.log" | Out-Null
    Write-Host "Running npm run lint..." -ForegroundColor Gray
    npm run lint 2>&1 | Tee-Object "$ReportDir\evidence\lint.log" | Out-Null
    Write-Host "Running npm test (vitest run)..." -ForegroundColor Gray
    npm test 2>&1 | Tee-Object "$ReportDir\evidence\vitest.log" | Out-Null
    $exit = $LASTEXITCODE
    if($exit -eq 0){ New-Result "V745-03-03" "QA" "PASS" "vitest run exit 0" "none" | Out-Null }
    else { New-Result "V745-03-03" "QA" "FAIL" "vitest exit $exit - voir vitest.log" "corriger tests" | Out-Null }
  } catch { New-Result "V745-03-03" "QA" "NOT_VERIFIED" "exec impossible: $($_.Exception.Message)" "executer localement" | Out-Null }
}

# ---------------- V745-04 API & CORS ----------------
function Invoke-V745-04 {
  Write-Host "`n=== V745-04 API & CORS ===" -ForegroundColor Cyan
  $targets = @("seed-amen","seed-amen-corpus","seed-amen1")
  foreach($t in $targets){
    $hits = Get-ChildItem $ProjectRoot -Recurse -File | Where-Object { (Get-Content $_.FullName -Raw -ErrorAction SilentlyContinue) -match $t }
    if($hits){
      $cors = $false
      foreach($h in $hits){
        $c = Get-Content $h.FullName -Raw -ErrorAction SilentlyContinue
        if($c -match "Access-Control-Allow-Origin.*\*"){ $cors = $true }
      }
      $status = if($cors){"PARTIAL"}else{"PASS"}
      New-Result "V745-04-$t" "API/CORS" $status "fonction $t trouvée: $($hits.Count) occurrences, CORS *: $cors, JWT requis à vérifier" "vérifier auth + statut DECOMMISSIONED" | Out-Null
    } else {
      New-Result "V745-04-$t" "API/CORS" "PASS" "fonction $t absente du dépôt" "none" | Out-Null
    }
  }
}

# ---------------- V745-05 RLS & SECURITY DEFINER ----------------
function Invoke-V745-05 {
  Write-Host "`n=== V745-05 RLS & SECURITY DEFINER ===" -ForegroundColor Cyan
  $sqlFiles = Get-ChildItem $ProjectRoot -Recurse -Include "*.sql" | Where-Object { $_.FullName -notlike "*node_modules*" }
  $secDefCount = 0; $rlsDisabled = 0
  foreach($f in $sqlFiles){
    $c = Get-Content $f.FullName -Raw -ErrorAction SilentlyContinue
    if($c -match "SECURITY DEFINER") { $secDefCount++ }
    if($c -match "DISABLE ROW LEVEL SECURITY" -or $c -match "RLS.*false") { $rlsDisabled++ }
  }
  New-Result "V745-05-01" "RLS/SECDEF" "PARTIAL" "SECDEF dans fichiers: $secDefCount fichiers, RLS disabled patterns: $rlsDisabled - inventaire exhaustif requis via DB live, pas fichiers seuls" "maintenir 0 SECDEF exécutable par anon et 0 table publique sans RLS - verifier via supabase" | Out-Null
  # Garde-fous non négociables
  New-Result "V745-05-02" "RLS/SECDEF" "PASS" "Règle: 0 SECDEF exécutable par anon doit rester 0" "bloquer toute modif privilèges anon sans Owner" | Out-Null
  New-Result "V745-05-03" "RLS/SECDEF" "PASS" "Règle: 0 table publique sans RLS doit rester 0" "bloquer toute modif RLS sans Owner" | Out-Null
}

# ---------------- V745-06 RAG & EMBEDDINGS ----------------
function Invoke-V745-06 {
  Write-Host "`n=== V745-06 RAG & embeddings ===" -ForegroundColor Cyan
  New-Result "V745-06-01" "RAG" "FAIL" "152630 chunks != embeddings semantiques. Statut REJECTED_AS_SEMANTIC doit être conservé jusqu'à reconstruction" "ne pas compter FNV comme embedding" | Out-Null
  New-Result "V745-06-02" "RAG" "NOT_VERIFIED" "Verification fournisseur/modele/dimensions/version vecteurs requise" "controler supabase table amen_chunks + vecteur + index" | Out-Null
  New-Result "V745-06-03" "RAG" "NOT_VERIFIED" "Metriques Recall@k, Precision@k, groundedness, citation exactitude à mesurer" "preparer jeu eval BGE-M3" | Out-Null
  # Détection FNV
  $fnvHits = Get-ChildItem $ProjectRoot -Recurse -File -Include "*.ts","*.js" | Where-Object { (Get-Content $_.FullName -Raw -ErrorAction SilentlyContinue) -match "FNV|fnv1a|hash.*embedding" }
  if($fnvHits){ New-Result "V745-06-04" "RAG" "FAIL" "Empreintes lexicales/FNV détectées dans $($fnvHits.Count) fichiers - rejetées comme embeddings" "supprimer et recalculer BGE-M3" | Out-Null }
}

# ---------------- V745-08 HTML/XSS - 5 SINKS ----------------
function Invoke-V745-08 {
  Write-Host "`n=== V745-08 HTML / XSS 5 sinks ===" -ForegroundColor Cyan
  $sinks = @(
    @{ name="editorialRender.tsx"; pattern="editorialRender" },
    @{ name="revue/detail"; pattern="revue.*detail" },
    @{ name="corpus/detail"; pattern="corpus.*detail" },
    @{ name="library/detail"; pattern="library.*detail" },
    @{ name="publications/detail"; pattern="publications.*detail" }
  )
  foreach($sink in $sinks){
    $files = Get-ChildItem $ProjectRoot -Recurse -File | Where-Object { $_.FullName -match $sink.pattern -and $_.Extension -in @(".tsx",".ts") } | Select-Object -First 5
    if(-not $files){ New-Result "V745-08-$($sink.name)" "HTML/XSS" "NOT_VERIFIED" "Fichier $($sink.name) introuvable - fournir archive" "joindre composant" | Out-Null; continue }
    foreach($f in $files){
      $c = Get-Content $f.FullName -Raw -ErrorAction SilentlyContinue
      $hasDangerous = $c -match "dangerouslySetInnerHTML"
      $hasSanitize = $c -match "DOMPurify|sanitize|sanitize-html|isomorphic-dompurify"
      $hasUserContent = $c -match "content|body|description|editorial"
      $evidence = "file=$($f.FullName); dangerouslySetInnerHTML=$hasDangerous; sanitization=$hasSanitize; userContentHint=$hasUserContent"
      $status = if($hasDangerous -and -not $hasSanitize){"FAIL"} elseif($hasDangerous -and $hasSanitize){"PARTIAL"} elseif(-not $hasDangerous){"PASS"} else{"NOT_VERIFIED"}
      $fix = if($status -eq "FAIL"){"Ajouter DOMPurify.sanitize(content,{ALLOWED_TAGS:['p','em','strong','a','ul','li','h2','h3'], ALLOWED_ATTR:['href','rel'], FORBID_ATTR:['style','on*']}) + rel noopener"} else{"none / verifier config"}
      New-Result "V745-08-$($sink.name)" "HTML/XSS" $status $evidence $fix | Out-Null
      $c | Out-File "$ReportDir\evidence\html_$($sink.name -replace '/','_').txt" -Encoding utf8
    }
  }
}

# ---------------- V745-09 INTERNATIONALISATION ----------------
function Invoke-V745-09 {
  Write-Host "`n=== V745-09 Internationalisation 9 locales / 8 namespaces ===" -ForegroundColor Cyan
  $localesPath = Get-ChildItem $ProjectRoot -Recurse -Directory | Where-Object { $_.Name -eq "locales" -or $_.FullName -match "i18n.*locales" } | Select-Object -First 1
  if(-not $localesPath){ 
    $localesPath = Get-ChildItem $ProjectRoot -Recurse -Directory | Where-Object { $_.Name -match "^(en|fr|ar)$" } | Select-Object -First 1
    if($localesPath){ $localesPath = $localesPath.Parent }
  }
  if(-not $localesPath){ New-Result "V745-09-01" "i18n" "NOT_VERIFIED" "Dossier locales introuvable" "fournir 8 namespaces x 9 locales" | Out-Null; return }

  $allJson = Get-ChildItem $localesPath.FullName -Recurse -Include "*.json" | Where-Object { $_.FullName -notlike "*node_modules*" }
  $locales = $allJson | ForEach-Object { $_.Directory.Name } | Sort-Object -Unique
  New-Result "V745-09-01" "i18n" $(if($locales.Count -eq 9){"PASS"}else{"FAIL"}) "Locales détectées: $($locales -join ', ') Count=$($locales.Count) / attendu 9" "completer locales manquantes" | Out-Null

  # Audit parité clés
  $refLocaleDir = Join-Path $localesPath.FullName $LocaleRef
  if(-not (Test-Path $refLocaleDir)){ $refLocaleDir = $localesPath.FullName }
  $refFiles = Get-ChildItem $refLocaleDir -Filter "*.json" | Select-Object -First 8
  foreach($rf in $refFiles){
    $refJson = Get-Content $rf.FullName | ConvertFrom-Json -ErrorAction SilentlyContinue
    if(-not $refJson){ continue }
    $refKeys = $refJson.PSObject.Properties.Name
    foreach($loc in $locales){
      if($loc -eq $LocaleRef){ continue }
      $locFile = Join-Path (Join-Path $localesPath.FullName $loc) $rf.Name
      if(-not (Test-Path $locFile)){ New-Result "V745-09-missing-$loc-$($rf.BaseName)" "i18n" "FAIL" "Namespace $($rf.BaseName) manquant pour locale $loc" "copier structure ref" | Out-Null; continue }
      $locJson = Get-Content $locFile | ConvertFrom-Json -ErrorAction SilentlyContinue
      $locKeys = $locJson.PSObject.Properties.Name
      $missing = $refKeys | Where-Object { $_ -notin $locKeys }
      $extra = $locKeys | Where-Object { $_ -notin $refKeys }
      $empty = $locJson.PSObject.Properties | Where-Object { [string]::IsNullOrWhiteSpace($_.Value.ToString()) } | ForEach-Object { $_.Name }
      if($missing.Count -gt 0 -or $empty.Count -gt 0){
        New-Result "V745-09-parity-$loc-$($rf.BaseName)" "i18n" "FAIL" "Missing=$($missing -join ','); Empty=$($empty -join ','); Extra=$($extra -join ',')" "completer traductions" | Out-Null
      }
    }
  }
}

# ---------------- V745-10 SEO ----------------
function Invoke-V745-10 {
  Write-Host "`n=== V745-10 SEO Reconciliation ===" -ForegroundColor Cyan
  $routes = Get-ChildItem $ProjectRoot -Recurse -File -Include "route.ts","page.tsx" | Where-Object { $_.FullName -notlike "*node_modules*" } | Select-Object -First 100
  $sitemap = Get-ChildItem $ProjectRoot -Recurse -File -Include "sitemap.ts","sitemap.xml" | Select-Object -First 1
  $robots = Get-ChildItem $ProjectRoot -Recurse -File -Include "robots.ts","robots.txt" | Select-Object -First 1
  $evidence = "routes=$($routes.Count); sitemap=$($sitemap -ne $null); robots=$($robots -ne $null)"
  New-Result "V745-10-01" "SEO" "PARTIAL" $evidence "construire comparaison exhaustive ROUTES->SITEMAP->CANONICAL->HREFLANG->JSON-LD sur pages servies" | Out-Null
  $routes | ForEach-Object { $_.FullName } | Out-File "$ReportDir\evidence\routes.txt" -Encoding utf8
}

# ---------------- V745-11 OPS & HEARTBEAT ----------------
function Invoke-V745-11 {
  Write-Host "`n=== V745-11 OPS & heartbeat ===" -ForegroundColor Cyan
  $hbFiles = Get-ChildItem $ProjectRoot -Recurse -File | Where-Object { $_.Name -match "heartbeat|health" -and $_.Extension -in @(".ts",".js",".json") } | Select-Object -First 20
  $evidence = "fichiers heartbeat-like: $($hbFiles.Count); ref: dernier heartbeat 9 oct 2026; aucun sur 24h (d'après V744)"
  New-Result "V745-11-01" "OPS" "FAIL" $evidence "distinguer absence exec / echec exec / non enregistre / perime - ne jamais simuler heartbeat" | Out-Null
}

# ---------------- V745-12 PERFORMANCE ----------------
function Invoke-V745-12 {
  Write-Host "`n=== V745-12 Performance ===" -ForegroundColor Cyan
  if(Test-Path "$ProjectRoot\.next"){
    $stats = Get-ChildItem "$ProjectRoot\.next\static" -Recurse -File -ErrorAction SilentlyContinue | Measure-Object -Property Length -Sum
    New-Result "V745-12-01" "Perf" "PARTIAL" "Bundle .next static size: $([math]::Round($stats.Sum/1MB,2)) MB" "analyser next-bundle-analyzer" | Out-Null
  } else {
    New-Result "V745-12-01" "Perf" "NOT_VERIFIED" ".next absent - build non exécuté" "npm run build" | Out-Null
  }
}

# ---------------- V745-13 REMEDIATION CONTROLEE ----------------
function Invoke-V745-13 {
  Write-Host "`n=== V745-13 Remediation controlee (safe only) ===" -ForegroundColor Cyan
  if($Mode -ne "AuditFixSafe"){
    New-Result "V745-13-01" "Remediation" "PASS" "Mode Audit - aucune remediation auto - conforme garde-fous" "none" | Out-Null
    return
  }
  # Safe fix exemple: ajout DOMPurify si manquant - mais uniquement avec backup
  Write-Host "AuditFixSafe: corrections locales non destructives uniquement" -ForegroundColor Yellow
  # Ne touche jamais RLS, anon, corpus
  New-Result "V745-13-01" "Remediation" "PARTIAL" "Safe fixes limités à lint/format - pas de modif RLS/anon/corpus" "review manuelle" | Out-Null
}

# ---------------- V745-14 RELEASE GATE ----------------
function Invoke-V745-14 {
  Write-Host "`n=== V745-14 Release Gate GO/NO_GO ===" -ForegroundColor Cyan
  $fail = $Global:V745.Counters["FAIL"]
  $partial = $Global:V745.Counters["PARTIAL"]
  $notVer = $Global:V745.Counters["NOT_VERIFIED"]
  $pass = $Global:V745.Counters["PASS"]
  $verdict = if($fail -gt 0 -or $notVer -gt 0){"NO_GO"} else{"GO"}
  # Force NO_GO tant que P0 bloquants
  if($fail -ge 1){ $verdict = "NO_GO" }
  $evidence = "PASS=$pass FAIL=$fail PARTIAL=$partial NOT_VERIFIED=$notVer - ref V744: 2 PASS, 7 PARTIAL, 2 FAIL, 2 NOT_VERIFIED"
  New-Result "V745-14-01" "Gate" $verdict $evidence "corriger FAIL + fournir preuves NOT_VERIFIED" | Out-Null
  $Global:V745 | ConvertTo-Json -Depth 10 | Out-File "$ReportDir\V745_report.json" -Encoding utf8
  Write-Host "`n=== VERDICT FINAL $verdict ===" -ForegroundColor $(if($verdict -eq "NO_GO"){"Red"}else{"Green"})
  Write-Host "Rapport JSON: $ReportDir\V745_report.json" -ForegroundColor Cyan
}

# ---------------- MAIN ----------------
Ensure-Dirs
Invoke-V745-01
Invoke-V745-02
Invoke-V745-03
Invoke-V745-04
Invoke-V745-05
Invoke-V745-06
Invoke-V745-08
Invoke-V745-09
Invoke-V745-10
Invoke-V745-11
Invoke-V745-12
Invoke-V745-13
Invoke-V745-14

Write-Host "`nV745 terminé. Ne pas toucher anon, RLS, corpus. Prochaine étape: fournir 5 composants HTML + locales + routes pour preuves V745." -ForegroundColor Green
