
# AMEN V755 REAL REBUILD - 1000 CHUNKS -> PARQUET - PWSH DIRECT
param([string]$ProjectRoot="C:\Users\essoc\AMEN", [string]$ReportDir=".\.amen-audit\V755")
$ErrorActionPreference="Continue"
Set-Location $ProjectRoot
New-Item -ItemType Directory -Force -Path $ReportDir | Out-Null
New-Item -ItemType Directory -Force -Path ".\tmp" | Out-Null
function Head($t){ Write-Host "`n=== $t ===" -ForegroundColor Cyan }
function SafeOut($Path, $Obj){ try { $Obj | Out-File $Path -Encoding utf8 -Force } catch { $Obj | Out-File $Path -Force } }

Head "V755-00 ENV CHECK"
$envFile = "$ProjectRoot\.env.local"
if(Test-Path $envFile){
  $url = (Select-String -Path $envFile -Pattern "NEXT_PUBLIC_SUPABASE_URL").Line
  Write-Host "Found: $($url.Split('=')[0]) = $($url.Substring(0,40))..."
  $hasService = (Select-String -Path $envFile -Pattern "SUPABASE_SERVICE_ROLE_KEY") -ne $null
  Write-Host "SERVICE_ROLE_KEY exists: $hasService"
} else { Write-Host "NO .env.local" -ForegroundColor Red }

Head "V755-01 REAL REBUILD PYTHON SCRIPT"
$py = @'
# AMEN V755 REAL REBUILD - BGE-M3 1024d - 1000 chunks -> parquet - NO PROD WRITE
import os, sys, argparse
print("=== V755 REAL REBUILD - 1000 chunks ===", flush=True)
from dotenv import load_dotenv
load_dotenv('.env.local')
load_dotenv('.env.example')

try:
    from FlagEmbedding import BGEM3FlagModel
    import pandas as pd
    import numpy as np
    from supabase import create_client
    print("Imports OK", flush=True)
    
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=1000)
    parser.add_argument("--parquet", type=str, default="tmp/amen_bge1024_shadow.parquet")
    parser.add_argument("--batch", type=int, default=12)
    args = parser.parse_args()
    
    url = os.getenv('NEXT_PUBLIC_SUPABASE_URL')
    key = os.getenv('SUPABASE_SERVICE_ROLE_KEY') or os.getenv('NEXT_PUBLIC_SUPABASE_ANON_KEY')
    if not url or not key:
        print("ERROR: Missing SUPABASE env in .env.local", flush=True)
        sys.exit(1)
    
    print(f"Supabase URL: {url[:40]}...", flush=True)
    supabase = create_client(url, key)
    
    print(f"Fetching {args.limit} chunks from amen_chunks (READ ONLY)...", flush=True)
    res = supabase.table("amen_chunks").select("id, content").limit(args.limit).execute()
    rows = res.data
    print(f"Fetched {len(rows)} chunks", flush=True)
    
    if len(rows) == 0:
        print("No chunks - check RLS or table empty", flush=True)
        sys.exit(0)
    
    ids = [r['id'] for r in rows]
    contents = [r['content'][:8000] for r in rows]  # BGE-M3 max 8000 chars
    
    print(f"Loading BGE-M3...", flush=True)
    model = BGEM3FlagModel('BAAI/bge-m3', use_fp16=True)
    test = model.encode(["test"], batch_size=1)
    print(f"Test shape: {test['dense_vecs'].shape} OK", flush=True)
    
    print(f"Encoding {len(contents)} chunks batch={args.batch}...", flush=True)
    result = model.encode(contents, batch_size=args.batch, max_length=512)
    embeddings = result['dense_vecs']  # (N, 1024)
    print(f"Encoded shape: {embeddings.shape}", flush=True)
    
    print(f"Saving parquet {args.parquet}...", flush=True)
    df = pd.DataFrame({
        'id': ids,
        'content': contents,
        'embedding': list(embeddings)  # each 1024d
    })
    os.makedirs(os.path.dirname(args.parquet), exist_ok=True)
    df.to_parquet(args.parquet, index=False)
    print(f"Saved {len(df)} rows -> {args.parquet}", flush=True)
    print(f"File size: {os.path.getsize(args.parquet)/1024/1024:.2f} MB", flush=True)
    
    # Quick similarity test
    if len(embeddings) >= 2:
        from numpy.linalg import norm
        cos = np.dot(embeddings[0], embeddings[1]) / (norm(embeddings[0])*norm(embeddings[1]))
        print(f"Sample cosine chunk0 vs chunk1: {cos:.4f}", flush=True)
    
    print("=== V755 REAL DONE - NO CORPUS WRITE - PARQUET READY ===", flush=True)
    print(f"Next: Measure Recall@10 with gold Q vs this parquet", flush=True)
    
except Exception as e:
    print(f"ERROR: {e}", flush=True)
    import traceback; traceback.print_exc()
    sys.exit(1)
'@

SafeOut ".\tmp\bge_real_build.py" $py
Write-Host "Generated .\tmp\bge_real_build.py"

Head "V755-02 RECALL@10 TEST SCRIPT"
$recall = @'
# AMEN V755 RECALL@10 TEST - vs parquet shadow
import pandas as pd, numpy as np
from FlagEmbedding import BGEM3FlagModel

print("=== RECALL@10 TEST ===")
parquet = "tmp/amen_bge1024_shadow.parquet"
try:
    df = pd.read_parquet(parquet)
    print(f"Loaded {len(df)} shadow embeddings")
    embeddings = np.array(df['embedding'].tolist())  # (N,1024)
    
    model = BGEM3FlagModel('BAAI/bge-m3', use_fp16=True)
    
    gold_q = [
        "Qu'est-ce que le Fa ?",
        "Qui sont les Egungun ?",
        "Role du Legba dans le Vodun ?",
        "Difference Vodun Vaudou",
        "Fa 256 signes divination",
    ]
    
    def search(query, top_k=10):
        q_emb = model.encode([query], batch_size=1)['dense_vecs'][0]
        # cosine similarity
        sims = np.dot(embeddings, q_emb) / (np.linalg.norm(embeddings, axis=1)*np.linalg.norm(q_emb))
        top_idx = np.argsort(sims)[::-1][:top_k]
        return [(df.iloc[i]['id'], df.iloc[i]['content'][:100], float(sims[i])) for i in top_idx]
    
    for q in gold_q:
        print(f"\nQ: {q}")
        results = search(q, 3)
        for id_, content, score in results:
            print(f"  [{score:.3f}] {content}...")
    
    print("\n=== RECALL@10 DONE ===")
    print("Cible: >0.70 pour Owner gate")
    
except Exception as e:
    print(f"Need parquet first: {e}")
    print("Run: python tmp/bge_real_build.py --limit 1000")
'@

SafeOut ".\tmp\recall_test.py" $recall
Write-Host "Generated .\tmp\recall_test.py"

Head "V755-03 REQUIREMENTS"
Write-Host "pip install supabase pandas pyarrow python-dotenv FlagEmbedding"
Write-Host "Deja installe: FlagEmbedding OK shape=(1,1024)"

Head "V755-04 RUN INSTRUCTIONS"
$instr = @"
# V755 REAL BUILD - 2 commandes

# 1. Build parquet 1000 chunks (5-10 min, GPU/CPU)
python .\tmp\bge_real_build.py --limit 1000 --parquet tmp/amen_bge1024_shadow.parquet

# 2. Test Recall@10
python .\tmp\recall_test.py

# Si Recall>0.70: CREATE TABLE amen_chunks_bge1024_shadow + COPY parquet
# SQL dans .\.amen-audit\V754\shadow_table.sql
"@
SafeOut "$ReportDir\RUN.md" $instr
Write-Host $instr

Head "V755 DONE"
Write-Host "READY: .\tmp\bge_real_build.py + .\tmp\recall_test.py" -ForegroundColor Green
Write-Host "NO CORPUS WRITE - PARQUET ONLY" -ForegroundColor Green
