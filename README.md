---

# 🎵 Spotify-Discord Lyrics Status

Script Python untuk menampilkan lirik lagu yang sedang diputar di **Spotify Desktop** secara otomatis ke **Custom Status Discord** secara *real-time*.

Script ini mengambil data lagu langsung dari sistem Windows (SMTC) dan mencari lirik yang sinkron (*synced lyrics*) via API **lrclib.net**. Jika lirik tidak ditemukan, status akan otomatis menampilkan nama artis dan judul lagu saja.

---

## 📋 Fitur Utama

* **Real-time Sync** – Menyesuaikan lirik lagu dengan detik berjalan di Spotify.
* **Auto Cache** – Lirik disimpan sementara selama 1 jam untuk menghemat kuota dan mempercepat performa.
* **Smart Fallback** – Jika lirik tidak tersedia di database, status otomatis berubah menjadi `🎵 Nama Artis — Judul Lagu`.
* **Rate-Limit Safe** – Dilengkapi penanganan pembatasan request (*rate limit*) otomatis agar akun Discord Anda tetap aman.

---

## 🛠️ Prasyarat (Prerequisites)

Sebelum menjalankan script ini, pastikan sistem Anda memenuhi persyaratan berikut:

1.  **Sistem Operasi**: Windows 10 atau Windows 11 (diperlukan untuk fitur Windows Media Control).
2.  **Python**: Versi 3.8 ke atas.
    * *Penting:* Saat menginstal Python, pastikan Anda mencentang pilihan **"Add Python to PATH"**.

---

## 🚀 Instalasi & Penggunaan

### Langkah 1: Setup Otomatis (Pertama Kali Menjalankan)
1. Pastikan semua file (`CLICK_INSTALL.bat`, `Start.bat`, `main.py`, dan `requirements.txt`) berada dalam satu folder yang sama.
2. Klik dua kali pada file **`CLICK_INSTALL.bat`**.
3. Script akan otomatis memeriksa Python, membuat Virtual Environment (`.venv`), dan menginstal semua library pendukung.
4. Setelah instalasi selesai, sebuah file bernama **`config.json`** akan otomatis dibuat dan terbuka di Notepad.

### Langkah 2: Mengonfigurasi & Mendapatkan Token Discord
Buka file `config.json` yang terbentuk, Anda akan melihat struktur berikut:
```json
{
  "discord_token": "",
  "time_offset": 2.0
}

```

#### 🔍 Cara Mendapatkan Token Discord Anda:

1. Buka [Discord](https://discord.com) di browser Anda (Google Chrome, Edge, Brave, dll.) dan silakan *login*.
2. Buka Developer Tools dengan menekan tombol **F12** atau kombinasi **Ctrl + Shift + I**.
3. Pilih tab **Application** di bagian atas menu DevTools (jika tidak muncul, klik ikon panah ganda `>>`).
4. Pada menu sebelah kiri di bawah bagian **Storage**, cari dan klik **Local Storage**, lalu pilih **https://discord.com**.
5. Pada kolom pencarian (*Search*), ketik **`token`** (pastikan mengetik `token`, bukan *tokens*).
6. Salin nilai (*value*) token yang muncul.
> 💡 *Tips:* Jika token tidak muncul, aktifkan fitur **Toggle Device Toolbar** dengan menekan **Ctrl + Shift + M** (mode tampilan *mobile*), lalu *refresh* halaman Discord Anda.


7. Tempel (*paste*) token tersebut di dalam tanda kutip pada bagian `"discord_token"` di file `config.json`.
8. *(Opsional)* Ubah nilai `"time_offset"` (dalam detik) jika lirik terasa terlalu cepat atau lambat.
9. Simpan perubahan dengan menekan **Ctrl + S**, lalu tutup Notepad.

> ⚠️ **PERINGATAN KERAS:** Jangan pernah membagikan Token Discord Anda kepada siapa pun! Token tersebut adalah kunci akses penuh ke akun Anda. Pihak Discord maupun pembuat script tidak akan pernah meminta token Anda.

### Langkah 3: Menjalankan Program

Anda bisa memilih salah satu dari dua metode di bawah ini untuk menjalankan program:

#### Metode A: Menggunakan File Batch (Praktis & Direkomendasikan)

* Cukup klik dua kali pada file **`Start.bat`**.

#### Metode B: Menggunakan Terminal / CMD (Manual)

Buka Command Prompt (CMD) atau PowerShell di folder tempat file berada, lalu jalankan perintah berikut:

1. **Aktifkan Virtual Environment:**
```bash
.venv\Scripts\activate

```


2. **Jalankan Script Utama:**
```bash
python main.py

```


*(Catatan: Jika Anda tidak menggunakan `.venv` dan menginstal library secara global, Anda bisa langsung mengetik `python main.py`)*

---

## 📦 Struktur File

* **`main.py`** — Script utama program berbasis `asyncio` dan `winrt`.
* **`requirements.txt`** — Daftar modul/library Python yang dibutuhkan oleh sistem.
* **`config.json`** — File konfigurasi untuk menyimpan token dan *offset* waktu.
* **`CLICK_INSTALL.bat`** — Batch script untuk proses instalasi awal otomatis.
* **`Start.bat`** — Batch script untuk menjalankan program sehari-hari setelah instalasi sukses.

---

## 🛑 Cara Menghentikan Program

Untuk mematikan script, Anda hanya perlu menutup jendela Command Prompt (CMD) / terminal yang sedang berjalan, atau tekan kombinasi tombol **Ctrl + C** pada keyboard di dalam jendela terminal tersebut.

```

***

### Poin-poin Perubahan yang Dilakukan:
* **Perbaikan Typo & Formalitas:** Mengubah kata "*kamu*" menjadi "*Anda*" agar terkesan lebih profesional sebagai dokumentasi *open-source*, serta memperbaiki beberapa struktur kalimat yang kurang rapi.
* **Peningkatan Visual:** Menggunakan pemisah visual (`---`), daftar poin yang lebih konsisten, serta penggunaan *emoji* yang pas (tidak berlebihan) agar nyaman dilihat di GitHub yang berbasis *Dark Mode* maupun *Light Mode*.
* **Penambahan Dokumentasi Token:** Menambahkan seluruh instruksi pencarian token lewat DevTools lengkap dengan *tips* *Toggle Device Toolbar* sesuai yang Anda minta, dibalut dalam format yang mudah dipahami langkah demi langkah.
* **Peringatan Keamanan:** Bagian peringatan token dibuat lebih tegas menggunakan blok kutipan `> ⚠️` agar langsung menarik perhatian pengguna baru.

```