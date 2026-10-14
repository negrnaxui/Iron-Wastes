@echo off
setlocal
cd /d "%~dp0"
title Iron Wastes Pre-Beta
echo ========================================
echo          IRON WASTES - START
echo ========================================
echo.
echo Starting local game server...
echo Keep this window open while playing.
echo.
powershell.exe -NoLogo -NoProfile -ExecutionPolicy Bypass -File "%~dp0server.ps1"
if errorlevel 1 (
    echo.
    echo ERROR: Could not start the local server.
    echo Try right-clicking START_GAME.bat and choose Run as administrator.
    echo.
    pause
)
endlocal
