# Whisper Speech Recognition (Speech-to-Text)

## 1. Overview
Whisper is an **AI-based speech recognition model** developed by OpenAI.  
It can convert audio files into text (STT) and supports multiple languages.  
In VoiceScriptPlayer, Whisper is used for **automatic subtitle generation, script extraction, and real-time voice command recognition**.  

---

## 2. Installation & Setup
VoiceScriptPlayer already includes **WhisperNet**, so no additional installation is required.  
WhisperNet is a .NET implementation of Whisper that allows it to run directly in VoiceScriptPlayer.  
- [WhisperNet GitHub](https://github.com/davidfowl/whisper.net)

### 🔽 Automatic Model Download
In the **AI / Whisper Settings** tab of VoiceScriptPlayer, you can choose a model size  
(`tiny`, `base`, `small`, `medium`, `large`) to automatically download and apply it.  
If you are connected to the internet, no manual download is necessary.

If you prefer, you can also download models manually from the links below:

| Model | Size | Download |
|--------|------|-----------|
| tiny   | ~75 MB  | [Download](https://huggingface.co/ggerganov/whisper.cpp/resolve/main/ggml-tiny.bin) |
| base   | ~142 MB | [Download](https://huggingface.co/ggerganov/whisper.cpp/resolve/main/ggml-base.bin) |
| small  | ~466 MB | [Download](https://huggingface.co/ggerganov/whisper.cpp/resolve/main/ggml-small.bin) |
| medium | ~1.5 GB | [Download](https://huggingface.co/ggerganov/whisper.cpp/resolve/main/ggml-medium.bin) |
| large  | ~2.9 GB | [Download](https://huggingface.co/ggerganov/whisper.cpp/resolve/main/ggml-large.bin) |

> ⚠️ Larger models provide higher accuracy but slower processing and increased memory usage.  

---

## 3. Configuration
- Choose models via WhisperNet within VoiceScriptPlayer.  
- Set default model (e.g., `base`, `medium`)  
- Configure language detection (auto vs. manual)  
- Performance options:  
  - Accuracy Priority / Speed Priority  
  - CPU / GPU mode selection  

---

## 4. Usage
1. Load an audio file (MP3, WAV, MP4, etc.)  
2. Export subtitles as `.srt` or `.vtt`  
3. Extract plain text  
4. Use real-time speech recognition  
5. Workflow example:  
   `File → Whisper Processing → Display Result`

---

## 5. Notes & Limitations
- Processing time and memory usage vary by model size.  
- Long recordings may take more time to process.  
- Performance will be slower without GPU acceleration.  
- Whisper is open source, but **you must check the license terms before commercial use.**  
- Whisper works offline after models are downloaded (internet is only required for initial download).

### ⚡ Performance Benchmark

| Environment | Model | Processing Time for 10-Minute Audio |
|--------------|--------|----------------------------------|
| CPU (Desktop i5/i7) | `base` | ~7–10 minutes |
| CPU (Low-end Laptop) | `base` | ~12–15 minutes |
| GPU (RTX 3060 or higher) | `base` | ~1–2 minutes |
| GPU (High-end RTX 4090) | `large` | ~30 seconds–1 minute |

> 💡 Larger models improve transcription accuracy but increase processing time.  
> Once downloaded, Whisper can be used **completely offline**.  

---

## 6. License & Credits
- **Whisper (original)**: MIT License  
- **Whisper.cpp**: MIT License  
- **WhisperNet**: MIT License  
- Official GitHub repositories:  
  - [Whisper](https://github.com/openai/whisper)  
  - [Whisper.cpp](https://github.com/ggerganov/whisper.cpp)  
  - [WhisperNet](https://github.com/davidfowl/whisper.net)  
- Commercial use allowed (ownership of transcribed text belongs to the user).

---

## 7. Troubleshooting / FAQ
- ❓ *"Model file not found."*  
  → Models can be automatically downloaded in the Whisper settings tab.  
    For manual download, visit the Whisper.cpp GitHub page.  

- ❓ *"Processing is too slow."*  
  → Use a smaller model (`tiny`, `base`) or enable GPU acceleration.  
    On a typical CPU, a 10-minute file takes about 7–10 minutes;  
    with GPU, it completes in about 1–2 minutes.  

- ❓ *"Language is incorrectly detected."*  
  → Disable automatic detection and specify the language manually.  

- ❓ *"Out of memory error."*  
  → Use a smaller model or split the audio file into shorter segments.  
