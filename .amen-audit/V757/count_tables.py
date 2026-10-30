import os
from dotenv import load_dotenv
load_dotenv('.env.local')
from supabase import create_client
url = os.getenv('NEXT_PUBLIC_SUPABASE_URL')
key = os.getenv('SUPABASE_SERVICE_ROLE_KEY')
supabase = create_client(url, key)

tables = ["amen_chunks", "amen_corpus", "amen_embeddings", "embeddings", "amen_embeddings_local", "amen_embedding_queue", "amen_embedding_queue_legacy", "amen_sources"]
for t in tables:
    try:
        res = supabase.table(t).select("*", count="exact", head=True).execute()
        print(f"{t}: {res.count} rows")
    except Exception as e:
        print(f"{t}: ERROR {str(e)[:200]}")

# Try views
try:
    res = supabase.table("v_amen_chunks_provenance").select("*").execute()
    print(f"v_amen_chunks_provenance: {res.data}")
except Exception as e:
    print(f"view error: {e}")
