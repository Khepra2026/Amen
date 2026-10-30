-- FINAL GO RPC - 151k BGE-M3 1024d
CREATE INDEX IF NOT EXISTS idx_amen_chunks_hnsw_1024 ON public.amen_chunks USING hnsw (embedding vector_cosine_ops);
CREATE OR REPLACE FUNCTION public.amen_rag_search_text(p_query_embedding vector(1024), p_match_count int DEFAULT 8, p_min_similarity float DEFAULT 0.22)
RETURNS TABLE(id uuid, content text, similarity float, tradition text, chapter_title text)
LANGUAGE sql STABLE AS $$
  SELECT id, content, 1 - (embedding <=> p_query_embedding)::float, tradition, chapter_title
  FROM public.amen_chunks WHERE embedding IS NOT NULL AND 1 - (embedding <=> p_query_embedding) > p_min_similarity
  ORDER BY embedding <=> p_query_embedding LIMIT p_match_count;
$$;
GRANT EXECUTE ON FUNCTION public.amen_rag_search_text(vector(1024), int, float) TO anon, authenticated, service_role;
SELECT count(*) as total, count(embedding) as embedded FROM public.amen_chunks;
