-- V754 SHADOW BGE-M3 1024d - NO TOUCH amen_chunks PROD
-- A executer APRES Owner gate Recall@10 >0.70

-- 1. Shadow table
CREATE TABLE IF NOT EXISTS public.amen_chunks_bge1024_shadow (
  id uuid PRIMARY KEY,
  content text NOT NULL,
  embedding vector(1024),
  created_at timestamptz DEFAULT now()
);
CREATE INDEX IF NOT EXISTS idx_bge1024_shadow_hnsw ON public.amen_chunks_bge1024_shadow USING hnsw (embedding vector_cosine_ops);

-- 2. Shadow RPC
CREATE OR REPLACE FUNCTION public.match_documents_shadow(
  query_embedding vector(1024),
  match_threshold float,
  match_count int
) RETURNS TABLE(id uuid, content text, similarity float)
LANGUAGE sql AS $$
  SELECT id, content, 1 - (embedding <=> query_embedding)::float as similarity
  FROM public.amen_chunks_bge1024_shadow
  WHERE embedding IS NOT NULL AND 1 - (embedding <=> query_embedding) > match_threshold
  ORDER BY embedding <=> query_embedding LIMIT match_count;
$$;

-- 3. Grant (comme ton amen.match_documents)
GRANT EXECUTE ON FUNCTION public.match_documents_shadow(vector(1024), float, int) TO anon, authenticated, postgres, service_role;

-- 4. Test query (apres insert 1000 lignes)
-- SELECT * FROM public.match_documents_shadow((SELECT embedding FROM amen_chunks_bge1024_shadow LIMIT 1), 0.2, 10);
