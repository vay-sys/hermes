# hermes termux





```
pkg update && pkg upgrade -y
```

```
pkg install -y git python clang rust make pkg-config libffi openssl nodejs ripgrep ffmpeg
```

```
pkg install git
```

```
git clone --recurse-submodules https://github.com/NousResearch/hermes-agent.git
cd hermes-agent
```

```
ollama
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

