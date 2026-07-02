# Simple FastAPI Application

A simple, boilerplate Python FastAPI application with a single endpoint, located right on your Desktop.

## Project Structure
- [main.py](file:///C:/Users/yogesh%20jawlekar/Desktop/simple-api-app/main.py): Contains the FastAPI application logic and the root endpoint.
- [requirements.txt](file:///C:/Users/yogesh%20jawlekar/Desktop/simple-api-app/requirements.txt): Lists the Python package dependencies (`fastapi` and `uvicorn`).
- [run.bat](file:///C:/Users/yogesh%20jawlekar/Desktop/simple-api-app/run.bat): A Windows batch script that automates virtual environment creation, dependency installation, and server startup.

## How to Run the App

### Option 1: Automatic Setup (Recommended for Windows)
Simply double-click the **`run.bat`** file in the `simple-api-app` folder. 
This script will:
1. Detect Python.
2. Create a virtual environment (`.venv`) if one does not exist.
3. Install/upgrade `pip`, `fastapi`, and `uvicorn`.
4. Start the development server at `http://127.0.0.1:8000`.

### Option 2: Manual Setup (Terminal)
Open your terminal (PowerShell or Command Prompt) and run the following commands:

1. **Navigate to the folder:**
   ```powershell
   cd "C:\Users\yogesh jawlekar\Desktop\simple-api-app"
   ```

2. **Create a virtual environment:**
   ```powershell
   python -m venv .venv
   ```

3. **Activate the virtual environment:**
   - **PowerShell:**
     ```powershell
     .venv\Scripts\Activate.ps1
     ```
   - **Command Prompt (cmd):**
     ```cmd
     .venv\Scripts\activate.bat
     ```

4. **Install dependencies:**
   ```powershell
   pip install -r requirements.txt
   ```

5. **Start the FastAPI application:**
   ```powershell
   uvicorn main:app --reload
   ```

## Using the API
Once the server is running:
- Open your browser and navigate to **`http://127.0.0.1:8000/`** to see the JSON response:
  ```json
  {
      "message": "Hello from FastAPI!",
      "status": "healthy",
      "features": ["FastAPI", "Uvicorn", "Interactive Docs"]
  }
  ```
- Navigate to **`http://127.0.0.1:8000/docs`** to open the interactive Swagger UI API documentation where you can view and test the endpoint directly from your browser.
