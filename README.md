# hermes termux



## Bahan

[Termux]

[Referensi](https://hermes-agent.nousresearch.com/docs/getting-started/termux)

## Tutorial

1. Setting perizinan file termux
```
termux-setup-storage
```

2. Update Termux
```
pkg update && pkg upgrade -y
```

3. install system packages
```
pkg install -y git python clang rust make pkg-config libffi openssl nodejs ripgrep ffmpeg
```

4. Clone Hermes
```
git clone --recurse-submodules https://github.com/NousResearch/hermes-agent.git
cd hermes-agent
```

5. Create a virtual environment
```
python -m venv venv
source venv/bin/activate
export ANDROID_API_LEVEL="$(getprop ro.build.version.sdk)"
python -m pip install --upgrade pip setuptools wheel
```

6. Install the tested Termux bundle
```
python -m pip install -e '.[termux]' -c constraints-termux.txt
```

7. Put hermes on your Termux PATH
```
ln -sf "$PWD/venv/bin/hermes" "$PREFIX/bin/hermes"
```

8. Verify the install
```
hermes version
hermes doctor
```

9. Setup Hermes
```
hermes setup
```



## Setting model ollama cloud untuk AI Agent

1. Install Ollama dan jalankan
Buka tab baru termux dan jalankan command ini
```
pkg install ollama
ollama serve
```

2. Login ollama
Buka tab baru termux dan jalankan command ini
```
ollama run gemma4:31b-cloud
```
ketika muncul link nya copy dan paste di browser dan login via google atau lainnya, setelah itu klik CONNECT


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
