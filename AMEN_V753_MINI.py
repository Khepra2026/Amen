
import sys
print("1. import sentence_transformers", flush=True)
from sentence_transformers import SentenceTransformer
print("2. Loading all-MiniLM-L6-v2 80Mo...", flush=True)
model = SentenceTransformer('all-MiniLM-L6-v2')
print("3. Encoding...", flush=True)
vec = model.encode(['Vodun tradition Benin', 'Fa divination system'])
print(f"4. shape={vec.shape} -> OK", flush=True)
print(f"5. vec0[:3]={vec[0][:3]}", flush=True)
print("DONE", flush=True)
