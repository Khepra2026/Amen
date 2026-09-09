from fastapi import APIRouter
router = APIRouter()
@router.get("")
async def list_docs():
    return {"total": 0, "docs": []}
