
import sys, os
print("DIAG: Checking HF cache", flush=True)
cache = os.path.expanduser("~/.cache/huggingface/hub")
print(f"Cache path: {cache}", flush=True)
if os.path.exists(cache):
    dirs = [d for d in os.listdir(cache) if "bge-m3" in d.lower()]
    print(f"BGE dirs in cache: {dirs}", flush=True)
else:
    print("Cache not exists yet", flush=True)

print("Import FlagEmbedding", flush=True)
from FlagEmbedding import BGEM3FlagModel
print("Creating model - will download 2.2Go if not cached", flush=True)
try:
    model = BGEM3FlagModel('BAAI/bge-m3', use_fp16=True)
    print("Model loaded!", flush=True)
    r = model.encode(['test vodun'], batch_size=1, max_length=512)
    print(f"shape={r['dense_vecs'].shape}", flush=True)
except Exception as e:
    print(f"ERROR: {e}", flush=True)
    import traceback
    traceback.print_exc()
