param([string]$Repo="C:\Users\essoc\AMEN")

Set-Location $Repo
Write-Host "=== AMEN BigFour Full Fix PWSH ===" -ForegroundColor Cyan
Write-Host "Repo: $Repo"
Write-Host "CLI: $(npx supabase@latest --version)"

# --- P0-SEC-01 déjà PASS (0 anon) - vérif ---
Write-Host "`n[1] Verif P0-SEC-01 anon executable (doit être 0)" -ForegroundColor Yellow
npx supabase@latest db query "SELECT count(*) as anon_executable FROM pg_proc p JOIN pg_namespace n ON n.oid = p.pronamespace WHERE n.nspname='public' AND has_function_privilege('anon', p.oid, 'EXECUTE') = true;" --linked

# --- P0-METRICS-01 ---
Write-Host "`n[2] Fix colonnes is_semantic" -ForegroundColor Yellow
npx supabase@latest db query "ALTER TABLE public.documents ADD COLUMN IF NOT EXISTS rag_ready boolean DEFAULT false;" --linked
npx supabase@latest db query "ALTER TABLE public.embeddings ADD COLUMN IF NOT EXISTS is_semantic boolean DEFAULT false;" --linked
npx supabase@latest db query "ALTER TABLE public.embeddings ADD COLUMN IF NOT EXISTS model text;" --linked
npx supabase@latest db query "ALTER TABLE public.embeddings ADD COLUMN IF NOT EXISTS dimensions int;" --linked
npx supabase@latest db query "ALTER TABLE public.amen_embeddings ADD COLUMN IF NOT EXISTS is_semantic boolean DEFAULT false;" --linked
npx supabase@latest db query "ALTER TABLE public.amen_embeddings ADD COLUMN IF NOT EXISTS model text;" --linked
npx supabase@latest db query "ALTER TABLE public.amen_embeddings ADD COLUMN IF NOT EXISTS dimensions int;" --linked

Write-Host "`n[3] Verif colonnes" -ForegroundColor Yellow
npx supabase@latest db query "SELECT table_name, column_name FROM information_schema.columns WHERE table_name IN ('amen_embeddings','embeddings') AND column_name IN ('is_semantic','model','dimensions') ORDER BY table_name;" --linked

Write-Host "`n[4] Verif compteurs reels AMEN" -ForegroundColor Yellow
npx supabase@latest db query "SELECT 'amen_documents' as tbl, count(*) FROM public.amen_documents UNION ALL SELECT 'amen_corpus', count(*) FROM public.amen_corpus UNION ALL SELECT 'amen_sources', count(*) FROM public.amen_sources UNION ALL SELECT 'amen_chunks', count(*) FROM public.amen_chunks UNION ALL SELECT 'documents', count(*) FROM public.documents UNION ALL SELECT 'sources', count(*) FROM public.sources;" --linked

Write-Host "`n[5] Creation vue amen_metrics_v1 single source (fix 8 vs 1869)" -ForegroundColor Yellow
npx supabase@latest db query "DROP VIEW IF EXISTS public.amen_metrics_v1 CASCADE; CREATE VIEW public.amen_metrics_v1 AS SELECT (SELECT count(*) FROM public.amen_documents) as notices_corpus, (SELECT count(*) FROM public.amen_corpus) as corpus_total, (SELECT count(*) FROM public.amen_sources) as sources_enregistrees, (SELECT count(*) FROM public.amen_chunks) as fragments_indexes, (SELECT count(*) FROM public.amen_embeddings WHERE is_semantic = true) as embeddings_semantiques, (SELECT count(*) FROM public.amen_embeddings) as embeddings_total, (SELECT count(*) FROM public.documents) as documents_legacy, now() as computed_at;" --linked

npx supabase@latest db query "SELECT * FROM public.amen_metrics_v1;" --linked

Write-Host "`n[6] Creation RPC get_amen_metrics" -ForegroundColor Yellow
npx supabase@latest db query "CREATE OR REPLACE FUNCTION public.get_amen_metrics() RETURNS json LANGUAGE sql SECURITY DEFINER SET search_path = public AS 'SELECT json_build_object(''notices_corpus'', (SELECT count(*) FROM public.amen_documents), ''corpus_total'', (SELECT count(*) FROM public.amen_corpus), ''sources_enregistrees'', (SELECT count(*) FROM public.amen_sources), ''fragments_indexes'', (SELECT count(*) FROM public.amen_chunks), ''embeddings_semantiques'', (SELECT count(*) FROM public.amen_embeddings WHERE is_semantic = true), ''embeddings_total'', (SELECT count(*) FROM public.amen_embeddings), ''documents_legacy'', (SELECT count(*) FROM public.documents))';" --linked

npx supabase@latest db query "GRANT SELECT ON public.amen_metrics_v1 TO anon, authenticated, service_role;" --linked
npx supabase@latest db query "GRANT EXECUTE ON FUNCTION public.get_amen_metrics() TO anon, authenticated, service_role;" --linked

npx supabase@latest db query "SELECT public.get_amen_metrics();" --linked

# --- P0-RAG-01 ---
Write-Host "`n[7] Deploy amen-embed-semantic (fix device cpu)" -ForegroundColor Yellow
Set-Location $Repo
npx supabase@latest functions deploy amen-embed-semantic --project-ref beoesuvrsblkucwtnppp

Write-Host "`n[8] Secrets list" -ForegroundColor Yellow
npx supabase@latest secrets list --project-ref beoesuvrsblkucwtnppp

Write-Host "`n[9] Invoke embed-semantic via API (remplace ANON_KEY)" -ForegroundColor Yellow
Write-Host "Pour invoquer, lance manuellement avec ta ANON_KEY du Dashboard > API Keys :"
Write-Host @"
`$headers = @{
  'apikey' = 'TA_ANON_KEY'
  'Authorization' = 'Bearer TA_ANON_KEY'
  'Content-Type' = 'application/json'
}
`$body = '{\"limit\":6,\"force\":true}'
Invoke-RestMethod -Uri 'https://beoesuvrsblkucwtnppp.supabase.co/functions/v1/amen-embed-semantic' -Method Post -Headers `$headers -Body `$body
"@

Write-Host "`n[10] Verif embeddings apres re-embed" -ForegroundColor Yellow
npx supabase@latest db query "SELECT count(*) as total, count(*) FILTER (WHERE is_semantic=true) as semantiques, model, dimensions FROM public.amen_embeddings GROUP BY model, dimensions;" --linked
npx supabase@latest db query "SELECT * FROM public.amen_metrics_v1;" --linked

Write-Host "`n[11] Git commit final P0" -ForegroundColor Yellow
Set-Location $Repo
git status --short
git add supabase/migrations/20261029000002_amen_metrics_view_simple.sql -f
git add supabase/functions/amen-embed-semantic/index.ts -f
git add docs/BigFour/ -f
git commit -m 'fix P0-METRICS-01 P0-RAG-01 full pwsh single source 19 4309 plus embed semantic voyage fix' -ErrorAction SilentlyContinue
git push origin main

Write-Host "`n=== FIN P0 METRICS PASS, RAG en cours re-embed ===" -ForegroundColor Green
Write-Host "Prochain: si embeddings_semantiques passe de 0 a 6, P0-RAG-01 PASS"
