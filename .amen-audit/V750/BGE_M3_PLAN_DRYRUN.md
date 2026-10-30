# V750 BGE-M3 REBUILD - DRYRUN - AUCUNE ECRITURE CORPUS

ETAT:
- amen-web/src/services/ragConnector.ts = proxy /api/chat (21.42% couvert)
- 152630 chunks en DB = FNV non semantique = REJECTED_AS_SEMANTIC
- API: amen-api doit contenir match_documents RPC

INVARIANT: NE PAS TOUCHER amen_chunks PROD

ETAPES LECTURE SEULE:
1. Extraire: SELECT id, content FROM amen_chunks LIMIT 5 -> verifier chunking
2. Mesurer dim actuelle: SELECT vector_dims(embedding) FROM amen_chunks LIMIT 1
3. Trouver modele actuel dans amen-api: grep -r "openai|cohere|bge|embedding"
4. Creer table shadow: amen_chunks_bge1024_shadow (id uuid, content text, embedding vector(1024))
5. Script local Python: FlagEmbedding BAAI/bge-m3 -> parquet local
6. Test RPC: SELECT * FROM match_documents_shadow(query_embedding, 0.7, 10) sur 1000 lignes
7. Metrique: Recall@10 avant (FNV ~0.05) vs apres (BGE-M3 cible >0.75) sur 50 Q gold

GATE OWNER:
- Si Recall@10 >0.70 et groundedness >0.80: proposer migration prod avec downtimes
- Sinon: rechunker 512 tokens overlap 50

COUVERTURE ACTUELLE:
- 2 tests / 3 passed / ragConnector 21.42%
- Objectif: 70 tests pour atteindre ~60% coverage
