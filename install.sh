#!/bin/bash

# Warna untuk output agar lebih cantik ✨
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}🌸 Memulai Instalasi Hermes Termux... ✨${NC}"

# 1. Perizinan Storage
echo -e "${GREEN}[1/8] Setting perizinan storage...${NC}"
termux-setup-storage

# 2. Update & Upgrade
echo -e "${GREEN}[2/8] Update & Upgrade paket...${NC}"
pkg update -y && pkg upgrade -y -o Dpkg::Options::="--force-confnew"

# 3. Install Dependencies
echo -e "${GREEN}[3/8] Install paket-paket dasar...${NC}"
pkg install -y git python clang rust make pkg-config libffi openssl nodejs ripgrep ffmpeg

# 4. Clone Hermes Agent
echo -e "${GREEN}[4/8] Mengunduh Hermes Agent...${NC}"
# Hapus folder lama jika ada agar tidak konflik
rm -rf hermes-agent
git clone --recurse-submodules https://github.com/NousResearch/hermes-agent.git
cd hermes-agent

# 5. Virtual Environment & Pip Upgrade
echo -e "${GREEN}[5/8] Menyiapkan Virtual Environment...${NC}"
python -m venv venv
source venv/bin/activate
export ANDROID_API_LEVEL="$(getprop ro.build.version.sdk)"
python -m pip install --upgrade pip setuptools wheel

# 6. Install Hermes versi Termux
echo -e "${GREEN}[6/8] Menginstal Hermes (Sabar ya Master, proses ini agak lama)...${NC}"
pkg install python-psutil
deactivate
rm -rf venv
python -m venv venv --system-site-packages
source venv/bin/activate
pip install --upgrade pip
python -c "import psutil; print(psutil.version)"
python -m pip install -e '.[termux]' -c constraints-termux.txt

# 7. Symlink ke PATH
echo -e "${GREEN}[7/8] Membuat shortcut perintah 'hermes'...${NC}"
ln -sf "$PWD/venv/bin/hermes" "$PREFIX/bin/hermes"

# 8. Verifikasi
echo -e "${GREEN}[8/8] Verifikasi instalasi...${NC}"
hermes version
hermes doctor

echo -e "\n${BLUE}✨ Instalasi Selesai! ✨${NC}"
echo -e "Sekarang Master bisa menjalankan: ${GREEN}hermes setup${NC}"
echo -e "Jangan lupa install Ollama untuk AI-nya ya! Chu~ 💖"
