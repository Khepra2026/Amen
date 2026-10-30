# MASTER_COLLECTE_RUN.ps1 - V581 - Collecte AUTO tous secrets + cd + pwsh
# Fix: SOURCE_URL vide à 152600 + COLLECTE_AUTO not recognized

$ErrorActionPreference="Continue"
$Root="C:\Users\essoc\AMEN"
Set-Location $Root
Write-Host "=== MASTER COLLECTE AUTO V581 ===" $Root -ForegroundColor Cyan

function Clean($v){ if(-not $v){return ""}; $v=$v.ToString().Trim(); $v=$v -replace '^["'']+|["'']+$',''; $v=$v -replace '\s+',''; return $v }

# 1. SCAN RECURSIF DE TOUS LES.env DE L'USER POUR TROUVER SOURCE
Write-Host "`n[1] Scan C:\Users\essoc pour.env contenant supabase..." -ForegroundColor Yellow
$found = @{}
Get-ChildItem -Path "C:\Users\essoc" -Filter ".env*" -File -Recurse -ErrorAction SilentlyContinue -Depth 4 | ForEach-Object {
  try{
    $c=Get-Content $_.FullName -Raw -ErrorAction SilentlyContinue
    if($c -match "supabase\.co"){
      $urls=[regex]::Matches($c,'https://[a-z0-9\-]+\.supabase\.co')
      foreach($u in $urls){
        if($u.Value -ne "https://beoesuvrsblkucwtnppp.supabase.co"){
          $found['SOURCE_URL']=$u.Value
          Write-Host " -> SOURCE candidate dans $($_.FullName): $($u.Value)" -ForegroundColor Green
        }
      }
      $keys=[regex]::Matches($c,'eyJ[a-zA-Z0-9\-_\.]+\.[a-zA-Z0-9\-_\.]+\.[a-zA-Z0-9\-_\.]+')
      foreach($k in $keys){ if($k.Value.Length -gt 200){ $found['SOURCE_KEY']=$k.Value; Write-Host " -> KEY candidate dans $($_.FullName): $($k.Value.Substring(0,20))..." } }
    }
  }catch{}
}

# 2. Collecte depuis env actuels +.env locaux
$envFiles=@(".env",".env.local",".env.production","env.ps1",".env.template")
foreach($f in $envFiles){
  if(Test-Path (Join-Path $Root $f)){
    Get-Content (Join-Path $Root $f) | ForEach-Object {
      $l=$_.Trim(); if($l -and!$l.StartsWith('#') -and $l.Contains('=')){
        $p=$l -split '=',2; $k=$p[0].Trim(); $v=Clean $p[1]
        if($k -match "SOURCE_URL|SUPABASE_URL" -and $v -match "supabase\.co" -and $v -ne "https://beoesuvrsblkucwtnppp.supabase.co"){ $found['SOURCE_URL']=$v }
        if($k -match "SOURCE.*KEY|SERVICE.*KEY" -and $v.StartsWith('eyJ') -and $v.Length -gt 200){ if($v.Length -gt ($found['SOURCE_KEY']?.Length??0)){ $found['SOURCE_KEY']=$v } }
        if($k -match "TARGET.*KEY" -and $v.StartsWith('eyJ')){ $found['TARGET_KEY']=$v }
      }
    }
  }
}
# aussi $env en cours
if($env:AMEN_SOURCE_URL){ $found['SOURCE_URL']=Clean $env:AMEN_SOURCE_URL }
if($env:AMEN_SOURCE_SERVICE_KEY){ $found['SOURCE_KEY']=Clean $env:AMEN_SOURCE_SERVICE_KEY }
if($env:AMEN_TARGET_SERVICE_ROLE_KEY){ $found['TARGET_KEY']=Clean $env:AMEN_TARGET_SERVICE_ROLE_KEY }

$TARGET_URL="https://beoesuvrsblkucwtnppp.supabase.co"
$TARGET_KEY=$found['TARGET_KEY']
$SOURCE_URL=$found['SOURCE_URL']
$SOURCE_KEY=$found['SOURCE_KEY']

Write-Host "`n[2] VALIDATION" -ForegroundColor Cyan
Write-Host "TARGET_URL: $TARGET_URL"
Write-Host "TARGET_KEY: $($TARGET_KEY?.Length) chars $(if($TARGET_KEY?.StartsWith('eyJ')){'OK'}else{'MANQUE'})"
Write-Host "SOURCE_URL: $SOURCE_URL $(if($SOURCE_URL){'OK'}else{'VIDE - ton bug 152600'})"
Write-Host "SOURCE_KEY: $($SOURCE_KEY?.Length) chars $(if($SOURCE_KEY?.StartsWith('eyJ')){'OK'}else{'MANQUE'})"

if(-not $SOURCE_URL -or -not $SOURCE_KEY){
  Write-Host "`n⛔ SOURCE non trouve automatiquement" -ForegroundColor Red
  Write-Host "Entre manuellement (une fois):"
  if(-not $SOURCE_URL){ $SOURCE_URL=Clean (Read-Host "SOURCE_URL https://xxx.supabase.co") }
  if(-not $SOURCE_KEY){ $SOURCE_KEY=Clean (Read-Host "SOURCE_KEY eyJ...") }
}

# 3. Ecrit.env propre SANS GUILLEMETS
@"
AMEN_TARGET_URL=$TARGET_URL
AMEN_TARGET_SERVICE_ROLE_KEY=$TARGET_KEY
AMEN_SOURCE_URL=$SOURCE_URL
AMEN_SOURCE_SERVICE_KEY=$SOURCE_KEY
"@ | Set-Content "$Root\.env" -Encoding UTF8
@"
`$env:AMEN_TARGET_URL="$TARGET_URL"
`$env:AMEN_TARGET_SERVICE_ROLE_KEY="$TARGET_KEY"
`$env:AMEN_SOURCE_URL="$SOURCE_URL"
`$env:AMEN_SOURCE_SERVICE_KEY="$SOURCE_KEY"
Write-Host "ENV charge" -ForegroundColor Green
"@ | Set-Content "$Root\env.ps1" -Encoding UTF8
$env:AMEN_TARGET_URL=$TARGET_URL; $env:AMEN_TARGET_SERVICE_ROLE_KEY=$TARGET_KEY; $env:AMEN_SOURCE_URL=$SOURCE_URL; $env:AMEN_SOURCE_SERVICE_KEY=$SOURCE_KEY
Write-Host ".env et env.ps1 ecrits" -ForegroundColor Green

# 4. Recree import-real.mjs FIX Invalid supabaseUrl
$js=@'
import { createClient } from '@supabase/supabase-js'
function clean(v){ return (v||'').toString().trim().replace(/^["']+|["']+$/g,'').replace(/\s+/g,'') }
const TARGET_URL=clean(process.env.AMEN_TARGET_URL); const TARGET_KEY=clean(process.env.AMEN_TARGET_SERVICE_ROLE_KEY)
const SOURCE_URL=clean(process.env.AMEN_SOURCE_URL); const SOURCE_KEY=clean(process.env.AMEN_SOURCE_SERVICE_KEY)
if(!TARGET_URL.startsWith('https://')||!SOURCE_URL.startsWith('https://')){ console.error('URL invalide', {TARGET_URL,SOURCE_URL}); process.exit(1) }
const target=createClient(TARGET_URL,TARGET_KEY,{auth:{persistSession:false}})
const source=createClient(SOURCE_URL,SOURCE_KEY,{auth:{persistSession:false}})
let offset=parseInt(process.env.OFFSET||'0')
console.log(`=== OFFSET ${offset} / 152630 === TARGET ${TARGET_URL} SOURCE ${SOURCE_URL}`)
const {data,error}=await source.from('amen_chunks').select('chunk_id,document_id,chunk_index,content,metadata,page,token_count,embedding,embedding_semantic,content_hash').range(offset,offset+199)
if(error){console.error('SOURCE ERR',error);process.exit(1)}
if(!data||data.length===0){console.log('FINI');process.exit(0)}
console.log(`Fetched ${data.length} vec len ${data[0]?.embedding?.length}`)
const toUpsert=data.map(r=>({chunk_id:r.chunk_id,document_id:r.document_id,chunk_index:r.chunk_index,content:r.content,metadata:r.metadata||{},page:r.page,token_count:r.token_count,content_hash:r.content_hash||null,embedding:r.embedding,embedding_semantic:r.embedding_semantic||r.embedding,embedding_status:'COMPLETED'}))
const {error:insErr}=await target.from('amen_chunks').upsert(toUpsert,{onConflict:'chunk_id'})
if(insErr){console.error('UPSERT ERR',insErr);process.exit(1)}
console.log(`✅ Upserted ${toUpsert.length}`)
'@
Set-Content "$Root\import-real.mjs" -Value $js -Encoding UTF8
Copy-Item "$Root\import-real.mjs" "$Root\amen-migrate-chunks.mjs" -Force
Write-Host "import-real.mjs corrige" -ForegroundColor Green

# 5. BOUCLE FINALE 152600 -> 152630
Write-Host "`n[3] MIGRATION FINALE" -ForegroundColor Cyan
# recupere count actuel target pour reprise
$cnt=node -e "import('@supabase/supabase-js').then(async m=>{const c=m.createClient(process.env.AMEN_TARGET_URL,process.env.AMEN_TARGET_SERVICE_ROLE_KEY);const {count}=await c.from('amen_chunks').select('*',{count:'exact',head:true});console.log(count)})"
$start=[int]$cnt
if($start -lt 152600){ $start=152600 }
Write-Host "Reprise depuis $start" -ForegroundColor Yellow

for($i=$start; $i -le 152630; $i+=200){
  $env:OFFSET="$i"
  Write-Host "`n=== OFFSET $i / 152630 ===" -ForegroundColor Green
  node "$Root\import-real.mjs"
  if($LASTEXITCODE -ne 0){ Start-Sleep 2; node "$Root\import-real.mjs" }
}

Write-Host "`n=== VERIF FINAL BIG4 ===" -ForegroundColor Cyan
node -e "import('@supabase/supabase-js').then(async m=>{const c=m.createClient(process.env.AMEN_TARGET_URL,process.env.AMEN_TARGET_SERVICE_ROLE_KEY);const {data,error}=await c.rpc('amen_big4_integrity'); if(error) console.error(error); else console.log(JSON.stringify(data,null,2))})"