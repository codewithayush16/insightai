@echo off
cd /d C:\Users\Ayush\Insight-AI\project

start "InsightAI Backend" cmd /k ".\.venv\Scripts\python.exe -m uvicorn backend.main:app --reload"

timeout /t 3 /nobreak >nul

start "InsightAI Frontend" cmd /k "cd insightai_website && python -m http.server 5500"

timeout /t 2 /nobreak >nul

start http://localhost:5500/insightai.html