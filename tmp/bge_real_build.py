# AMEN V755 REAL REBUILD - BGE-M3 1024d
import os, sys
print("=== V755 REAL REBUILD - 1000 chunks ===", flush=True)
from dotenv import load_dotenv
load_dotenv('.env.local')
try:
    from FlagEmbedding import BGEM3FlagModel
    import pandas as pd
    import numpy as np
    from supabase import create_client
    print("Imports OK", flush=True)
    url = os.getenv('NEXT_PUBLIC_SUPABASE_URL')
    key = os.getenv('SUPABASE_SERVICE_ROLE_KEY') or os.getenv('NEXT_PUBLIC_SUPABASE_ANON_KEY')
    print(f"URL: {url[:40]}...", flush=True)
    supabase = create_client(url, key)
    print("Fetching 1000 chunks READ ONLY...", flush=True)
    res = supabase.table("amen_chunks").select("id, content").limit(1000).execute()
    rows = res.data
    print(f"Fetched {len(rows)}", flush=True)
    ids = [r['id'] for r in rows]
    contents = [r['content'][:8000] for r in rows]
    print("Loading BGE-M3...", flush=True)
    model = BGEM3FlagModel('BAAI/bge-m3', use_fp16=True)
    test = model.encode(["test"], batch_size=1)
    print(f"Test shape: {test['dense_vecs'].shape} OK", flush=True)
    result = model.encode(contents, batch_size=12, max_length=512)
    embeddings = result['dense_vecs']
    print(f"Encoded shape: {embeddings.shape}", flush=True)
    df = pd.DataFrame({'id': ids, 'content': contents, 'embedding': list(embeddings)})
    os.makedirs("tmp", exist_ok=True)
    df.to_parquet("tmp/amen_bge1024_shadow.parquet", index=False)
    print(f"Saved {len(df)} -> tmp/amen_bge1024_shadow.parquet", flush=True)
    print("=== DONE NO CORPUS WRITE ===", flush=True)
except Exception as e:
    print(f"ERROR: {e}", flush=True)
    import traceback; traceback.print_exc()
    sys.exit(1)
