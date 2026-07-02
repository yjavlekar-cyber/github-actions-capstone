@echo off
echo ===================================================
echo Starting Simple FastAPI App Setup and Server
echo ===================================================

cd /d "%~dp0"

rem Check if Python is installed
python --version >nul 2>&1
if errorlevel 1 goto nopython

rem Create virtual environment if it doesn't exist
if not exist .venv goto createvenv
goto activatevenv

:createvenv
echo [INFO] Creating virtual environment (.venv)...
python -m venv .venv
if errorlevel 1 goto venvfailed

:activatevenv
echo [INFO] Activating virtual environment...
call .venv\Scripts\activate

rem Install/Upgrade dependencies
echo [INFO] Installing/updating dependencies...
python -m pip install --upgrade pip
pip install -r requirements.txt
if errorlevel 1 goto pipfailed

echo ===================================================
echo [SUCCESS] Setup complete! Starting FastAPI server...
echo Access the API at: http://127.0.0.1:8000
echo Access API Docs at: http://127.0.0.1:8000/docs
echo Press Ctrl+C in this terminal window to stop the server.
echo ===================================================

uvicorn main:app --reload
goto end

:nopython
echo [ERROR] Python is not installed or not in PATH. Please install Python.
pause
exit /b 1

:venvfailed
echo [ERROR] Failed to create virtual environment.
pause
exit /b 1

:pipfailed
echo [ERROR] Failed to install dependencies.
pause
exit /b 1

:end
pause
