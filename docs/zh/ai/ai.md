# 🤖 AI 集成概述

**VoiceScriptPlayer** 可与多种 AI 服务集成，实现从语音识别、翻译到语音合成的全自动流程。  
以下展示了完整的 AI 流程（Pipeline）及各模块功能说明。

---

## 🧩 整体结构

    🎙️ 语音输入
    ↓
    [Whisper / SpeechRecognition]
    （语音 → 文本转换）
    ↓
    [DeepL / LibreTranslate]
    （文本翻译与 LLM 语义分析）
    ↓
    [ElevenLabs / COEIROINK / Hailuo]
    （文本 → 语音合成）
    ↓
    🔊 VoiceScriptPlayer 输出

> 所有 AI 功能均支持 **本地模式与云端模式**，  
> 即使在网络受限的环境下，也能离线运行。

---

## 🗣️ 语音识别（Speech to Text）

| 引擎 | 说明 | 链接 |
|------|------|------|
| **Whisper** | 高质量的开源语音识别引擎，支持 CPU / GPU | [详细说明](whisper.md) |
| **SpeechRecognition** | 与 Vosk 等集成，可识别实时语音命令 | [详细说明](speechRecognition.md) |

---

## 🧠 翻译与 LLM（Text Processing）

| 引擎 | 功能 | 链接 |
|------|------|------|
| **DeepL** | 高精度翻译（支持韩语、英语、日语） | [详细说明](deepl.md) |
| **LibreTranslate** | 开源翻译服务器，可在本地环境运行 | [详细说明](libretranslate.md) |
| **Meta AI** | 基于 LLM（大型语言模型）的自然语言处理与语义优化 | *开发中* |

---

## 🔊 语音合成（Text to Speech）

| 引擎 | 特点 | 链接 |
|------|------|------|
| **ElevenLabs** | 高自然度的情感语音与多语言支持 | [详细说明](elevenlabs.md) |
| **COEIROINK** | 以日语为核心的高质量情感语音合成引擎 | [详细说明](coeiroink.md) |
| **Hailuo** | 以中文与英文为主的 AI 语音服务 | [详细说明](hailuo.md) |

---

## ⚙️ 配置与设置

- 所有 AI 相关设置保存在 `VoiceScriptPlayer/Option.json` 中。  
- 各服务的 API 密钥（Key）在配置文件的 `AI` 部分分别存储。  
- 离线模式下，系统优先使用 Whisper 与 LibreTranslate 进行处理。

---

## 📚 相关文档

- [Whisper](whisper.md)  
- [ElevenLabs](elevenlabs.md)  
- [COEIROINK](coeiroink.md)  
- [Hailuo](hailuo.md)  
- [LibreTranslate](libretranslate.md)  
- [DeepL](deepl.md)
