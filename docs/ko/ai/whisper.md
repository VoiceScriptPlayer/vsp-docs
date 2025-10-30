# Whisper 음성 인식 (Speech-to-Text)

## 1. 개요 (Overview)
Whisper는 OpenAI에서 개발한 **음성 인식 AI**입니다.  
음성 파일을 텍스트로 변환(STT)할 수 있으며, 다양한 언어를 지원합니다.  
VoiceScriptPlayer에서는 **자동 자막 생성, 대본 추출, 실시간 명령 인식** 등에 활용할 수 있습니다.  

---

## 2. 설치 및 준비 (Installation & Setup)
VoiceScriptPlayer에는 이미 **WhisperNet**이 내장되어 있어 별도의 설치 과정이 필요하지 않습니다.  
WhisperNet은 Whisper를 .NET 환경에서 사용할 수 있도록 포팅한 라이브러리입니다.  
- [WhisperNet GitHub](https://github.com/davidfowl/whisper.net)

### 🔽 자동 모델 다운로드
VoiceScriptPlayer 내의 **AI / Whisper 설정 탭**에서 원하는 모델 크기(`tiny`, `base`, `small`, `medium`, `large`)를 선택하면  
자동으로 모델을 다운로드하고 적용할 수 있습니다.  
인터넷 연결만 되어 있으면 별도의 수동 다운로드 과정이 필요 없습니다.

직접 다운로드를 원하는 경우에는 아래 링크에서 수동으로 받을 수도 있습니다:

| 모델명 | 용량 | 다운로드 |
|--------|------|----------|
| tiny   | ~75 MB  | [다운로드](https://huggingface.co/ggerganov/whisper.cpp/resolve/main/ggml-tiny.bin) |
| base   | ~142 MB | [다운로드](https://huggingface.co/ggerganov/whisper.cpp/resolve/main/ggml-base.bin) |
| small  | ~466 MB | [다운로드](https://huggingface.co/ggerganov/whisper.cpp/resolve/main/ggml-small.bin) |
| medium | ~1.5 GB | [다운로드](https://huggingface.co/ggerganov/whisper.cpp/resolve/main/ggml-medium.bin) |
| large  | ~2.9 GB | [다운로드](https://huggingface.co/ggerganov/whisper.cpp/resolve/main/ggml-large.bin) |

> ⚠️ 모델 크기가 커질수록 정확도는 올라가지만 처리 속도가 느려지고 메모리 사용량이 많아집니다.  

---

## 3. 설정 방법 (Configuration)
- VoiceScriptPlayer에서 WhisperNet을 통해 모델을 선택할 수 있습니다.
- 기본 모델 지정 (예: `base`, `medium`)
- 언어 설정 방법 (자동 감지 vs 수동 지정)
- 성능 옵션
  - 정확도 우선 vs 속도 우선
  - CPU / GPU 모드 선택

---

## 4. 사용 방법 (Usage)
1. 음성 파일 불러오기 (MP3, WAV, MP4 등)
2. 자막 파일(SRT, VTT)로 내보내기
3. 텍스트만 추출하기
4. 실시간 음성 인식 사용 예시
5. UI 동작 흐름:  
   `파일 → Whisper 처리 → 결과 표시`

---

## 5. 주의사항 (Notes & Limitations)
- 모델 크기에 따라 속도 및 메모리 사용량이 크게 달라집니다.
- 긴 파일은 처리 시간이 오래 걸릴 수 있습니다.
- GPU 환경이 없는 경우 속도가 느려질 수 있습니다.
- Whisper 자체는 오픈소스이지만, **상업적 이용 시 반드시 라이선스를 확인해야 합니다.**
- 인터넷 연결은 필요 없지만, 모델 다운로드 시에는 인터넷이 필요합니다.

### ⚡ 성능 참고 (Performance Benchmark)

| 환경 | 모델 | 10분 영상 처리 시간(대략) |
|------|------|----------------------|
| CPU (일반 데스크탑 i5/i7급) | `base` | 약 7~10분 |
| CPU (저사양 노트북) | `base` | 약 12~15분 |
| GPU (RTX 3060 이상) | `base` | 약 1~2분 |
| GPU (RTX 4090 등 고성능) | `large` | 약 30초~1분 |

> 💡 모델 크기가 커질수록 정확도는 향상되지만 처리 속도는 느려집니다.  
> Whisper는 오프라인에서도 동작하며, 한 번 모델을 다운로드하면 인터넷 없이도 사용할 수 있습니다.

---

## 6. 라이선스 및 출처 (License & Credits)
- **원본 Whisper**: MIT License  
- **Whisper.cpp**: MIT License  
- **WhisperNet**: MIT License  
- 공식 GitHub:
  - [Whisper](https://github.com/openai/whisper)
  - [Whisper.cpp](https://github.com/ggerganov/whisper.cpp)
  - [WhisperNet](https://github.com/davidfowl/whisper.net)
- 상업적 사용 가능 (단, 변환된 텍스트의 저작권은 사용자에게 있습니다)

---

## 7. 문제 해결 (Troubleshooting / FAQ)
- ❓ *"모델 파일을 찾을 수 없습니다."*  
  → 프로그램 내에서 모델을 자동 다운로드할 수 있습니다.  
    설정 메뉴의 Whisper 탭에서 모델을 선택하면 자동으로 다운로드 및 적용됩니다.  
    수동 다운로드를 원할 경우 Whisper.cpp 페이지에서 직접 받을 수 있습니다.  

- ❓ *"속도가 너무 느립니다."*  
  → 작은 모델(`tiny`, `base`)을 사용하거나 GPU 가속을 설정하세요.  
    일반적인 CPU에서는 10분짜리 영상 기준 약 7~10분 정도가 소요됩니다.  
    GPU를 사용할 경우 약 1~2분 내에 처리됩니다.

- ❓ *"언어가 잘못 인식됩니다."*  
  → 언어를 자동 감지 대신 명시적으로 지정하세요.  

- ❓ *"메모리 부족 오류가 납니다."*  
  → 더 작은 모델을 사용하거나 파일을 나누어 처리하세요.  
