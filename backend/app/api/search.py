from fastapi import APIRouter
from pydantic import BaseModel
router = APIRouter()
class SearchReq(BaseModel):
    query: str
    mode: str = "semantic" # simple, semantic, comparative, documentary
    tradition: str | None = None

@router.post("")
async def search(req: SearchReq):
    # TODO: connecter Qdrant + pgvector
    return {
        "query": req.query,
        "mode": req.mode,
        "results": [
            {"title": "Corpus hermétique", "tradition": "Hermétisme", "reliability": "S0", "snippet": "Exemple..."},
        ]
    }
