@echo off
rem NeuroScope 3D - double-click to start everything (landing page, workspace, backend and the four modules).
rem Keep this window open while you use the app; close it (or press Ctrl+C) to stop everything.
title NeuroScope 3D - keep this window open
cd /d "%~dp0"
echo Starting NeuroScope 3D... the website will be at http://localhost:3000
start "" /min cmd /c "timeout /t 45 /nobreak >nul && start http://localhost:3000"
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0start.ps1"
echo.
echo NeuroScope 3D has stopped. Press any key to close this window.
pause >nul
