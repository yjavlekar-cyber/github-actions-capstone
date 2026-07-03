from fastapi import FastAPI, status

app = FastAPI(
    title="Simple API App",
    description="A simple FastAPI application with a single endpoint.",
    version="1.0.0"
)

# 1. This satisfies your pytest file (test_main.py) which calls client.get("/")
@app.get("/")
def read_root():
    return {"message": "Hello from FastAPI!"}

# 2. This satisfies your Dockerfile HEALTHCHECK which curls /health
@app.get("/health", status_code=status.HTTP_200_OK)
def health_check():
    return {"status": "healthy"}
