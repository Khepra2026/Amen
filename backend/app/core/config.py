from pydantic_settings import BaseSettings
class Settings(BaseSettings):
    DATABASE_URL: str = "postgresql+asyncpg://amen:amen_secret@localhost:5432/amen"
    MONGODB_URL: str = "mongodb://localhost:27017"
    QDRANT_URL: str = "http://localhost:6333"
    OLLAMA_URL: str = "http://localhost:11434"
    REDIS_URL: str = "redis://localhost:6379/0"
    JWT_SECRET: str = "dev_secret_change"
    JWT_ALG: str = "HS256"
    EMBEDDING_MODEL: str = "nomic-embed-text"
    LLM_MODEL: str = "qwen2:0.5b"
    MULTILINGUAL_MODEL: str = "qwen2.5:7b"
    class Config:
        env_file = ".env"
settings = Settings()
