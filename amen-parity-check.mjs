// amen-parity-check.mjs - V580 Parity Checker Real Vectors Only
// Usage: node amen-parity-check.mjs
import { createClient } from '@supabase/supabase-js'

const TARGET_URL = process.env.AMEN_TARGET_URL
const TARGET_KEY = process.env.AMEN_TARGET_SERVICE_ROLE_KEY
const SOURCE_URL = process.env.AMEN_SOURCE_URL
const SOURCE_KEY = process.env.AMEN_SOURCE_SERVICE_KEY

if (!TARGET_URL ||!TARGET_KEY ||!SOURCE_URL ||!SOURCE_KEY) {
  console.error('Missing env: AMEN_TARGET_URL, AMEN_TARGET_SERVICE_ROLE_KEY, AMEN_SOURCE_URL, AMEN_SOURCE_SERVICE_KEY')
  process.exit(1)
}

const target = createClient(TARGET_URL, TARGET_KEY)
const source = createClient(SOURCE_URL, SOURCE_KEY)

async function big4(client, name) {
  const { data, error } = await client.rpc('amen_big4_integrity')
  if (error) return { ok: false, error: error.message, name }
  return { ok: true, data, name }
}

async function countTable(client, table) {
  const { count, error } = await client.from(table).select('*', { count: 'exact', head: true })
  if (error) return { count: null, error: error.message }
  return { count, error: null }
}

async function sampleVectors(client, limit=5) {
  const { data, error } = await client.from('amen_chunks').select('chunk_id, content, embedding').not('embedding','is',null).limit(limit)
  if (error) return { error: error.message }
  // check not random: real voyage embeddings have mean ~0, std ~0.02, not uniform 0-1
  return data.map(r => {
    const str = r.embedding
    const arr = typeof str === 'string'? JSON.parse(str.replace('{','[').replace('}',']')) : str
    const mean = arr.slice(0,10).reduce((a,b)=>a+b,0)/10
    const isRandomFake = mean > 0.3 && mean < 0.7 // random() 0-1 => mean ~0.5, real voyage => mean ~0
    return { chunk_id: r.chunk_id, mean_sample: mean.toFixed(4), fake: isRandomFake, content_len: r.content?.length }
  })
}

console.log('=== V580 PARITY CHECK ===')
console.log(`Source: ${SOURCE_URL}`)
console.log(`Target: ${TARGET_URL}`)

const [srcBig4, tgtBig4] = await Promise.all([big4(source,'SOURCE'), big4(target,'TARGET')])
console.log('\n--- BIG4 ---')
console.log('SOURCE:', JSON.stringify(srcBig4, null, 2))
console.log('TARGET:', JSON.stringify(tgtBig4, null, 2))

const tables = ['amen_chunks','amen_corpus','amen_documents','amen_sources','amen_publications','amen_rag_cases']
console.log('\n--- COUNTS ---')
for (const t of tables) {
  const [src, tgt] = await Promise.all([countTable(source,t), countTable(target,t)])
  const status = src.count === tgt.count? '✅' : '❌ MISMATCH'
  console.log(`${status} ${t}: source=${src.count} target=${tgt.count} ${src.error||tgt.error? `ERR src:${src.error} tgt:${tgt.error}`:''}`)
}

console.log('\n--- VECTOR SANITY (target) ---')
const vecCheck = await sampleVectors(target, 10)
if (vecCheck.error) console.log('ERROR:', vecCheck.error)
else {
  const fakes = vecCheck.filter(v=>v.fake)
  if (fakes.length>0) {
    console.log(`❌ FAKE VECTORS DETECTED (${fakes.length}/10): random() mean ~0.5`)
    console.log(fakes)
  } else {
    console.log('✅ Vectors look real (mean near 0, not uniform 0-1)')
    console.log(vecCheck)
  }
}

console.log('\n--- FINAL VERDICT ---')
const targetTotal = (await countTable(target,'amen_chunks')).count
const targetVec = (await target.from('amen_chunks').select('*',{count:'exact',head:true}).not('embedding','is',null)).count
console.log(`Target chunks_total: ${targetTotal}, vec: ${targetVec}`)
if (tgtBig4.ok && tgtBig4.data?.verdict === 'GO' && targetTotal===152630 && fakes?.length===0) {
  console.log('✅ PARITY GO - MIGRATION COMPLETE')
} else {
  console.log('❌ INCOMPLETE - Do not mark GO until 152630/152630/152627')
}