import { createClient } from '@supabase/supabase-js'
function clean(v){ return (v||'').toString().trim().replace(/^["']+|["']+$/g,'').replace(/\s+/g,'') }
const TARGET_URL = clean(process.env.AMEN_TARGET_URL)
const TARGET_KEY = clean(process.env.AMEN_TARGET_SERVICE_ROLE_KEY)
const SOURCE_URL = clean(process.env.AMEN_SOURCE_URL)
const SOURCE_KEY = clean(process.env.AMEN_SOURCE_SERVICE_KEY)
if(!TARGET_URL.startsWith('https://') ||!SOURCE_URL.startsWith('https://')){ console.error('URL invalide', {TARGET_URL, SOURCE_URL}); process.exit(1) }
const target = createClient(TARGET_URL, TARGET_KEY, {auth:{persistSession:false}})
const source = createClient(SOURCE_URL, SOURCE_KEY, {auth:{persistSession:false}})
const BATCH = 200
let offset = parseInt(process.env.OFFSET||'0')
console.log(`=== OFFSET ${offset} / 152630 ===`)
const { data, error } = await source.from('amen_chunks').select('chunk_id, document_id, chunk_index, content, metadata, page, token_count, embedding, embedding_semantic, content_hash').range(offset, offset+BATCH-1)
if(error){ console.error(error); process.exit(1) }
if(!data || data.length===0){ console.log('FINI'); process.exit(0) }
console.log(`Fetched ${data.length} vec len ${data[0]?.embedding?.length}`)
const toUpsert = data.map(r => ({ chunk_id: r.chunk_id, document_id: r.document_id, chunk_index: r.chunk_index, content: r.content, metadata: r.metadata||{}, page: r.page, token_count: r.token_count, content_hash: r.content_hash||null, embedding: r.embedding, embedding_semantic: r.embedding_semantic||r.embedding, embedding_status: 'COMPLETED' }))
const { error: insErr } = await target.from('amen_chunks').upsert(toUpsert, {onConflict:'chunk_id'})
if(insErr){ console.error(insErr); process.exit(1) }
console.log(`✅ Upserted ${toUpsert.length}`)
