from fastapi import APIRouter
from fastapi.responses import StreamingResponse
from pydantic import BaseModel
from app.agents.orchestrator import AMENOrchestrator
import asyncio, json

router = APIRouter()
orch = AMENOrchestrator()

class ChatReq(BaseModel):
    message: str
    conversation_id: str | None = None

@router.post("")
async def chat(req: ChatReq):
    result = await orch.route(req.message)
    return result

@router.post("/stream")
async def chat_stream(req: ChatReq):
    async def gen():
        result = await orch.route(req.message)
        # simulation streaming token par token
        for token in result["answer"].split():
            yield f"data: {json.dumps({'token': token+' '})}\n\n"
            await asyncio.sleep(0.03)
        yield f"data: {json.dumps({'done': True, 'meta': result})}\n\n"
    return StreamingResponse(gen(), media_type="text/event-stream")
