# 🤖 AI Integration Overview

**VoiceScriptPlayer** integrates with multiple AI services to automate the entire process—from speech recognition to translation and voice synthesis.  
Below is an overview of the full AI pipeline and the role of each component.

---

## 🧩 System Architecture

    🎙️ Speech Input
    ↓
    [Whisper / SpeechRecognition]
    (Speech → Text Conversion)
    ↓
    [DeepL / LibreTranslate]
    (Text Translation and LLM Processing)
    ↓
    [ElevenLabs / COEIROINK / Hailuo]
    (Text → Speech Synthesis)
    ↓
    🔊 VoiceScriptPlayer Output

> All AI features are supported in both **local** and **cloud** environments,  
> and offline processing is possible even in network-restricted conditions.

---

## 🗣️ Speech Recognition (Speech to Text)

| Engine | Description | Link |
|--------|--------------|------|
| **Whisper** | High-quality open-source speech recognition engine supporting both CPU and GPU | [Learn More](whisper.md) |
| **SpeechRecognition** | Integrates with engines like Vosk for real-time voice command recognition | [Learn More](speechRecognition.md) |

---

## 🧠 Translation and LLM (Text Processing)

| Engine | Role | Link |
|--------|------|------|
| **DeepL** | High-precision translation supporting Korean, English, and Japanese | [Learn More](deepl.md) |
| **LibreTranslate** | Open-source translation server that can run locally | [Learn More](libretranslate.md) |
| **Meta AI** | Natural language processing and context correction using LLMs (Large Language Models) | *Coming Soon* |

---

## 🔊 Text to Speech (TTS)

| Engine | Features | Link |
|--------|-----------|------|
| **ElevenLabs** | Natural emotional expression with multilingual support | [Learn More](elevenlabs.md) |
| **COEIROINK** | High-quality Japanese-based emotional voice synthesis | [Learn More](coeiroink.md) |
| **Hailuo** | AI voice engine focusing on Chinese and English | [Learn More](hailuo.md) |

---

## ⚙️ Configuration and Settings

- AI-related configurations are stored in `VoiceScriptPlayer/Option.json`.  
- Each service’s API key is saved individually under the `AI` section.  
- In offline mode, **Whisper** and **LibreTranslate** are prioritized.

---

## 📚 Related Documents

- [Whisper](whisper.md)  
- [ElevenLabs](elevenlabs.md)  
- [COEIROINK](coeiroink.md)  
- [Hailuo](hailuo.md)  
- [LibreTranslate](libretranslate.md)  
- [DeepL](deepl.md)
