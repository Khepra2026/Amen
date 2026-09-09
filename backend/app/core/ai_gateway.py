from abc import ABC, abstractmethod
import httpx
from.config import settings

class AIProvider(ABC):
    @abstractmethod
    async def generate(self, prompt: str, **kwargs) -> str: pass
    @abstractmethod
    async def embed(self, text: str) -> list[float]: pass

class OllamaProvider(AIProvider):
    async def generate(self, prompt: str, model: str = None, **kwargs):
        # ESSAIE Ollama, sinon fallback DEV pour que localhost:5173 marche sans Ollama
        try:
            async with httpx.AsyncClient(timeout=120) as client:
                r = await client.post(f"{settings.OLLAMA_URL}/api/generate", json={
                    "model": model or settings.LLM_MODEL,
                    "prompt": prompt,
                    "stream": False,
                    "options": {"temperature": kwargs.get("temperature", 0.3)}
                })
                r.raise_for_status()
                data = r.json()
                # Ollama peut renvoyer 'response' ou 'message'
                return data.get("response","") or data.get("message","") or str(data)
        except Exception as e:
            # MODE DEV - pas besoin d'Ollama pour tester le frontend
            print(f"[AMEN] Ollama offline ({settings.OLLAMA_URL}): {e} -> fallback DEV")
            # Extrait la question du system_prompt
            q = prompt.split("Question:")[-1].strip() if "Question:" in prompt else prompt[:400]
            agent = "ARCHIVIST"
            if "comparer" in q.lower() or "compare" in q.lower():
                agent = "COMPARATIVE"
            elif "yoga" in q.lower():
                agent = "VEDANTA"
            elif "thot" in q.lower() or "maat" in q.lower():
                agent = "KEMET"

            return f"""[MODE DEV - Ollama non connecté - {settings.LLM_MODEL} @ {settings.OLLAMA_URL}]

Tu as interrogé: "{q}"

AGENT: {agent} | CONFIANCE: S2 (Tradition attestée) | SOURCE: Fallback DEV

Réponse AMEN simulée (installe Ollama pour vraie IA):
Le concept "{q[:80]}" relève de l'étude comparative des traditions.

- Fait historique: Tradition documentée (S1)
- Source primaire: Corpus de référence à ingérer dans /corpus
- Interprétation: Analyse herméneutique en cours

Pour activer la vraie génération:
1. Installe Ollama: https://ollama.com
2. lance: ollama pull {settings.LLM_MODEL}
3. ollama serve

Backend FastAPI fonctionne correctement - c'est juste Ollama qui est offline, pas le backend.

Gouvernance AMEN: S0=Source primaire, S1=Fait historique, S2=Tradition attestée, S3=Interprétation académique, S4=Hypothèse, S5=Croyance, S6=Non vérifiable.
"""

    async def embed(self, text: str):
        try:
            async with httpx.AsyncClient(timeout=60) as client:
                r = await client.post(f"{settings.OLLAMA_URL}/api/embed", json={
                    "model": settings.EMBEDDING_MODEL,
                    "input": text
                })
                r.raise_for_status()
                return r.json().get("embeddings", [[]])[0]
        except:
            # Fallback hash 384 dim pour que Qdrant ne crash pas
            return [0.0]*384

class LocalEmbeddingProvider(AIProvider):
    _model = None
    def _get_model(self):
        if self._model is None:
            try:
                from sentence_transformers import SentenceTransformer
                print("[AMEN] Chargement sentence-transformers/all-MiniLM-L6-v2...")
                self._model = SentenceTransformer("sentence-transformers/all-MiniLM-L6-v2")
            except ImportError as e:
                print(f"[AMEN] sentence_transformers manquant: {e} -> fallback hash")
                self._model = False
            except Exception as e:
                print(f"[AMEN] Erreur chargement modèle: {e} -> fallback hash")
                self._model = False
        return self._model

    async def generate(self, prompt: str, **kwargs):
        raise NotImplementedError("Embedding only - utilise OllamaProvider pour generate")

    async def embed(self, text: str):
        m = self._get_model()
        if m and m is not False:
            try:
                return m.encode(text).tolist()
            except Exception as e:
                print(f"[AMEN] encode failed: {e} -> fallback hash")
        # fallback simple hash embedding - 384 dim compatible Qdrant
        import hashlib
        h = hashlib.sha256(text.encode()).digest()
        # répète le hash pour atteindre 384
        extended = (h * ((384 // len(h)) + 1))[:384]
        return [float(b)/255.0 for b in extended]

# Lazy registry - pas d'instanciation au import (évite crash au startup)
_providers = {}

def get_provider(name="ollama") -> AIProvider:
    if name not in _providers:
        if name == "ollama":
            _providers[name] = OllamaProvider()
        else:
            _providers[name] = LocalEmbeddingProvider()
    return _providers[name]