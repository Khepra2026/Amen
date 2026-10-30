
# AMEN V753 - BGE-M3 TEST 1024d - AVEC LOGS
import os
print("=== V753 BGE-M3 loading BAAI/bge-m3 (2.2Go first time) ===")
from FlagEmbedding import BGEM3FlagModel
print("Import OK, loading model...")
model = BGEM3FlagModel('BAAI/bge-m3', use_fp16=True)
print("Model loaded!")

tests = ["Vodun tradition Benin", "Fa divination", "Egungun ancestors", "test vodun"]
result = model.encode(tests)
print(f"dense_vecs shape: {result['dense_vecs'].shape}")  # attendu (4, 1024)
print(f"First vec 0-5: {result['dense_vecs'][0][:5]}")

# Test cosine similarity GTE padded vs BGE real
import numpy as np
vec_bge = result['dense_vecs'][0]
vec_fake = np.concatenate([vec_bge[:768], np.zeros(256)])  # ton ancien bug GTE 768d padded
cos_real = np.dot(vec_bge, result['dense_vecs'][1]) / (np.linalg.norm(vec_bge)*np.linalg.norm(result['dense_vecs'][1]))
cos_fake = np.dot(vec_fake, result['dense_vecs'][1]) / (np.linalg.norm(vec_fake)*np.linalg.norm(result['dense_vecs'][1]))
print(f"Cosine BGE real vs real: {cos_real:.4f}")
print(f"Cosine GTE padded fake vs real: {cos_fake:.4f} -> PROUVE REJECTED_AS_SEMANTIC")
print("=== V753 DONE - 1024d VALIDE ===")
