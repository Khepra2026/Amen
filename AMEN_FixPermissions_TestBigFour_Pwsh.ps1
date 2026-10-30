param([string]$Repo="C:\Users\essoc\AMEN")
Set-Location $Repo
Write-Host "=== AMEN FIX PERMISSIONS + TEST BIG FOUR PWSH ===" -ForegroundColor Cyan

Write-Host "`n[1] Fix PERMISSIONS - cause du 'permission denied for table amen_chunks'" -ForegroundColor Yellow
npx supabase@latest db query "GRANT USAGE ON SCHEMA public TO anon, authenticated, service_role;" --linked
npx supabase@latest db query "GRANT ALL ON TABLE public.amen_chunks TO service_role;" --linked
npx supabase@latest db query "GRANT ALL ON TABLE public.amen_embeddings TO service_role;" --linked
npx supabase@latest db query "GRANT ALL ON TABLE public.embeddings TO service_role;" --linked
npx supabase@latest db query "GRANT ALL ON TABLE public.amen_documents TO service_role;" --linked
npx supabase@latest db query "GRANT ALL ON TABLE public.amen_corpus TO service_role;" --linked
npx supabase@latest db query "GRANT ALL ON TABLE public.amen_sources TO service_role;" --linked
npx supabase@latest db query "GRANT SELECT ON TABLE public.amen_chunks TO anon, authenticated;" --linked
npx supabase@latest db query "GRANT SELECT ON TABLE public.amen_embeddings TO anon, authenticated;" --linked
npx supabase@latest db query "GRANT SELECT ON TABLE public.embeddings TO anon, authenticated;" --linked
npx supabase@latest db query "GRANT SELECT ON TABLE public.amen_metrics_v1 TO anon, authenticated, service_role;" --linked
npx supabase@latest db query "GRANT EXECUTE ON FUNCTION public.get_amen_metrics() TO anon, authenticated, service_role;" --linked
npx supabase@latest db query "GRANT ALL ON ALL SEQUENCES IN SCHEMA public TO service_role;" --linked

Write-Host "`n[2] Verif RLS amen_chunks (service_role bypass RLS mais anon besoin policy)" -ForegroundColor Yellow
npx supabase@latest db query "SELECT relname, relrowsecurity, relforcerowsecurity FROM pg_class WHERE relname IN ('amen_chunks','amen_embeddings','amen_documents');" --linked
npx supabase@latest db query "SELECT polname, polcmd, polroles::regrole[] FROM pg_policy WHERE polrelid IN ('public.amen_chunks'::regclass, 'public.amen_embeddings'::regclass);" --linked

# Si RLS bloque anon, créer policy lecture publique pour metrics
npx supabase@latest db query "DROP POLICY IF EXISTS amen_chunks_select_all ON public.amen_chunks; CREATE POLICY amen_chunks_select_all ON public.amen_chunks FOR SELECT USING (true);" --linked
npx supabase@latest db query "DROP POLICY IF EXISTS amen_embeddings_select_all ON public.amen_embeddings; CREATE POLICY amen_embeddings_select_all ON public.amen_embeddings FOR SELECT USING (true);" --linked

Write-Host "`n[3] Verif GRANT OK" -ForegroundColor Yellow
npx supabase@latest db query "SELECT grantee, privilege_type FROM information_schema.role_table_grants WHERE table_name='amen_chunks' ORDER BY grantee;" --linked

Write-Host "`n[4] Redeploy amen-embed-semantic v2 (content pas chunk_text)" -ForegroundColor Yellow
Set-Location $Repo
npx supabase@latest functions deploy amen-embed-semantic --project-ref beoesuvrsblkucwtnppp

Write-Host "`n[5] INVOKE avec vraie ANON KEY - remplace ANON_KEY par ta clé" -ForegroundColor Cyan
Write-Host @'
cd C:\Users\essoc\AMEN
# RECUPERE TA VRAIE ANON KEY depuis Dashboard > Project Settings > API Keys > anon public
$ANON = "eyJ..."  # colle ta vraie clé ici
$headers = @{
  'apikey' = $ANON
  'Authorization' = "Bearer $ANON"
  'Content-Type' = 'application/json'
}
$body = '{"limit":6,"force":true}'
Invoke-RestMethod -Uri 'https://beoesuvrsblkucwtnppp.supabase.co/functions/v1/amen-embed-semantic' -Method Post -Headers $headers -Body $body
'@

Write-Host "`n[6] Verif P0-RAG-01 apres re-embed" -ForegroundColor Yellow
npx supabase@latest db query "SELECT count(*) as total, count(*) FILTER (WHERE is_semantic=true) as semantiques, model, dimensions FROM public.amen_embeddings GROUP BY model, dimensions;" --linked
npx supabase@latest db query "SELECT * FROM public.amen_metrics_v1;" --linked
npx supabase@latest db query "SELECT id, chunk_id, left(content,80) as content_preview, embedding_status, embedding IS NOT NULL as has_emb, embedding_semantic IS NOT NULL as has_sem FROM public.amen_chunks LIMIT 6;" --linked

Write-Host "`n[7] TEST BIG FOUR amen.khepraexperts.com" -ForegroundColor Yellow
Write-Host "Test site live + metrics coherence" -ForegroundColor Cyan
Write-Host @'
cd C:\Users\essoc\AMEN
# Test 1: Site accessible
Invoke-RestMethod -Uri 'https://amen.khepraexperts.com' -Method Get | Select-Object -First 1

# Test 2: API metrics single source
$ANON = "TA_VRAIE_ANON_KEY"
$headers = @{ 'apikey' = $ANON; 'Authorization' = "Bearer $ANON" }
Invoke-RestMethod -Uri 'https://beoesuvrsblkucwtnppp.supabase.co/rest/v1/amen_metrics_v1?select=*' -Headers $headers
Invoke-RestMethod -Uri 'https://beoesuvrsblkucwtnppp.supabase.co/rest/v1/rpc/get_amen_metrics' -Method Post -Headers $headers

# Test 3: RAG search
$body = '{"query":"Qu est-ce que AMEN ?","limit":3}'
Invoke-RestMethod -Uri 'https://beoesuvrsblkucwtnppp.supabase.co/functions/v1/amen-rag-search' -Method Post -Headers $headers -Body $body -ErrorAction SilentlyContinue
'@
