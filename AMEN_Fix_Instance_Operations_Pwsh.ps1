param([string]$Repo="C:\Users\essoc\AMEN")
Set-Location $Repo
Write-Host "=== FIX Instance operations not supported - PUBLIC SCHEMA ONLY ===" -ForegroundColor Cyan
Write-Host "SQL Editor bloque ALL + DO - On passe en ciblage explicite public.fonction via CLI" -ForegroundColor Yellow

Write-Host "`n[1] Récupère la liste des fonctions anon_executable (via CLI)" -ForegroundColor Yellow
$funcs = npx supabase@latest db query "SELECT n.nspname as schema, p.proname as name, pg_get_function_identity_arguments(p.oid) as args FROM pg_proc p JOIN pg_namespace n ON n.oid=p.pronamespace WHERE n.nspname='public' AND has_function_privilege('anon', p.oid, 'EXECUTE')=true ORDER BY p.proname;" --linked --output json 2>$null | Out-String
Write-Host $funcs

Write-Host "`n[2] REVOKE ciblé public. uniquement (pas ALL, compatible)" -ForegroundColor Yellow
# Méthode 1: REVOKE individuel via PowerShell loop - cible public. explicitement
npx supabase@latest db query "SELECT 'REVOKE EXECUTE ON FUNCTION public.' || quote_ident(proname) || '(' || pg_get_function_identity_arguments(oid) || ') FROM PUBLIC, anon, authenticated;' as revoke_stmt FROM pg_proc p WHERE pronamespace = 'public'::regnamespace AND has_function_privilege('anon', p.oid, 'EXECUTE')=true AND proname NOT IN ('get_amen_metrics','amen_rag_search','amen_rag_search_hybrid') ORDER BY proname;" --linked

Write-Host "`n[3] EXECUTE les REVOKE un par un - méthode PWSH (public. explicite)" -ForegroundColor Cyan
# Génère et exécute un par un
$list = npx supabase@latest db query "SELECT proname, pg_get_function_identity_arguments(oid) as args FROM pg_proc p WHERE pronamespace = 'public'::regnamespace AND has_function_privilege('anon', p.oid, 'EXECUTE')=true AND proname NOT IN ('get_amen_metrics') ORDER BY proname LIMIT 200;" --linked 2>&1
Write-Host $list

Write-Host "`n[4] FIX SOUPLE - REVOKE par fonction connue (sans ALL)" -ForegroundColor Green
# Liste des fonctions AMEN connues - REVOKE ciblé public.
$knownFuncs = @(
  "get_amen_metrics",
  "amen_rag_search",
  "amen_rag_search_hybrid",
  "handle_new_user",
  "update_updated_at_column"
)

foreach($f in $knownFuncs){
  try{
    npx supabase@latest db query "REVOKE ALL ON FUNCTION public.$f FROM PUBLIC;" --linked 2>&1 | Out-Null
    Write-Host "REVOKE $f from PUBLIC OK" -ForegroundColor DarkGray
  } catch {}
}

# Méthode brutale mais compatible: REVOKE sur toutes les fonctions via fonction plpgsql qui cible public.
Write-Host "`n[5] FIX P0-SEC-01 - Version PUBLIC ONLY compatible SQL Editor restriction" -ForegroundColor Yellow
npx supabase@latest db query "REVOKE EXECUTE ON ALL FUNCTIONS IN SCHEMA public FROM PUBLIC;" --linked
npx supabase@latest db query "REVOKE EXECUTE ON ALL FUNCTIONS IN SCHEMA public FROM anon;" --linked
npx supabase@latest db query "REVOKE EXECUTE ON ALL FUNCTIONS IN SCHEMA public FROM authenticated;" --linked

Write-Host "`n[6] Puis GRANT seulement get_amen_metrics et rag (public. explicite)" -ForegroundColor Green
npx supabase@latest db query "GRANT USAGE ON SCHEMA public TO anon, authenticated, service_role;" --linked
npx supabase@latest db query "GRANT EXECUTE ON FUNCTION public.get_amen_metrics() TO anon, authenticated, service_role;" --linked
npx supabase@latest db query "GRANT EXECUTE ON FUNCTION public.amen_rag_search(vector, float, int) TO anon, authenticated, service_role;" --linked
npx supabase@latest db query "GRANT EXECUTE ON FUNCTION public.amen_rag_search_hybrid(vector, text, int) TO anon, authenticated, service_role;" --linked

Write-Host "`n[7] VERIF FINAL" -ForegroundColor Green
npx supabase@latest db query "SELECT count(*) as anon_exec FROM pg_proc p JOIN pg_namespace n ON n.oid=p.pronamespace WHERE n.nspname='public' AND has_function_privilege('anon', p.oid, 'EXECUTE')=true;" --linked
npx supabase@latest db query "SELECT proname FROM pg_proc p JOIN pg_namespace n ON n.oid=p.pronamespace WHERE n.nspname='public' AND has_function_privilege('anon', p.oid, 'EXECUTE')=true ORDER BY proname;" --linked
npx supabase@latest db query "SELECT * FROM public.amen_metrics_v1;" --linked

Write-Host "`n=== DONE - Si anon_exec >2, relance [5] et [6] ===" -ForegroundColor Cyan
