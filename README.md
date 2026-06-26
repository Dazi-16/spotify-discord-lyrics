# Spotify Discord Lyrics Status

Menampilkan lirik lagu yang sedang diputar di Spotify Desktop ke Custom Status Discord secara otomatis dan real-time.

Program mengambil informasi lagu melalui Windows System Media Transport Controls (SMTC) dan mencari lirik tersinkronisasi menggunakan LRCLIB. Jika lirik tidak tersedia, status Discord akan menampilkan nama artis dan judul lagu sebagai fallback.

---

## Features

- Real-time lyric synchronization
- Automatic lyric caching (1 hour)
- Smart fallback when lyrics are unavailable
- Automatic rate-limit handling
- Lightweight and easy to run

---

## Requirements

### Operating System
- Windows 10
- Windows 11

### Software
- Python 3.8 or newer
- Spotify Desktop Application

> During Python installation, make sure **Add Python to PATH** is enabled.

---

## Installation

### 1. Download Project Files

Place the following files in the same directory:

```text
main.py
requirements.txt
CLICK_INSTALL.bat
Start.bat
```

### 2. Run Initial Setup

Execute:

```text
CLICK_INSTALL.bat
```

The installer will:

1. Verify Python installation
2. Create a virtual environment (`.venv`)
3. Install required dependencies
4. Generate `config.json` automatically

---

## Configuration

After installation, a `config.json` file will be created:

```json
{
  "discord_token": "",
  "time_offset": 2.0
}
```

| Option | Description |
|----------|-------------|
| `discord_token` | Discord user token used to update custom status |
| `time_offset` | Lyric synchronization offset in seconds |

---

## Running the Application

### Recommended Method

Run:

```text
Start.bat
```

### Manual Method

Activate the virtual environment:

```bash
.venv\Scripts\activate
```

Start the application:

```bash
python main.py
```

---

## Project Structure

```text
.
├── main.py
├── requirements.txt
├── config.json
├── CLICK_INSTALL.bat
└── Start.bat
```

| File | Purpose |
|------|---------|
| `main.py` | Main application |
| `requirements.txt` | Python dependencies |
| `config.json` | User configuration |
| `CLICK_INSTALL.bat` | Initial setup script |
| `Start.bat` | Application launcher |

---

## Stopping the Application

Close the terminal window or press:

```text
Ctrl + C
```

---

## Notes

- Spotify Desktop must be running.
- Discord must be logged in.
- Internet connection is required for lyric retrieval.
- Some songs may not have synchronized lyrics available.

---

## Disclaimer

This project uses a Discord user token to update custom status. Use at your own risk and ensure compliance with Discord's Terms of Service.

