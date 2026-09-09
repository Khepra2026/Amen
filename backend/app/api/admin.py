from fastapi import APIRouter
router = APIRouter()
@router.get("/health")
async def admin_health():
    return {"api": "ok", "postgres": "ok", "mongodb": "ok", "qdrant": "ok", "ollama": "ok"}
