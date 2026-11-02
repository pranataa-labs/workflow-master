---
name: clean-code-concise-docs
description: >-
  Standard for writing clean code, concise logs/print(), professional comments (#, //),
  concise README.md documentation, and commit messages without emoji clutter, using formal
  standard language (kata baku), and maintaining high clarity and brevity.
  Use whenever writing code, logging output, code comments, terminal commands, or project documentation.
---

# Clean Code, Concise Logs & Professional Documentation Discipline

Standar rekayasa untuk penulisan kode, pesan log terminal (`print()`, `console.log()`, `logger`), komentar kode (`#`, `//`, `/* */`), dokumentasi `README.md`, dan riwayat commit. Standar ini menegakkan penghapusan emoji berlebihan (*anti-emoji clutter*), penggunaan bahasa baku (*standard formal language*), serta prinsip ringkas, padat, dan jelas (*high signal-to-noise ratio*).

---

## 1. Aturan Penulisan Log & Terminal Output (`print()`, `console.log()`)

### 1.1 Larangan Emoji Berlebihan
- **DILARANG** menambahkan emoji seperti `🚀`, `🎉`, `✨`, `🔥`, `💡`, `✅` secara berulang-ulang pada string `print()`, `echo`, `console.log()`, `logger.info()`, atau `Log::info()`.
- Gunakan tag status teknis standar dalam kurung siku (`[INFO]`, `[SUCCESS]`, `[WARN]`, `[ERROR]`, `[DEBUG]`).

### 1.2 Format Pesan Log Baku dan Terstruktur
- Tulis pesan log secara singkat, padat, menggunakan bahasa baku (atau bahasa Inggris teknis), dan sertakan konteks kunci (ID entitas, waktu, status).
- **Contoh Buruk:**
  ```python
  # BURUK: Bertele-tele dan penuh emoji
  print("🎉✨ YAY! Data pengguna baru telah berhasil kami simpan ke dalam sistem database kami dengan aman! 🚀")
  ```
- **Contoh Baik:**
  ```python
  # BAIK: Baku, ringkas, terstruktur, tanpa emoji
  print(f"[INFO] Pengguna berhasil disimpan: user_id={user.id}, email={user.email}")
  ```

---

## 2. Aturan Komentar Kode (`#`, `//`, `/* */`, `<!-- -->`)

### 2.1 Bersih Tanpa Emoji
- Komentar kode adalah dokumen teknis internal untuk pengembang. Dilarang menempatkan emoji dekoratif pada komentar kode.
- **Contoh Buruk:**
  ```python
  # 🔒 Amankan endpoint ini dari hacker jahat! 🛡️
  # 📦 Ambil data produk dari database 🛒
  ```
- **Contoh Baik:**
  ```python
  # Autentikasi token Bearer dan validasi role pengguna
  # Ambil daftar produk aktif dengan relasi kategori
  ```

### 2.2 Prinsip "Why", Bukan "What"
- Jangan menulis komentar yang hanya mengulang sintaks kode.
- Jelaskan **alasan** di balik keputusan teknis (*why*) atau batasan bisnis, bukan apa yang sudah jelas terbaca dari kode (*what*).
- Gunakan kalimat singkat, padat, dan istilah baku.

---

## 3. Aturan Dokumentasi `README.md` & Markdown

### 3.1 Judul dan Heading Bersih (Anti-Emoji Slop)
- Jangan penuhi setiap heading, subjudul, dan item daftar dengan emoji warni-warni.
- Batasi penggunaan emoji: maksimal 1 ikon representasi produk pada judul utama (# H1), atau tiadakan sama sekali untuk dokumentasi korporat/ilmiah.
- Seluruh subjudul (`## H2`, `### H3`, `#### H4`) harus bersih tanpa emoji.
- **Contoh Buruk:**
  ```markdown
  # 🚀 Sistem Manajemen Inventaris 📦
  ## 📸 Tangkapan Layar Aplikasi 🖼️
  ## ✨ Fitur-Fitur Keren & Canggih 🌟
  ### 🛒 Modul Kasir & Checkout 💳
  ### 📊 Analitik Laporan Penjualan 📈
  ```
- **Contoh Baik:**
  ```markdown
  # Sistem Manajemen Inventaris

  ## Tangkapan Layar Aplikasi
  ## Fitur Utama
  ### Modul Kasir dan Transaksi
  ### Laporan dan Analitik Penjualan
  ```

### 3.2 Bahasa Baku dan Lugas (PUEBI / KBBI)
- Gunakan kosakata baku Bahasa Indonesia (atau Technical English baku yang konsisten).
- Hindari kata tidak baku, singkatan santai (*yg, tdk, bwt, kyk, bgt*), dan bahasa pergaulan di dalam dokumentasi resmi.
- Hindari gaya penulisan retorika AI klise (contoh: *"Di era digital yang serba cepat ini..."*, *"Sebuah bukti nyata dari kekuatan teknologi..."*, *"Bukan hanya X, melainkan juga Y"*).
- Tulis deskripsi secara langsung pada inti masalah (*to the point*), bernilai guna teknis, dan hemat kata.

### 3.3 Struktur Ringkas & Berbobot
1. **Ringkasan:** 1–2 kalimat lugas mengenai tujuan sistem dan pengguna sasaran.
2. **Topik Tag:** Baris tautan topik GitHub sesuai Rule 11.1.
3. **Arsitektur & Tumpukan Teknologi:** Tabel atau daftar singkat komponen utama.
4. **Prasyarat & Instalasi:** Perintah langkah demi langkah yang dapat langsung dieksekusi (*copy-paste ready*).
5. **Konfigurasi Lingkungan:** Contoh berkas `.env.example` ringkas tanpa redundansi.
6. **Verifikasi & Pengujian:** Perintah pengujian otomatis.

---

## 4. Aturan Pesan Git Commit & Command Scripts

### 4.1 Commit Messages
- Terapkan standar Conventional Commits murni: `<type>(<scope>): <subject>`.
- Jangan menggunakan gitmoji atau emoji pada subjek commit kecuali diminta secara eksplisit oleh pengguna.
- Gunakan kata kerja bentuk imperatif baku (misal: `tambahkan`, `perbaiki`, `optimalkan`, `perbarui` atau dalam bahasa Inggris: `add`, `fix`, `refactor`, `update`).

### 4.2 Skrip Terminal & CLI Commands
- Pesan bantuan (*help text*) dan keluaran skrip terminal (`.sh`, `.ps1`, `.bat`) wajib menggunakan teks baku dan ringkas.
- Hindari spanduk teks berlebihan (*banner slop*) yang menghabiskan ruang vertikal terminal.
