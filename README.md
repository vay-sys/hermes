# hermes termux


```
termux-setup-storage
```

```
pkg update && pkg upgrade
```

```
pkg install -y git python clang rust make pkg-config libffi openssl nodejs ripgrep ffmpeg
```


```
git clone --recurse-submodules https://github.com/NousResearch/hermes-agent.git
cd hermes-agent
```

```
git submodule update --init --recursive
```

```
python -m venv venv
source venv/bin/activate
export ANDROID_API_LEVEL="$(getprop ro.build.version.sdk)"
python -m pip install --upgrade pip setuptools wheel
```

```
http://localhost:11434/v1
```

```
pkg install ollama
ollama serve
```

```
ollama run gemma4:31b-cloud
```

