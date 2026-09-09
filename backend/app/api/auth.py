from fastapi import APIRouter
router = APIRouter()
@router.post("/login")
async def login():
    return {"access_token": "dev_jwt", "token_type": "bearer"}
