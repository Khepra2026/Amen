# RECALL TEST
import pandas as pd, numpy as np
from FlagEmbedding import BGEM3FlagModel
print("=== RECALL@10 TEST ===")
df = pd.read_parquet("tmp/amen_bge1024_shadow.parquet")
print(f"Loaded {len(df)}")
embeddings = np.array(df['embedding'].tolist())
model = BGEM3FlagModel('BAAI/bge-m3', use_fp16=True)
gold = ["Qu'est-ce que le Fa ?", "Qui sont les Egungun ?", "Role du Legba ?"]
def search(q, k=3):
    q_emb = model.encode([q], batch_size=1)['dense_vecs'][0]
    sims = np.dot(embeddings, q_emb) / (np.linalg.norm(embeddings, axis=1)*np.linalg.norm(q_emb))
    idx = np.argsort(sims)[::-1][:k]
    return [(df.iloc[i]['content'][:80], float(sims[i])) for i in idx]
for q in gold:
    print(f"\nQ: {q}")
    for c,s in search(q):
        print(f" [{s:.3f}] {c}...")
print("DONE")
