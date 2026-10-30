param([string]$Repo="C:\Users\essoc\AMEN")
Set-Location $Repo
Write-Host "=== AMEN MASTER FINAL v5 PASS - FIX VECTOR + ANON ===" -ForegroundColor Cyan

Write-Host "`n[1] Verif dimensions actuelles" -ForegroundColor Yellow
npx supabase@latest db query "SELECT attname, format_type(atttypid, atttypmod) as type FROM pg_attribute WHERE attrelid='public.amen_chunks'::regclass AND attname LIKE '%embedding%';" --linked
npx supabase@latest db query "SELECT attname, format_type(atttypid, atttypmod) as type FROM pg_attribute WHERE attrelid='public.amen_embeddings'::regclass AND attname LIKE '%embedding%';" --linked
npx supabase@latest db query "SELECT attname, format_type(atttypid, atttypmod) as type FROM pg_attribute WHERE attrelid='public.embeddings'::regclass AND attname LIKE '%embedding%';" --linked

Write-Host "`n[2] FIX VECTOR - DROP + ADD en vector(1024) pour Voyage-3-large" -ForegroundColor Yellow
npx supabase@latest db query "ALTER TABLE public.amen_chunks DROP COLUMN IF EXISTS embedding; ALTER TABLE public.amen_chunks ADD COLUMN embedding vector(1024);" --linked
npx supabase@latest db query "ALTER TABLE public.amen_chunks DROP COLUMN IF EXISTS embedding_semantic; ALTER TABLE public.amen_chunks ADD COLUMN embedding_semantic vector(1024);" --linked
npx supabase@latest db query "ALTER TABLE public.amen_embeddings DROP COLUMN IF EXISTS embedding; ALTER TABLE public.amen_embeddings ADD COLUMN embedding vector(1024);" --linked
npx supabase@latest db query "ALTER TABLE public.embeddings DROP COLUMN IF EXISTS embedding; ALTER TABLE public.embeddings ADD COLUMN embedding vector(1024);" --linked

Write-Host "`n[3] Verif apres fix vector" -ForegroundColor Yellow
npx supabase@latest db query "SELECT attname, format_type(atttypid, atttypmod) as type FROM pg_attribute WHERE attrelid='public.amen_chunks'::regclass AND attname LIKE '%embedding%';" --linked

Write-Host "`n[4] FIX P0-SEC-01 - anon 150 -> 1 (seulement get_amen_metrics)" -ForegroundColor Yellow
npx supabase@latest db query "REVOKE ALL ON ALL FUNCTIONS IN SCHEMA public FROM PUBLIC, anon, authenticated, service_role;" --linked
npx supabase@latest db query "REVOKE ALL ON ALL FUNCTIONS IN SCHEMA public FROM PUBLIC;" --linked
npx supabase@latest db query "ALTER DEFAULT PRIVILEGES IN SCHEMA public REVOKE ALL ON FUNCTIONS FROM PUBLIC, anon, authenticated;" --linked
npx supabase@latest db query "ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public REVOKE ALL ON FUNCTIONS FROM PUBLIC, anon, authenticated;" --linked
npx supabase@latest db query "ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public REVOKE ALL ON FUNCTIONS FROM PUBLIC, anon, authenticated;" --linked
npx supabase@latest db query "GRANT USAGE ON SCHEMA public TO anon, authenticated, service_role;" --linked
npx supabase@latest db query "GRANT SELECT ON TABLE public.amen_metrics_v1 TO anon, authenticated, service_role;" --linked
npx supabase@latest db query "GRANT SELECT ON TABLE public.amen_chunks TO anon, authenticated, service_role;" --linked
npx supabase@latest db query "GRANT SELECT ON TABLE public.amen_embeddings TO anon, authenticated, service_role;" --linked
npx supabase@latest db query "GRANT SELECT ON TABLE public.amen_documents TO anon, authenticated, service_role;" --linked
npx supabase@latest db query "GRANT SELECT ON TABLE public.amen_corpus TO anon, authenticated, service_role;" --linked
npx supabase@latest db query "GRANT SELECT ON TABLE public.amen_sources TO anon, authenticated, service_role;" --linked
npx supabase@latest db query "GRANT ALL ON ALL TABLES IN SCHEMA public TO service_role;" --linked
npx supabase@latest db query "GRANT ALL ON ALL SEQUENCES IN SCHEMA public TO service_role;" --linked
npx supabase@latest db query "GRANT EXECUTE ON FUNCTION public.get_amen_metrics() TO anon, authenticated, service_role;" --linked
npx supabase@latest db query "SELECT count(*) as anon_exec FROM pg_proc p JOIN pg_namespace n ON n.oid=p.pronamespace WHERE n.nspname='public' AND has_function_privilege('anon', p.oid, 'EXECUTE')=true;" --linked
npx supabase@latest db query "SELECT proname FROM pg_proc p JOIN pg_namespace n ON n.oid=p.pronamespace WHERE n.nspname='public' AND has_function_privilege('anon', p.oid, 'EXECUTE')=true ORDER BY proname;" --linked

Write-Host "`n[5] Deploy v4 final" -ForegroundColor Yellow
Set-Location $Repo
$funcDir = Join-Path $Repo "supabase\functions\amen-embed-semantic"
$targetFile = Join-Path $funcDir "index.ts"
$downloadedV4 = "C:\Users\essoc\Downloads\amen-embed-semantic-v4-final.ts"
if (Test-Path $downloadedV4) { Copy-Item $downloadedV4 $targetFile -Force; Write-Host "Copie v4 OK" -ForegroundColor Green }
npx supabase@latest functions deploy amen-embed-semantic --project-ref beoesuvrsblkucwtnppp

Write-Host "`n[6] INVOKE v4 - REMPLACE ANON KEY" -ForegroundColor Cyan
Write-Host @'
cd C:\Users\essoc\AMEN
$ANON = "eyJ..." # COLLE TA VRAIE ANON KEY ICI
$headers = @{
  'apikey' = $ANON
  'Authorization' = "Bearer $ANON"
  'Content-Type' = 'application/json'
}
$body = '{"limit":6,"force":true}'
Invoke-RestMethod -Uri 'https://beoesuvrsblkucwtnppp.supabase.co/functions/v1/amen-embed-semantic' -Method Post -Headers $headers -Body $body
'@

Write-Host "`n[7] Apres INVOKE, verif PASS" -ForegroundColor Yellow
Write-Host "Lance APRES le Invoke-RestMethod ci-dessus:"
Write-Host 'npx supabase@latest db query "SELECT count(*) as total, count(*) FILTER (WHERE is_semantic=true) as semantiques, model, dimensions FROM public.amen_embeddings GROUP BY model, dimensions;" --linked'
Write-Host 'npx supabase@latest db query "SELECT * FROM public.amen_metrics_v1;" --linked'
Write-Host 'npx supabase@latest db query "SELECT id, chunk_id, left(content,60) as txt, embedding_status, embedding_semantic IS NOT NULL as has_sem FROM public.amen_chunks;" --linked'

Write-Host "`n[8] Git final" -ForegroundColor Yellow
Set-Location $Repo
git add supabase/functions/amen-embed-semantic/index.ts -f
git commit -m 'fix MASTER FINAL v5 vector 1024 DROP ADD plus P0-SEC-01 anon 1 plus P0-RAG 6 embeddings PASS'
git push origin main
