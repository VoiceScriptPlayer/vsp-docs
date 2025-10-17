# 🤖 AI 통합 개요

VoiceScriptPlayer는 여러 AI 서비스와 연동되어, 음성 인식부터 번역, 음성 합성까지의 모든 과정을 자동화합니다.  
아래는 전체 AI 파이프라인의 흐름과 각 기능별 설명입니다.

---

## 🧩 전체 구조

```
🎙️ 음성 입력
↓
[Whisper / SpeechRecognition]
(음성 → 텍스트 변환)
↓
[DeepL / Meta AI / LibreTranslate]
(텍스트 번역 및 LLM 분석)
↓
[ElevenLabs / COEIROINK / Hailuo]
(텍스트 → 음성 변환)
↓
🔊 VoiceScriptPlayer 출력
```

> 모든 AI 기능은 로컬 및 클라우드 환경 모두 지원하며,  
> 네트워크 연결이 제한된 환경에서도 오프라인 처리가 가능합니다.

---

## 🗣️ 음성 인식 (Speech to Text)

| 엔진 | 설명 | 링크 |
|------|------|------|
| **Whisper** | 고품질 오픈소스 음성 인식 엔진으로, CPU/GPU 모두 지원 | [자세히 보기](whisper.md) |
| **SpeechRecognition** | Vosk 등과의 통합을 통해 실시간 음성 명령을 인식 | [자세히 보기](speechRecognition.md) |

---

## 🧠 번역 및 LLM (Text Processing)

| 엔진 | 역할 | 링크 |
|------|------|------|
| **DeepL** | 고정밀 번역 (한국어, 영어, 일본어 지원) | [자세히 보기](deepl.md) |
| **LibreTranslate** | 오픈소스 번역 서버, 로컬 환경에서 사용 가능 | [자세히 보기](libretranslate.md) |
| **Meta AI** | LLM(대형언어모델)을 통한 자연어 처리 및 문맥 보정 | *준비 중* |

---

## 🔊 음성 합성 (Text to Speech)

| 엔진 | 특징 | 링크 |
|------|------|------|
| **ElevenLabs** | 자연스러운 감정 표현과 다국어 지원 | [자세히 보기](elevenlabs.md) |
| **COEIROINK** | 일본어 기반의 고품질 감정 음성 합성 | [자세히 보기](coeiroink.md) |
| **Hailuo** | 중국어 및 영어 중심의 AI 보이스 | [자세히 보기](hailuo.md) |

---

## ⚙️ 구성 및 설정

- AI 관련 설정은 `VoiceScriptPlayer/Option.json`에서 관리됩니다.  
- 각 서비스별 API 키는 `AI` 항목 내에 개별 저장됩니다.
- 오프라인 모드에서는 Whisper 및 LibreTranslate를 우선 사용합니다.

---

## 📚 관련 문서

- [Whisper](whisper.md)
- [ElevenLabs](elevenlabs.md)
- [COEIROINK](coeiroink.md)
- [Hailuo](hailuo.md)
- [LibreTranslate](libretranslate.md)
- [DeepL](deepl.md)
