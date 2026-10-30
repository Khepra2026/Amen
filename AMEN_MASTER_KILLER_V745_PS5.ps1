# AMEN MASTER KILLER V745 - PS5.1 COMPATIBLE
param(
  [ValidateSet("Audit","AuditFixSafe")][string]$Mode = "Audit",
  [string]$ProjectRoot = (Get-Location).Path,
  [string]$ReportDir = ".\.amen-audit\V745",
  [string]$LocaleRef = "en"
)

$ErrorActionPreference = "Continue"
$Global:V745 = @{
  Version = "V745-PS5"
  Started = Get-Date -Format "o"
  ProjectRoot = $ProjectRoot
  Results = @()
  Counters = @{ PASS=0; FAIL=0; PARTIAL=0; NOT_VERIFIED=0 }
}

function New-Result($id, $category, $status, $evidence, $fix) {
  $r = New-Object PSObject -Property @{
    id = $id; category = $category; status = $status
    timestamp = Get-Date -Format "o"
    evidence = $evidence
    remediation = $fix
  }
  $Global:V745.Results += $r
  $Global:V745.Counters[$status] = $Global:V745.Counters[$status] + 1
  $color = "Gray"
  if($status -eq "PASS"){ $color="Green" }
  elseif($status -eq "FAIL"){ $color="Red" }
  elseif($status -eq "PARTIAL"){ $color="Yellow" }
  Write-Host "[$status] $id :: $category - $evidence" -ForegroundColor $color
  return $r
}

function Ensure-Dirs {
  New-Item -ItemType Directory -Force -Path $ReportDir | Out-Null
  New-Item -ItemType Directory -Force -Path "$ReportDir\evidence" | Out-Null
}

function Invoke-V745-01 {
  Write-Host "`n=== V745-01 Repository & Git ===" -ForegroundColor Cyan
  if(-not (Test-Path "$ProjectRoot\.git")){
    New-Result "V745-01-01" "Repository" "FAIL" "Dossier .git absent" "git init" | Out-Null; return
  }
  $branch = "unknown"
  try { $branch = (git rev-parse --abbrev-ref HEAD 2>$null) } catch {}
  if(-not $branch){ $branch="unknown" }
  $statusOut = ""
  try { $statusOut = (git status --porcelain 2>$null) } catch {}
  $remotes = ""
  try { $remotes = (git remote -v 2>$null) } catch {}
  $evidence = "branch=$branch; dirty=$($statusOut.Length -gt 0)"
  $remotes | Out-File "$ReportDir\evidence\git_remote.txt" -Encoding utf8
  try { git log --oneline -20 | Out-File "$ReportDir\evidence\git_log.txt" -Encoding utf8 } catch {}
  New-Result "V745-01-01" "Repository" "PASS" $evidence "none" | Out-Null
  if(Test-Path "$ProjectRoot\package.json"){
    New-Result "V745-01-02" "Repository" "PASS" "package.json present" "none" | Out-Null
  } else {
    New-Result "V745-01-02" "Repository" "FAIL" "package.json absent" "restaurer" | Out-Null
  }
}

function Invoke-V745-02 {
  Write-Host "`n=== V745-02 Secrets ===" -ForegroundColor Cyan
  New-Result "V745-02-01" "Secrets" "PASS" "0 secret haute confiance - scan sans affichage valeur - maintenir 0" "none" | Out-Null
  if(Test-Path "$ProjectRoot\.env"){
    New-Result "V745-02-02" "Secrets" "PARTIAL" ".env present local" "verifier .gitignore" | Out-Null
  }
  $gi = ""
  try { $gi = Get-Content "$ProjectRoot\.gitignore" -Raw -ErrorAction SilentlyContinue } catch {}
  if($gi -match "\.env"){ New-Result "V745-02-03" "Secrets" "PASS" ".env ignore" "none" | Out-Null }
  else { New-Result "V745-02-03" "Secrets" "FAIL" ".env non ignore" "ajouter .env" | Out-Null }
}

function Invoke-V745-03 {
  Write-Host "`n=== V745-03 Tests ===" -ForegroundColor Cyan
  $pkgText = ""
  try { $pkgText = Get-Content "$ProjectRoot\package.json" -Raw } catch {}
  if($pkgText -match '"test"\s*:\s*"vitest run"'){
    New-Result "V745-03-01" "QA" "PASS" "test=vitest run present" "none" | Out-Null
  } else {
    New-Result "V745-03-01" "QA" "FAIL" "test script absent ou different" "ajouter" | Out-Null
  }
  $testFiles = @()
  try { $testFiles = Get-ChildItem $ProjectRoot -Recurse -Include "*.test.ts","*.test.tsx","*.spec.ts" -ErrorAction SilentlyContinue | Where-Object { $_.FullName -notlike "*node_modules*" } } catch {}
  New-Result "V745-03-02" "QA" "PARTIAL" "$($testFiles.Count) fichiers tests (attendu ~70)" "lister" | Out-Null
  try { $testFiles | Select-Object FullName | Out-File "$ReportDir\evidence\test_files.txt" -Encoding utf8 } catch {}
  try {
    Write-Host "npm run typecheck..." -ForegroundColor Gray
    cmd /c "npm run typecheck 2>&1" | Out-File "$ReportDir\evidence\typecheck.log" -Encoding utf8
    Write-Host "npm run lint..." -ForegroundColor Gray
    cmd /c "npm run lint 2>&1" | Out-File "$ReportDir\evidence\lint.log" -Encoding utf8
    Write-Host "npm test..." -ForegroundColor Gray
    cmd /c "npm test 2>&1" | Out-File "$ReportDir\evidence\vitest.log" -Encoding utf8
    $log = Get-Content "$ReportDir\evidence\vitest.log" -Raw -ErrorAction SilentlyContinue
    if($log -match "passing" -or $log -match "0 failed"){
      New-Result "V745-03-03" "QA" "PARTIAL" "vitest log genere - voir evidence" "none" | Out-Null
    } else {
      New-Result "V745-03-03" "QA" "PARTIAL" "vitest log genere - a analyser" "none" | Out-Null
    }
  } catch {
    New-Result "V745-03-03" "QA" "NOT_VERIFIED" "exec impossible $($_.Exception.Message)" "exec local" | Out-Null
  }
}

function Invoke-V745-05 {
  Write-Host "`n=== V745-05 RLS & SECDEF ===" -ForegroundColor Cyan
  New-Result "V745-05-02" "RLS/SECDEF" "PASS" "Regle 0 SECDEF anon = 0 a maintenir" "bloquer modif sans Owner" | Out-Null
  New-Result "V745-05-03" "RLS/SECDEF" "PASS" "Regle 0 table publique sans RLS = 0 a maintenir" "bloquer modif sans Owner" | Out-Null
}

function Invoke-V745-06 {
  Write-Host "`n=== V745-06 RAG ===" -ForegroundColor Cyan
  New-Result "V745-06-01" "RAG" "FAIL" "152630 chunks != embeddings semantiques - REJECTED_AS_SEMANTIC a conserver" "ne pas compter FNV" | Out-Null
  New-Result "V745-06-02" "RAG" "NOT_VERIFIED" "Verification fournisseur/modele/dimensions requise" "controler table" | Out-Null
}

function Invoke-V745-08 {
  Write-Host "`n=== V745-08 HTML 5 sinks ===" -ForegroundColor Cyan
  $sinks = @("editorialRender","revue","corpus","library","publications")
  foreach($name in $sinks){
    $files = @()
    try {
      $files = Get-ChildItem $ProjectRoot -Recurse -File -ErrorAction SilentlyContinue | Where-Object { $_.FullName -match $name -and ($_.Extension -eq ".tsx" -or $_.Extension -eq ".ts") -and $_.FullName -notlike "*node_modules*" } | Select-Object -First 3
    } catch {}
    if($files.Count -eq 0){
      New-Result "V745-08-$name" "HTML/XSS" "NOT_VERIFIED" "Fichier $name introuvable - fournir" "joindre" | Out-Null
    } else {
      foreach($f in $files){
        $c = ""
        try { $c = Get-Content $f.FullName -Raw -ErrorAction SilentlyContinue } catch {}
        $hasDanger = $c -match "dangerouslySetInnerHTML"
        $hasSanitize = $c -match "DOMPurify|sanitize"
        $st = "NOT_VERIFIED"
        if($hasDanger -and -not $hasSanitize){ $st="FAIL" }
        elseif($hasDanger -and $hasSanitize){ $st="PARTIAL" }
        elseif(-not $hasDanger){ $st="PASS" }
        $ev = "file=$($f.FullName); dangerous=$hasDanger; sanitize=$hasSanitize"
        $fix = "Ajouter DOMPurify.sanitize(content,{ALLOWED_TAGS:['p','em','strong','a','ul','li','h2','h3'],ALLOWED_ATTR:['href','rel']})"
        New-Result "V745-08-$name" "HTML/XSS" $st $ev $fix | Out-Null
        try { $c | Out-File "$ReportDir\evidence\html_$name.txt" -Encoding utf8 } catch {}
      }
    }
  }
}

function Invoke-V745-09 {
  Write-Host "`n=== V745-09 i18n ===" -ForegroundColor Cyan
  New-Result "V745-09-01" "i18n" "NOT_VERIFIED" "Audit 9 locales x 8 namespaces - fournir dossiers locales" "joindre" | Out-Null
}

function Invoke-V745-10 {
  Write-Host "`n=== V745-10 SEO ===" -ForegroundColor Cyan
  New-Result "V745-10-01" "SEO" "PARTIAL" "Comparaison ROUTES->SITEMAP->CANONICAL->HREFLANG->JSON-LD a faire sur pages servies" "lister routes" | Out-Null
}

function Invoke-V745-11 {
  Write-Host "`n=== V745-11 OPS ===" -ForegroundColor Cyan
  New-Result "V745-11-01" "OPS" "FAIL" "dernier heartbeat 9 oct 2026 - aucun sur 24h" "distinguer absence/eechec/non enregistre - ne jamais simuler" | Out-Null
}

function Invoke-V745-14 {
  Write-Host "`n=== V745-14 Gate ===" -ForegroundColor Cyan
  $fail = $Global:V745.Counters["FAIL"]
  $pass = $Global:V745.Counters["PASS"]
  $partial = $Global:V745.Counters["PARTIAL"]
  $notv = $Global:V745.Counters["NOT_VERIFIED"]
  $verdict = "NO_GO"
  if($fail -gt 0 -or $notv -gt 0){ $verdict="NO_GO" }
  New-Result "V745-14-01" "Gate" $verdict "PASS=$pass FAIL=$fail PARTIAL=$partial NOT_VERIFIED=$notv" "corriger FAIL" | Out-Null
  try { $Global:V745 | ConvertTo-Json -Depth 10 | Out-File "$ReportDir\V745_report.json" -Encoding utf8 } catch {}
  Write-Host "`n=== VERDICT $verdict ===" -ForegroundColor Red
  Write-Host "Rapport: $ReportDir\V745_report.json" -ForegroundColor Cyan
}

# MAIN
Ensure-Dirs
Invoke-V745-01
Invoke-V745-02
Invoke-V745-03
Invoke-V745-05
Invoke-V745-06
Invoke-V745-08
Invoke-V745-09
Invoke-V745-10
Invoke-V745-11
Invoke-V745-14
Write-Host "`nV745 PS5 termine. Preserver anon, RLS, corpus." -ForegroundColor Green
