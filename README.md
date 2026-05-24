# hermes termux


```
termux-setup-storage
```

```
pkg update && pkg upgrade -y
```

```
pkg install -y git python clang rust make pkg-config libffi openssl nodejs ripgrep ffmpeg
```


```
git clone --recurse-submodules https://github.com/NousResearch/hermes-agent.git
cd hermes-agent
```

```
python -m venv venv
source venv/bin/activate
export ANDROID_API_LEVEL="$(getprop ro.build.version.sdk)"
python -m pip install --upgrade pip setuptools wheel
```

```
python -m pip install -e '.[termux]' -c constraints-termux.txt
```

```
ln -sf "$PWD/venv/bin/hermes" "$PREFIX/bin/hermes"
```

```
hermes version
hermes doctor
```

```
hermes
```

```
hermes model
```

```
hermes setup
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

