# RUN_FINAL.ps1 - Importe les 152630 VRAIS vecteurs Readdy -> beoesuvrsblkucwtnppp
# Source = Readdy Backend (content + embedding 1024 déjà calculés)
# Target = Supabase cible

$env:AMEN_TARGET_URL="https://beoesuvrsblkucwtnppp.supabase.co"
$env:AMEN_TARGET_SERVICE_ROLE_KEY="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJlb2VzdXZyc2Jsa3Vjd3RucHBwIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc4OTE3MDQxNSwiZXhwIjoyMTA0NzQ2NDE1fQ.zk9Z9gC53Qi5Wo-nMlqjJKeFdBrryg1AD02jFiKud98"

$env:AMEN_SOURCE_URL="postgresql://postgres.beoesuvrsblkucwtnppp:Khepra%402026@aws-0-eu-central-1.pooler.supabase.com:6543/postgres"
$env:AMEN_SOURCE_SERVICE_KEY="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJlb2VzdXZyc2Jsa3Vjd3RucHBwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3ODkxNzA0MTUsImV4cCI6MjEwNDc0NjQxNX0.GDbFAvAkHFoLx8KaVD90qM7QsNOjF6VASQTu5WEtuvc"

Set-Location "C:\Users\essoc\AMEN"
if (-not (Test-Path "node_modules")) { npm init -y | Out-Null; npm install @supabase/supabase-js | Out-Null }

# Script d'import avec VRAIS embeddings
@'
import { createClient } from '@supabase/supabase-js'
const target = createClient(process.env.AMEN_TARGET_URL, process.env.AMEN_TARGET_SERVICE_ROLE_KEY)
const source = createClient(process.env.AMEN_SOURCE_URL, process.env.AMEN_SOURCE_SERVICE_KEY)

const BATCH = 200
let offset = parseInt(process.env.OFFSET||'0')
console.log(`Import OFFSET ${offset} BATCH ${BATCH}`)

const { data, error } = await source.from('amen_chunks').select('chunk_id, document_id, chunk_index, content, metadata, page, token_count, embedding, embedding_semantic, content_hash').range(offset, offset+BATCH-1)

if (error) { console.error(error); process.exit(1) }
if (!data || data.length===0) { console.log('FINI - plus de data'); process.exit(0) }

console.log(`Fetched ${data.length} avec vrais embeddings`)

// Upsert avec vrais vecteurs
const toUpsert = data.map(r => ({
  chunk_id: r.chunk_id,
  document_id: r.document_id,
  chunk_index: r.chunk_index,
  content: r.content,
  metadata: r.metadata || {},
  page: r.page,
  token_count: r.token_count,
  content_hash: r.content_hash || null,
  embedding: r.embedding,
  embedding_semantic: r.embedding_semantic || r.embedding,
  embedding_status: 'COMPLETED',
  content_tsv: null
}))

const { error: insErr } = await target.from('amen_chunks').upsert(toUpsert, { onConflict: 'chunk_id' })
if (insErr) { console.error(insErr); process.exit(1) }
console.log(`✅ Upserted ${toUpsert.length} VRAIS vecteurs -> target`)
'@ | Set-Content -Path "import-real.mjs" -Encoding UTF8

# Boucle 0 -> 152630 par 200
for ($i=0; $i -le 152630; $i+=200) {
  Write-Host "`n=== OFFSET $i / 152630 ===" -ForegroundColor Green
  $env:OFFSET="$i"
  node import-real.mjs
  Start-Sleep -Milliseconds 500
}

Write-Host "`n=== VERIF FINAL ===" -ForegroundColor Cyan
node -e "import('@supabase/supabase-js').then(async m=>{const c=m.createClient(process.env.AMEN_TARGET_URL,process.env.AMEN_TARGET_SERVICE_ROLE_KEY);const {data}=await c.rpc('amen_big4_integrity');console.log(JSON.stringify(data,null,2))})"