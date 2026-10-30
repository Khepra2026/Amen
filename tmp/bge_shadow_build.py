# AMEN V754 SHADOW REBUILD - BGE-M3 1024d - DRYRUN LOCAL
# Usage: python tmp/bge_shadow_build.py --limit 1000 --parquet tmp/amen_bge1024_shadow.parquet
import argparse, os, sys
print("=== V754 SHADOW REBUILD - NO CORPUS WRITE ===", flush=True)
try:
    from FlagEmbedding import BGEM3FlagModel
    import pandas as pd
    import numpy as np
    print("Imports OK", flush=True)
    
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=1000)
    parser.add_argument("--parquet", type=str, default="tmp/amen_bge1024_shadow.parquet")
    parser.add_argument("--batch", type=int, default=12)
    args = parser.parse_args()
    
    print(f"Loading BGE-M3 (cached)...", flush=True)
    model = BGEM3FlagModel('BAAI/bge-m3', use_fp16=True)
    print(f"Model loaded, shape test...", flush=True)
    test = model.encode(["test vodun"], batch_size=1)
    print(f"Test shape: {test['dense_vecs'].shape} -> 1024d OK", flush=True)
    
    # TODO: Replace with real SELECT from Supabase
    # from supabase import create_client
    # supabase = create_client(URL, SERVICE_KEY)
    # res = supabase.table("amen_chunks").select("id, content").limit(args.limit).execute()
    
    print(f"DRYRUN: Would embed {args.limit} chunks -> {args.parquet}", flush=True)
    print(f"Batch size: {args.batch}", flush=True)
    print(f"Next: python tmp/bge_shadow_build.py --limit 1000", flush=True)
    print(f"Then: measure Recall@10 on 50 gold Q - target >0.75 vs GTE padded ~0.41", flush=True)
    print("=== V754 DONE - NO CORPUS TOUCHED ===", flush=True)
    
except Exception as e:
    print(f"ERROR: {e}", flush=True)
    import traceback; traceback.print_exc()
    sys.exit(1)
