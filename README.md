# hermes termux



## Bahan

[Termux]

[Referensi](https://hermes-agent.nousresearch.com/docs/getting-started/installation)


## Install Linux Ubuntu (Termux)

1. Setting perizinan file termux

(Ini meminta izin agar Termux bisa akses folder penyimpanan HP kamu)
```
termux-setup-storage
```


2. Install Distro Linux Ubuntu

(Instalasi distro Linux Ubuntu)
```
pkg update && pkg upgrade -y
pkg install -y wget curl proot-distro
pkg install proot-distro
proot-distro install ubuntu
```

3. Login Distro Linux Ubuntu

(Pindah dari termux ke ubuntu)
```
proot-distro login ubuntu
```

## Install Hermes 

1. Install Hermes One-line Auto Installer

(Download dan Install Hermes Agent)
```
curl -fsSL https://hermes-agent.nousresearch.com/install.sh | bash
```

2. Setup Hermes Agent

(Pastikan sudah punya API Key terlebih dahulu)
```
### Settingan di hermes setup
- Full Setup
- Pilih Provider yang sudah dipunyai
- Masukan Base URL dan API Key
- select terminal backend : Keep current (local)
- select platforms to configure : Pilih bebas yang mau diaktifkan dengan cara centang tekan spasi keyboard
- Setting sesuai dengan platform yg dipilih (tutorial ada ketika waktu setting)
- Setting Tools for CLI : Pilih bebas yang mau diaktifkan dengan cara centang tekan spasi keyboard
- Selanjutnya pilih yang diinginkan atau sesuai rekomendasi hermes
- Done
```

3. Cek versi Hermes

(Cek apakah sudah aman)
```
hermes version
hermes doctor
hermes doctor --fix
hermes skills list
```

## Menjalankan Hermes

1. Menjalankan Hermes

(Ada 2 Cara untuk menjalankannya)

a. Menjalankan di CLI
```
hermes
```

b. Menjalankan di platform lain yang sudah di setting di setup hermes
```
hermes gateway
```


Catatan penting: Sebelum menjalankan hermes setup, kamu harus sudah punya API Key yang akan dipakai. Kalau belum ada, di bawah ini API Key gratis trial.


## Website API Key Gratis Trial

- https://ollama.com/
- https://www.orcarouter.ai/playground
- https://zyloo.io/dashboard/free-balance
- https://aerolink.lat/dashboard


# Tambahan

### Setting 9router

1. Install 9router di Termux
(Install 9Router di termux terlebih dahulu sebelum install di Ubuntu)
```
npm install -g 9router
```

2. Install 9router di Ubuntu
(Install dan buka 9router di Ubuntu)

```
## Login ubuntu dulu
npm install -g 9router
9router
```

Full Details : https://github.com/decolua/9router
