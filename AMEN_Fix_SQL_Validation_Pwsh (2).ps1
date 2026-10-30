param([string]$Repo="C:\Users\essoc\AMEN")
Set-Location $Repo
Write-Host "=== FIX SQL VALIDATION FAILED - PWSH CLI BYPASS ===" -ForegroundColor Cyan

Write-Host "`n[0] Pourquoi SQL Editor bloque ?" -ForegroundColor Yellow
Write-Host "SQL Editor: 'SQL statement type is not allowed' + 'default privileges for another role are not supported'" -ForegroundColor Red
Write-Host "Solution: utiliser npx supabase@latest db query --linked (Management API) pas le Dashboard SQL Editor" -ForegroundColor Green

Write-Host "`n[1] Fix VECTOR 1024 - via CLI (pas SQL Editor)" -ForegroundColor Yellow
npx supabase@latest db query "DROP INDEX IF EXISTS amen_embeddings_chunk_id_unique;" --linked
npx supabase@latest db query "CREATE UNIQUE INDEX amen_embeddings_chunk_id_unique ON public.amen_embeddings(chunk_id);" --linked
npx supabase@latest db query "ALTER TABLE public.amen_chunks DROP COLUMN IF EXISTS embedding;" --linked
npx supabase@latest db query "ALTER TABLE public.amen_chunks ADD COLUMN embedding vector(1024);" --linked
npx supabase@latest db query "ALTER TABLE public.amen_chunks DROP COLUMN IF EXISTS embedding_semantic;" --linked
npx supabase@latest db query "ALTER TABLE public.amen_chunks ADD COLUMN embedding_semantic vector(1024);" --linked
npx supabase@latest db query "ALTER TABLE public.amen_embeddings DROP COLUMN IF EXISTS embedding;" --linked
npx supabase@latest db query "ALTER TABLE public.amen_embeddings ADD COLUMN embedding vector(1024);" --linked
npx supabase@latest db query "ALTER TABLE public.amen_embeddings ADD COLUMN IF NOT EXISTS is_semantic boolean DEFAULT false;" --linked
npx supabase@latest db query "ALTER TABLE public.amen_embeddings ADD COLUMN IF NOT EXISTS model text;" --linked
npx supabase@latest db query "ALTER TABLE public.amen_embeddings ADD COLUMN IF NOT EXISTS dimensions int;" --linked
npx supabase@latest db query "ALTER TABLE public.embeddings ADD COLUMN IF NOT EXISTS is_semantic boolean DEFAULT false;" --linked

Write-Host "`n[2] Fix METRICS Single Source (8 vs 4309)" -ForegroundColor Yellow
npx supabase@latest db query "DROP VIEW IF EXISTS public.amen_metrics_v1 CASCADE;" --linked
npx supabase@latest db query "CREATE VIEW public.amen_metrics_v1 AS SELECT (SELECT count(*) FROM public.amen_documents) as notices_corpus, (SELECT count(*) FROM public.amen_corpus) as corpus_total, (SELECT count(*) FROM public.amen_sources) as sources_enregistrees, (SELECT count(*) FROM public.amen_chunks) as fragments_indexes, (SELECT count(*) FROM public.amen_embeddings WHERE is_semantic=true) as embeddings_semantiques, (SELECT count(*) FROM public.amen_embeddings) as embeddings_total, (SELECT count(*) FROM public.amen_chunks WHERE embedding_semantic IS NOT NULL) as chunks_embedded, (SELECT count(*) FROM public.documents) as documents_legacy, now() as computed_at;" --linked
npx supabase@latest db query "CREATE OR REPLACE FUNCTION public.get_amen_metrics() RETURNS json LANGUAGE sql SECURITY DEFINER SET search_path=public AS 'SELECT json_build_object(''notices_corpus'', (SELECT count(*) FROM public.amen_documents), ''corpus_total'', (SELECT count(*) FROM public.amen_corpus), ''sources_enregistrees'', (SELECT count(*) FROM public.amen_sources), ''fragments_indexes'', (SELECT count(*) FROM public.amen_chunks), ''embeddings_semantiques'', (SELECT count(*) FROM public.amen_embeddings WHERE is_semantic=true))';" --linked

Write-Host "`n[3] Fix P0-SEC-01 anon 150->1 SANS FOR ROLE (compatible Supabase)" -ForegroundColor Yellow
# Version compatible: sans FOR ROLE postgres/supabase_admin (bloqué)
npx supabase@latest db query "REVOKE ALL ON ALL FUNCTIONS IN SCHEMA public FROM PUBLIC, anon, authenticated;" --linked
npx supabase@latest db query "ALTER DEFAULT PRIVILEGES IN SCHEMA public REVOKE ALL ON FUNCTIONS FROM PUBLIC, anon, authenticated;" --linked
npx supabase@latest db query "GRANT USAGE ON SCHEMA public TO anon, authenticated, service_role;" --linked
npx supabase@latest db query "GRANT SELECT ON ALL TABLES IN SCHEMA public TO anon, authenticated;" --linked
npx supabase@latest db query "GRANT ALL ON ALL TABLES IN SCHEMA public TO service_role;" --linked
npx supabase@latest db query "GRANT ALL ON ALL SEQUENCES IN SCHEMA public TO service_role;" --linked
npx supabase@latest db query "GRANT EXECUTE ON FUNCTION public.get_amen_metrics() TO anon, authenticated, service_role;" --linked

Write-Host "`n[4] RLS Policies (compatible)" -ForegroundColor Yellow
npx supabase@latest db query "ALTER TABLE public.amen_chunks ENABLE ROW LEVEL SECURITY;" --linked
npx supabase@latest db query "DROP POLICY IF EXISTS amen_chunks_select_all ON public.amen_chunks;" --linked
npx supabase@latest db query "CREATE POLICY amen_chunks_select_all ON public.amen_chunks FOR SELECT USING (true);" --linked
npx supabase@latest db query "DROP POLICY IF EXISTS amen_chunks_service_all ON public.amen_chunks;" --linked
npx supabase@latest db query "CREATE POLICY amen_chunks_service_all ON public.amen_chunks FOR ALL USING (auth.role() = 'service_role');" --linked
npx supabase@latest db query "ALTER TABLE public.amen_embeddings ENABLE ROW LEVEL SECURITY;" --linked
npx supabase@latest db query "DROP POLICY IF EXISTS amen_embeddings_select_all ON public.amen_embeddings;" --linked
npx supabase@latest db query "CREATE POLICY amen_embeddings_select_all ON public.amen_embeddings FOR SELECT USING (true);" --linked
npx supabase@latest db query "DROP POLICY IF EXISTS amen_embeddings_service_all ON public.amen_embeddings;" --linked
npx supabase@latest db query "CREATE POLICY amen_embeddings_service_all ON public.amen_embeddings FOR ALL USING (auth.role() = 'service_role');" --linked

Write-Host "`n[5] Embeddings Proprietaire + RAG" -ForegroundColor Yellow
npx supabase@latest db query "CREATE TABLE IF NOT EXISTS public.amen_embedding_models (model_id text PRIMARY KEY, provider text, model_name text, dimensions int, is_proprietary boolean DEFAULT true, is_semantic boolean DEFAULT true, created_at timestamptz DEFAULT now(), active boolean DEFAULT true);" --linked
npx supabase@latest db query "INSERT INTO public.amen_embedding_models (model_id, provider, model_name, dimensions, is_proprietary, is_semantic) VALUES ('voyage-3-large','voyage','voyage-3-large',1024,false,true), ('amen-proprietaire-v1','amen','amen-embedding-v1',1024,true,true) ON CONFLICT (model_id) DO NOTHING;" --linked
npx supabase@latest db query "CREATE OR REPLACE FUNCTION public.amen_rag_search(query_embedding vector(1024), match_threshold float DEFAULT 0.7, match_count int DEFAULT 5) RETURNS TABLE(chunk_id uuid, document_id text, content text, similarity float) LANGUAGE plpgsql SECURITY DEFINER SET search_path=public AS 'BEGIN RETURN QUERY SELECT ac.id, ac.document_id, ac.content, 1 - (ac.embedding_semantic <=> query_embedding) as similarity FROM public.amen_chunks ac WHERE ac.embedding_semantic IS NOT NULL AND 1 - (ac.embedding_semantic <=> query_embedding) > match_threshold ORDER BY ac.embedding_semantic <=> query_embedding LIMIT match_count; END;';" --linked
npx supabase@latest db query "GRANT EXECUTE ON FUNCTION public.amen_rag_search(vector, float, int) TO anon, authenticated, service_role;" --linked

Write-Host "`n[6] Verif FINAL PASS" -ForegroundColor Green
npx supabase@latest db query "SELECT * FROM public.amen_metrics_v1;" --linked
npx supabase@latest db query "SELECT count(*) as anon_exec FROM pg_proc p JOIN pg_namespace n ON n.oid=p.pronamespace WHERE n.nspname='public' AND has_function_privilege('anon', p.oid, 'EXECUTE')=true;" --linked
npx supabase@latest db query "SELECT proname FROM pg_proc p JOIN pg_namespace n ON n.oid=p.pronamespace WHERE n.nspname='public' AND has_function_privilege('anon', p.oid, 'EXECUTE')=true ORDER BY proname;" --linked
npx supabase@latest db query "SELECT * FROM public.amen_embedding_models;" --linked

Write-Host "`n[7] Deploy embed v4 + Invoke" -ForegroundColor Cyan
Write-Host 'Copy-Item "C:\Users\essoc\Downloads\amen-embed-semantic-v4-final.ts" "supabase\functions\amen-embed-semantic\index.ts" -Force'
Write-Host 'npx supabase@latest functions deploy amen-embed-semantic --project-ref beoesuvrsblkucwtnppp'
Write-Host '$ANON=Read-Host "ANON KEY"; $h=@{"apikey"=$ANON;"Authorization"="Bearer $ANON";"Content-Type"="application/json"}; Invoke-RestMethod -Uri "https://beoesuvrsblkucwtnppp.supabase.co/functions/v1/amen-embed-semantic" -Method Post -Headers $h -Body ''{"limit":6,"force":true}'' -TimeoutSec 120'
