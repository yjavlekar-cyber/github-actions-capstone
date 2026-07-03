from fastapi import FastAPI

app = FastAPI(
    title="Simple API App",
    description="A simple FastAPI application with a single endpoint.",
    version="1.0.0"
)

@app.get("/health")
def read_root():
    return {
        "message": "Hello from FastAPI!",
        "status": "healthy",
        "features": ["FastAPI", "Uvicorn", "Interactive Docs"]
    }
