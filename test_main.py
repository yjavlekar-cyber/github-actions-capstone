from fastapi.testclient import TestClient
from main import app

# Create a TestClient instance to test the FastAPI app
client = TestClient(app)

def test_read_root():
    """
    Test that the root endpoint (/) returns a 200 OK status
    and the expected JSON response.
    """
    response = client.get("/")
    assert response.status_code == 200
    
    # Assert the JSON structure and values
    data = response.json()
    assert data["status"] == "healthy"
    assert "message" in data
    assert "features" in data
    assert "FastAPI" in data["features"]
