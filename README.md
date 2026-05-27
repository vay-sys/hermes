# hermes termux



## Bahan

[Termux]

[Referensi](https://hermes-agent.nousresearch.com/docs/getting-started/termux)

[Troubleshooting](https://hermes-agent.nousresearch.com/docs/getting-started/termux#troubleshooting)

[One-line Auto Installer](https://hermes-agent.nousresearch.com/docs/getting-started/termux#option-1-one-line-installer)

## One-line Auto Installer

Cukup copas dan jalankan maka akan otomatis jalan dan install sendiri semuanya (Tidak termasuk Setting model ollama cloud untuk AI Agent)
```
curl -fsSL https://raw.githubusercontent.com/NousResearch/hermes-agent/main/scripts/install.sh | bash
```

## Tutorial Manual (Recommended)

1. Setting perizinan file termux

(Ini meminta izin agar Termux bisa akses folder penyimpanan HP kamu)
```
termux-setup-storage
```


2. Update Termux

(Memperbarui semua paket di Termux supaya up-to-date)
```
pkg update && pkg upgrade -y
```

3. Install paket-paket yang dibutuhkan

(Menginstal berbagai tools dan bahasa pemrograman yang diperlukan)
```
pkg install -y git python clang rust make pkg-config libffi openssl nodejs ripgrep ffmpeg
```

4. Download (Clone) Hermes

(Mengunduh program Hermes dari GitHub dan masuk ke foldernya)
```
git clone --recurse-submodules https://github.com/NousResearch/hermes-agent.git
cd hermes-agent
```

5. Buat virtual environment

(Membuat lingkungan Python terpisah agar tidak konflik)
```
python -m venv venv
source venv/bin/activate
export ANDROID_API_LEVEL="$(getprop ro.build.version.sdk)"
python -m pip install --upgrade pip setuptools wheel
```

6. Install Hermes versi Termux

(Menginstal Hermes khusus untuk Termux)
```
python -m pip install -e '.[termux]' -c constraints-termux.txt
```

7. Tambahkan Hermes ke PATH

(Supaya kamu bisa menjalankan perintah hermes dari mana saja)
```
ln -sf "$PWD/venv/bin/hermes" "$PREFIX/bin/hermes"
```

8. Cek apakah sudah berhasil terinstall

(Melihat versi dan mengecek apakah ada masalah)
```
hermes version
hermes doctor
```

9. Setup Hermes
```
hermes setup
```
Catatan penting: Sebelum menjalankan hermes setup, kamu harus sudah punya model AI yang akan dipakai. Kalau belum ada, ikuti langkah di bawah ini.


## Setting model ollama cloud untuk AI Agent

1. Install Ollama dan jalankan

Buka tab/session Termux baru lagi, lalu ketik:
```
pkg install ollama
ollama serve
```

2. Login ke Ollama Cloud

Buka tab/session baru termux dan jalankan command ini
```
ollama run gemma4:31b-cloud
```
Setelah muncul link, copy link tersebut, buka di browser, lalu login pakai Google atau akun lain. Setelah login, klik tombol CONNECT.


### Settingan di hermes setup
- quick setup
- Ollama Cloud
- API Key : Ollama
- Base URL : http://localhost:11434/v1
- Pilih model no. 38 (Custom model name)
- Model name : gemma4:31b-cloud
- Keep current (local)
- set up messaging now
- Pilih bebas yang mau diaktifkan dengan cara centang tekan spasi keyboard
- Setting sesuai dengan platform yg dipilih (tutorial ada ketika waktu setting)
- Done


# Tambahan

### Menjalankan Hermes di Termux
```
hermes
```

### Menjalankan Hermes agar bisa digunakan di telegram atau lainnya
```
hermes gateway
```

### Full command hermes
```
hermes help
```
