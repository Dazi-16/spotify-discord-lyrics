@echo off
title Spotify-Discord Lyrics Status
chcp 65001 >nul
echo ========================================
echo   Spotify-Discord Lyrics Status
echo ========================================
echo.

:: Pindah ke folder script
cd /d "%~dp0"

:: Periksa folder .venv
if not exist ".venv\Scripts\activate.bat" (
    echo [ERROR] Virtual Environment tidak ditemukan!
    echo Membuat .venv baru...
    python -m venv .venv
)

:: Aktivasi environment
echo [OK] Mengaktifkan Virtual Environment...
call .venv\Scripts\activate.bat

:: Memastikan semua modul terinstal dengan aman
echo [OK] Memeriksa modul Python...
pip install aiohttp winrt-runtime winrt-Windows.Media.Control winrt-Windows.Foundation winrt-Windows.Foundation.Collections -q

echo.
echo [OK] Menjalankan script utama...
echo ========================================
echo.

:: Menjalankan script utama
python main.py

:: Menahan jendela agar tidak langsung tertutup jika ada error
echo.
pause