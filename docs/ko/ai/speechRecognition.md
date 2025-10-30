# Microsoft Speech Recognition (Microsoft.Speech)

## 1. 개요
**Microsoft Server Speech Platform Runtime**은 **음성 인식 및 합성**을 지원하는 런타임입니다.  
VoiceScriptPlayer에서는 이를 통해 **음성 인식(STT)** 기능을 사용할 수 있습니다.  

> ⚠️ Windows 내장 SAPI(`System.Speech`)와 달리, 별도의 **런타임**과 **언어팩**을 설치해야 정상 동작합니다.

---

## 2. 설치 및 준비

### 1) 필수 다운로드
아래 두 가지를 반드시 설치해야 합니다:

- **Microsoft Server Speech Platform Runtime (x64)**  
  [다운로드 링크](https://www.microsoft.com/en-us/download/details.aspx?id=27225)

- **Microsoft Server Speech Recognition Language Packs (언어팩 모음)**  
  [다운로드 링크](https://www.microsoft.com/en-us/download/details.aspx?id=27224)
![설치 확인 화면](../images/languagepack_setup_file.png)

> 첫 번째 파일은 **런타임 엔진**, 두 번째 파일은 **언어팩(여러 언어 지원)** 입니다.
> 두번째 파일은 끝이 TELE로 끝나는게 해당 언어의 언어팩입니다.
---

### 2) 언어팩 주의사항
- 반드시 자신의 **Windows 언어 설정** 또는 **프로젝트에서 요구하는 언어**에 맞는 언어팩을 설치해야 합니다.  
- 예시 언어 코드:  
  - `en-US` → 영어 (미국)  
  - `ko-KR` → 한국어  
  - `ja-JP` → 일본어  
  - `zh-CN` → 중국어 (간체)  
- 올바른 언어팩이 설치되지 않으면 인식기가 실행되지 않거나 오류가 발생합니다.

---

### 3) 설치 확인 방법
설치가 정상적으로 되었는지 확인하려면:

1. **제어판 → 프로그램 및 기능**을 엽니다.  
2. 아래 두 항목이 보이면 정상 설치된 것입니다:  
   - `Microsoft Server Speech Platform Runtime (x64)`  
   - `Microsoft Server Speech Recognition Language - <설치한 언어>`  

예시 (한국어 언어팩 설치):  
![설치 확인 화면](../images/speech_recognition_setup.png)

---

## 3. VoiceScriptPlayer에서의 사용
- 설치가 완료되면 VoiceScriptPlayer가 **자동으로 런타임과 언어팩을 탐색**합니다.  
- 사용자가 별도의 실행을 할 필요는 없으며, 프로그램이 필요한 언어팩이 설치되어 있는지 확인 후 인식기를 시작합니다.

---

## 4. 실행 오류 해결

### 1) `런타임 설치 오류`
![런차임 설치 오류](../images/setup_error.png)

- **원인:** 런타임이 설치되지 않았거나, 32/64비트 불일치  
- **해결 방법:**  
  - `Microsoft Server Speech Platform Runtime (x64)`가 설치되어 있는지 확인  

### 2) `언어팩이 설치되지 않음`
![언어 리소스 실패](../images/languagepack_error.png)

- **원인:** 필요한 언어팩이 설치되지 않음  
- **해결 방법:**  
  - [언어팩 다운로드 페이지](https://www.microsoft.com/en-us/download/details.aspx?id=27224)에서 프로젝트에 맞는 언어팩 설치  
  - 언어 코드(`ko-KR`, `en-US`, `ja-JP` 등)가 일치하는지 확인

---

## 5. 주의사항
- 반드시 **x64 런타임**을 설치해야 합니다. (x86 미지원)  
- 사용하는 **언어별로 언어팩을 따로 설치**해야 합니다.  
- Microsoft Speech Platform은 더 이상 업데이트되지 않으므로, 최신 기능은 제공되지 않습니다.  

---

## 6. 라이선스 및 출처
- **Microsoft Server Speech Platform Runtime**: Microsoft Software License Terms  
- 공식 다운로드:  
  - [Runtime (x64)](https://www.microsoft.com/en-us/download/details.aspx?id=27225)  
  - [Language Packs](https://www.microsoft.com/en-us/download/details.aspx?id=27224)  
