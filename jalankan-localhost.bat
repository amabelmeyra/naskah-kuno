@echo off
title JARANAN - Local Server
echo.
echo  ==========================================
echo   JARANAN — Repositori Naskah Kuno
echo   Dispussipda Kota Malang
echo  ==========================================
echo.

cd /d "%~dp0"

:: Tunggu 1 detik lalu buka browser
timeout /t 1 /nobreak >nul
start "" http://localhost:8000

:: Jalankan server Node.js
node server.js

pause
