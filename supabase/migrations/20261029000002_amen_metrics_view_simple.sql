-- Migration P0-METRICS-01 - Single source fix 8 vs 1869
-- Date: 2026-10-29
-- Constat: documents=5 (hero) vs amen_corpus=4309 (indicators) = 2 sources divergentes
-- Fix: amen_metrics_v1 pointe sur amen_documents/amen_corpus comme vérité terrain

ALTER TABLE public.documents ADD COLUMN IF NOT EXISTS rag_ready boolean DEFAULT false;
ALTER TABLE public.embeddings ADD COLUMN IF NOT EXISTS is_semantic boolean DEFAULT false;
ALTER TABLE public.embeddings ADD COLUMN IF NOT EXISTS model text;
ALTER TABLE public.embeddings ADD COLUMN IF NOT EXISTS dimensions int;
ALTER TABLE public.amen_embeddings ADD COLUMN IF NOT EXISTS is_semantic boolean DEFAULT false;
ALTER TABLE public.amen_embeddings ADD COLUMN IF NOT EXISTS model text;
ALTER TABLE public.amen_embeddings ADD COLUMN IF NOT EXISTS dimensions int;

DROP VIEW IF EXISTS public.amen_metrics_v1 CASCADE;

CREATE VIEW public.amen_metrics_v1 AS
SELECT
  (SELECT count(*) FROM public.amen_documents) as notices_corpus,
  (SELECT count(*) FROM public.amen_corpus) as corpus_total,
  (SELECT count(*) FROM public.amen_sources) as sources_enregistrees,
  (SELECT count(*) FROM public.amen_chunks) as fragments_indexes,
  (SELECT count(*) FROM public.amen_embeddings WHERE is_semantic = true) as embeddings_semantiques,
  (SELECT count(*) FROM public.amen_embeddings) as embeddings_total,
  (SELECT count(*) FROM public.documents) as documents_legacy,
  now() as computed_at;

GRANT SELECT ON public.amen_metrics_v1 TO anon, authenticated, service_role;

CREATE OR REPLACE FUNCTION public.get_amen_metrics()
RETURNS json
LANGUAGE sql
SECURITY DEFINER
SET search_path = public
AS '
  SELECT json_build_object(
    ''notices_corpus'', (SELECT count(*) FROM public.amen_documents),
    ''corpus_total'', (SELECT count(*) FROM public.amen_corpus),
    ''sources_enregistrees'', (SELECT count(*) FROM public.amen_sources),
    ''fragments_indexes'', (SELECT count(*) FROM public.amen_chunks),
    ''embeddings_semantiques'', (SELECT count(*) FROM public.amen_embeddings WHERE is_semantic = true),
    ''embeddings_total'', (SELECT count(*) FROM public.amen_embeddings),
    ''documents_legacy'', (SELECT count(*) FROM public.documents)
  )
';

GRANT EXECUTE ON FUNCTION public.get_amen_metrics() TO anon, authenticated, service_role;
