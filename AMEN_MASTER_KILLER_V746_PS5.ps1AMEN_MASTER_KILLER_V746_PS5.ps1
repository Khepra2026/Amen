# AMEN MASTER KILLER V746 - PS5.1 COMPATIBLE - FIXED PATHS MONOREPO
param(
  [ValidateSet("Audit","AuditFixSafe")][string]$Mode = "Audit",
  [string]$ProjectRoot = (Get-Location).Path,
  [string]$ReportDir = ".\.amen-audit\V746"
)

$ErrorActionPreference = "Continue"
$Global:V = @{ Results=@(); Counters=@{ PASS=0; FAIL=0; PARTIAL=0; NOT_VERIFIED=0 }; Started=Get-Date }

function New-Result($id,$cat,$status,$ev,$fix){
  $r = New-Object PSObject -Property @{ id=$id; category=$cat; status=$status; evidence=$ev; remediation=$fix; time=Get-Date }
  $Global:V.Results += $r
  $Global:V.Counters[$status]++
  $c="Gray"; if($status -eq "PASS"){$c="Green"} elseif($status -eq "FAIL"){$c="Red"} elseif($status -eq "PARTIAL"){$c="Yellow"}
  Write-Host "[$status] $id :: $cat - $ev" -ForegroundColor $c
}

function Ensure{ New-Item -ItemType Directory -Force -Path $ReportDir | Out-Null; New-Item -ItemType Directory -Force -Path "$ReportDir\evidence" | Out-Null }

Ensure

# V746-01
Write-Host "`n=== V746-01 Monorepo ===" -ForegroundColor Cyan
$pkgs = Get-ChildItem $ProjectRoot -Recurse -Filter "package.json" | Where-Object { $_.FullName -notlike "*node_modules*" }
foreach($p in $pkgs){
  $txt = Get-Content $p.FullName -Raw -ErrorAction SilentlyContinue
  $hasTest = $txt -match '"test"\s*:'
  Write-Host "$($p.FullName) hasTest=$hasTest"
  if($hasTest){
    $m = [regex]::Match($txt,'"test"\s*:\s*"([^"]+)"')
    New-Result "V746-01-$($p.Directory.Name)" "Repo" "PASS" "package $($p.Directory.Name) test=$($m.Groups[1].Value)" "none" | Out-Null
  }
}

# V746-03 QA - VRAIS TESTS HORS node_modules
Write-Host "`n=== V746-03 QA Tests hors node_modules ===" -ForegroundColor Cyan
$realTests = Get-ChildItem $ProjectRoot -Recurse -Include "*.test.ts","*.test.tsx","*.spec.ts","*.spec.tsx" -ErrorAction SilentlyContinue | Where-Object { $_.FullName -notlike "*node_modules*" -and $_.FullName -notlike "*\.amen-audit*" }
$realTests | ForEach-Object { $_.FullName } | Out-File "$ReportDir\evidence\real_tests.txt" -Encoding utf8
if($realTests.Count -eq 0){
  New-Result "V746-03-02" "QA" "FAIL" "0 fichier de test reel hors node_modules - vitest existe mais ne decouvre rien" "creer tests dans amen-web/src" | Out-Null
} else {
  New-Result "V746-03-02" "QA" "PARTIAL" "$($realTests.Count) fichiers tests reels" "executer" | Out-Null
}

# Exec vitest dans amen-web
$amenWebPkg = "$ProjectRoot\amen-web"
if(Test-Path "$amenWebPkg\package.json"){
  Write-Host "Running vitest in amen-web..." -ForegroundColor Gray
  try {
    Push-Location $amenWebPkg
    cmd /c "npx vitest run --reporter=verbose 2>&1" | Out-File "$ProjectRoot\$ReportDir\evidence\vitest_amen-web.log" -Encoding utf8
    Pop-Location
    $log = Get-Content "$ProjectRoot\$ReportDir\evidence\vitest_amen-web.log" -Raw -ErrorAction SilentlyContinue
    $first = ($log -split "`n" | Select-Object -First 30) -join "`n"
    Write-Host $first
    if($log -match "No test files found" -or $log -match "0 passed"){
      New-Result "V746-03-03" "QA" "FAIL" "vitest run dans amen-web: aucun test decouvert (confirme QA-002)" "ajouter 70 tests" | Out-Null
    } else {
      New-Result "V746-03-03" "QA" "PASS" "vitest a decouvert des tests" "none" | Out-Null
    }
  } catch { Pop-Location; New-Result "V746-03-03" "QA" "NOT_VERIFIED" "exec vitest impossible" "none" | Out-Null }
}

# V746-08 HTML SINKS - CHERCHE VRAIS CHEMINS
Write-Host "`n=== V746-08 HTML 5 sinks - recherche etendue ===" -ForegroundColor Cyan
$searchRoots = @("$ProjectRoot\amen-web\src","$ProjectRoot\frontend\src","$ProjectRoot\src","$ProjectRoot\amen-web","$ProjectRoot\frontend")
$patterns = @(
  @{ id="editorialRender"; keywords=@("editorialRender","EditorialRender") },
  @{ id="revue/detail"; keywords=@("revue","Revue") },
  @{ id="corpus/detail"; keywords=@("corpus","Corpus") },
  @{ id="library/detail"; keywords=@("LibraryPage","library") },
  @{ id="publications/detail"; keywords=@("publications","Publications") }
)
foreach($pat in $patterns){
  $foundFiles = @()
  foreach($root in $searchRoots){
    if(-not (Test-Path $root)){ continue }
    try {
      $files = Get-ChildItem $root -Recurse -File -Include "*.tsx","*.ts" -ErrorAction SilentlyContinue | Where-Object { $_.FullName -notlike "*node_modules*" }
      foreach($f in $files){
        foreach($kw in $pat.keywords){
          if($f.Name -like "*$kw*" -or $f.FullName -like "*$kw*"){
            $foundFiles += $f
          }
        }
      }
    } catch {}
  }
  $uniq = $foundFiles | Sort-Object FullName -Unique | Select-Object -First 5
  if($uniq.Count -eq 0){
    New-Result "V746-08-$($pat.id)" "HTML/XSS" "NOT_VERIFIED" "Aucun fichier matche $($pat.id) dans amen-web/src, frontend/src" "fournir chemin exact" | Out-Null
  } else {
    foreach($f in $uniq){
      $c=""; try { $c = Get-Content $f.FullName -Raw -ErrorAction SilentlyContinue } catch {}
      $hasDanger = $c -match "dangerouslySetInnerHTML"
      $hasPurify = $c -match "DOMPurify|isomorphic-dompurify|sanitize"
      $hasHtml = $c -match "innerHTML|__html"
      $st="PASS"
      if($hasDanger -and -not $hasPurify){ $st="FAIL" }
      elseif($hasDanger -and $hasPurify){ $st="PARTIAL" }
      elseif($hasHtml){ $st="PARTIAL" }
      $ev="file=$($f.FullName.Substring($ProjectRoot.Length)); dangerous=$hasDanger; purify=$hasPurify; html=$hasHtml"
      $fix="Si FAIL: import DOMPurify from 'isomorphic-dompurify'; const clean=DOMPurify.sanitize(content,{ALLOWED_TAGS:['p','em','strong','a','ul','ol','li','h2','h3','blockquote'],ALLOWED_ATTR:['href','rel','target'],FORBID_ATTR:['style','on*']}); <div dangerouslySetInnerHTML={{__html:clean}} />"
      New-Result "V746-08-$($pat.id)" "HTML/XSS" $st $ev $fix | Out-Null
      try { $c | Out-File "$ReportDir\evidence\html_$($pat.id -replace '/','_')_$($f.BaseName).txt" -Encoding utf8 } catch {}
    }
  }
}

# V746-09 i18n
Write-Host "`n=== V746-09 i18n ===" -ForegroundColor Cyan
$localeDirs = Get-ChildItem $ProjectRoot -Recurse -Directory -Filter "locales" -ErrorAction SilentlyContinue | Where-Object { $_.FullName -notlike "*node_modules*" }
foreach($ld in $localeDirs){
  $jsons = Get-ChildItem $ld.FullName -Recurse -Filter "*.json" | Where-Object { $_.FullName -notlike "*node_modules*" }
  $locales = $jsons | ForEach-Object { 
    $rel = $_.FullName.Substring($ld.FullName.Length).Trim('\')
    $parts = $rel -split '\\'
    if($parts.Count -gt 1){ $parts[0] } else { "root" }
  } | Sort-Object -Unique
  New-Result "V746-09-loc-$($ld.FullName.Substring($ProjectRoot.Length))" "i18n" "PARTIAL" "locales dir $($ld.FullName) => $($jsons.Count) json, locales detectees: $($locales -join ',')" "auditer 9x8" | Out-Null
  $jsons | Select-Object FullName | Out-File "$ReportDir\evidence\i18n_$($ld.Parent.Name).txt" -Encoding utf8
}

# V746-14 Gate
$fail=$Global:V.Counters["FAIL"]; $pass=$Global:V.Counters["PASS"]; $partial=$Global:V.Counters["PARTIAL"]; $notv=$Global:V.Counters["NOT_VERIFIED"]
$verdict="NO_GO"
if($fail -eq 0 -and $notv -eq 0 -and $partial -lt 3){ $verdict="GO" }
New-Result "V746-14-GATE" "Gate" $verdict "PASS=$pass FAIL=$fail PARTIAL=$partial NOT_VERIFIED=$notv" "corriger FAIL" | Out-Null
$Global:V | ConvertTo-Json -Depth 8 | Out-File "$ReportDir\V746_report.json" -Encoding utf8
Write-Host "`n=== VERDICT $verdict === Rapport $ReportDir\V746_report.json" -ForegroundColor $(if($verdict -eq "NO_GO"){"Red"}else{"Green"})
