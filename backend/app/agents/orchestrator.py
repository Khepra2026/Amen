from app.core.ai_gateway import get_provider

AGENTS = ["archivist","bibliographer","historian","philologist","hermeneut","comparative","guardian",
          "kemet","yoruba","vodou","hermetisme","kabbale","vedanta"]

class AMENOrchestrator:
    def __init__(self):
        self.provider = get_provider()
    async def route(self, question: str, mode="comparative"):
        # détection d'intention simple
        if "comparer" in question.lower() or "compare" in question.lower():
            agent = "comparative"
        elif "thot" in question.lower() or "maât" in question.lower():
            agent = "kemet"
        else:
            agent = "archivist"
        system_prompt = f"""Tu es AMEN {agent.upper()}, agent spécialisé.
Règles de gouvernance:
- Distingue toujours: fait historique / source primaire / tradition / interprétation / hypothèse / croyance / recherche académique / non vérifiable.
- Niveau de confiance S0-S6 obligatoire.
- Ne présente jamais S3-S6 comme fait scientifique.
- Cite SOURCE, Auteur, Tradition, Type de source.
- Réponds en français si question en français.
Question: {question}"""
        answer = await self.provider.generate(system_prompt)
        return {"agent": agent, "answer": answer, "sources": [], "reliability": "S2"}
