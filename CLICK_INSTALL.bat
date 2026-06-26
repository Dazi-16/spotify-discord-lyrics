@echo off
chcp 65001 >nul
title "SpotifyLyrics - Instalasi"
color 0A
cd /d "%~dp0"

echo ========================================
echo   Spotify-Discord Lyrics Status
echo ========================================
echo.

:: Memeriksa Python
echo [PRIVERKA] Memeriksa Python...
python --version >nul 2>&1
if errorlevel 1 (
    echo.
    echo [ERROR] Python tidak ditemukan!
    echo.
    echo 1. Unduh di: https://www.python.org/downloads/
    echo 2. Saat instalasi, pastikan CENTANG:
    echo    "Add Python to PATH"
    echo.
    pause
    exit /b 1
)

echo [OK] Python ditemukan
python --version
echo.

if exist ".venv" (
    echo [OK] Virtual Environment ditemukan.
    echo.
    echo [PROSES] Menjalankan script...
    echo ========================================
    echo.
    call .venv\Scripts\activate.bat
    python main.py
) else (
    echo [PROSES] Membuat Virtual Environment (.venv)...
    python -m venv .venv
    if errorlevel 1 (
        echo [ERROR] Gagal membuat .venv
        pause
        exit /b 1
    )
    
    echo [PROSES] Menginstal library pendukung...
    echo (Proses ini memakan waktu 1-2 menit, mohon jangan tutup jendela ini)
    call .venv\Scripts\activate.bat
    pip install -r requirements.txt
    if errorlevel 1 (
        echo [ERROR] Gagal menginstal library
        pause
        exit /b 1
    )
    
    echo.
    echo [OK] Selesai! Membuat file config.json...
    (
        echo {
        echo   "discord_token": "",
        echo   "time_offset": 2.0
        echo }
    ) > config.json
    
    echo.
    echo ========================================
    echo   SEKARANG MASUKKAN TOKEN DI config.json
    echo ========================================
    echo.
    echo 1. Buka file config.json
    echo 2. Masukkan token Anda di antara tanda kutip
    echo 3. Simpan perubahan (Ctrl + S)
    echo 4. Jalankan kembali file ini atau Start.bat
    echo.
    notepad config.json
    
    echo.
    pause
)

echo.
pause