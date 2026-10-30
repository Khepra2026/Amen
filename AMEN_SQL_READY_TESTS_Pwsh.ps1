param([string]$Repo="C:\Users\essoc\AMEN")
Set-Location $Repo
Write-Host "=== SQL READY POUR LES TESTS - EXECUTION PWSH ===" -ForegroundColor Cyan

Write-Host "`n[TESTS COMPATIBLES SQL EDITOR - SELECT ONLY]" -ForegroundColor Green
Write-Host "Ces tests passent dans Dashboard SQL Editor sans erreur Instance operations" -ForegroundColor Gray

Write-Host "`n[TEST 1] METRICS SINGLE SOURCE - 19/4309/13/6" -ForegroundColor Yellow
npx supabase@latest db query "SELECT * FROM public.amen_metrics_v1;" --linked

Write-Host "`n[TEST 2] SECURITY P0-SEC-01 - doit etre 1 ou 2" -ForegroundColor Yellow
npx supabase@latest db query "SELECT count(*) as anon_exec FROM pg_proc p JOIN pg_namespace n ON n.oid=p.pronamespace WHERE n.nspname='public' AND has_function_privilege('anon', p.oid, 'EXECUTE')=true;" --linked
npx supabase@latest db query "SELECT proname FROM pg_proc p JOIN pg_namespace n ON n.oid=p.pronamespace WHERE n.nspname='public' AND has_function_privilege('anon', p.oid, 'EXECUTE')=true ORDER BY proname LIMIT 10;" --linked

Write-Host "`n[TEST 3] VECTOR DIMENSIONS - doit etre 1024" -ForegroundColor Yellow
npx supabase@latest db query "SELECT c.relname, a.attname, pg_catalog.format_type(a.atttypid, a.atttypmod) as type FROM pg_attribute a JOIN pg_class c ON c.oid=a.attrelid WHERE c.relname IN ('amen_chunks','amen_embeddings') AND a.attname LIKE '%embedding%' AND NOT a.attisdropped;" --linked

Write-Host "`n[TEST 4] EMBEDDINGS READY - 6 chunks" -ForegroundColor Yellow
npx supabase@latest db query "SELECT count(*) as total, count(*) FILTER (WHERE embedding_semantic IS NOT NULL) as avec_emb, count(*) FILTER (WHERE embedding_status='PENDING') as pending FROM public.amen_chunks;" --linked
npx supabase@latest db query "SELECT id, left(content,60) as txt, embedding_status, embedding_semantic IS NOT NULL as has_sem FROM public.amen_chunks;" --linked

Write-Host "`n[TEST 5] RAG FUNCTIONS" -ForegroundColor Yellow
npx supabase@latest db query "SELECT proname FROM pg_proc WHERE proname LIKE 'amen_rag%' ORDER BY proname;" --linked

Write-Host "`n[TEST 6] FINAL BIG FOUR SCORE" -ForegroundColor Green
npx supabase@latest db query "SELECT (SELECT count(*) FROM public.amen_documents) as notices, (SELECT count(*) FROM public.amen_corpus) as corpus, (SELECT count(*) FROM public.amen_chunks) as fragments, (SELECT count(*) FROM public.amen_embeddings WHERE is_semantic=true) as embeddings_sem, (SELECT count(*) FROM pg_proc p JOIN pg_namespace n ON n.oid=p.pronamespace WHERE n.nspname='public' AND has_function_privilege('anon', p.oid, 'EXECUTE')=true) as anon_exec;" --linked

Write-Host "`n=== Si FAIL, lance REMEDIATION SOUPLE ===" -ForegroundColor Cyan
Write-Host @'
cd C:\Users\essoc\AMEN

# REMEDIATION VECTOR 1024 (via CLI, pas SQL Editor)
npx supabase@latest db query "ALTER TABLE public.amen_chunks DROP COLUMN IF EXISTS embedding; ALTER TABLE public.amen_chunks ADD COLUMN embedding vector(1024);" --linked
npx supabase@latest db query "ALTER TABLE public.amen_chunks DROP COLUMN IF EXISTS embedding_semantic; ALTER TABLE public.amen_chunks ADD COLUMN embedding_semantic vector(1024);" --linked
npx supabase@latest db query "ALTER TABLE public.amen_embeddings DROP COLUMN IF EXISTS embedding; ALTER TABLE public.amen_embeddings ADD COLUMN embedding vector(1024);" --linked
npx supabase@latest db query "ALTER TABLE public.amen_embeddings ADD COLUMN IF NOT EXISTS is_semantic boolean DEFAULT false;" --linked

# REMEDIATION SECURITY (public. explicite, compatible)
npx supabase@latest db query "REVOKE EXECUTE ON ALL FUNCTIONS IN SCHEMA public FROM PUBLIC;" --linked
npx supabase@latest db query "REVOKE EXECUTE ON ALL FUNCTIONS IN SCHEMA public FROM anon;" --linked
npx supabase@latest db query "GRANT EXECUTE ON FUNCTION public.get_amen_metrics() TO anon, authenticated, service_role;" --linked

# DEPLOY + INVOKE EMBED
Copy-Item "C:\Users\essoc\Downloads\amen-embed-semantic-v4-final.ts" "supabase\functions\amen-embed-semantic\index.ts" -Force
npx supabase@latest functions deploy amen-embed-semantic --project-ref beoesuvrsblkucwtnppp
$ANON=Read-Host "ANON KEY"
$h=@{"apikey"=$ANON;"Authorization"="Bearer $ANON";"Content-Type"="application/json"}
Invoke-RestMethod -Uri 'https://beoesuvrsblkucwtnppp.supabase.co/functions/v1/amen-embed-semantic' -Method Post -Headers $h -Body '{"limit":6,"force":true}' -TimeoutSec 120
npx supabase@latest db query "SELECT * FROM public.amen_metrics_v1;" --linked
'@
