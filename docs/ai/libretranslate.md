# LibreTranslate 번역 (Translation)

## 1. 개요 (Overview)
LibreTranslate는 오픈소스 기반의 **기계 번역 엔진**입니다.  
무료로 사용할 수 있으며, 로컬에서 직접 실행하여 인터넷 연결 없이 번역을 수행할 수 있습니다.  
VoiceScriptPlayer에서는 LibreTranslate 서버를 통해 **자막, 대본 번역** 기능을 제공합니다.  

> ⚠️ LibreTranslate는 다른 AI 기능들과 달리, 사용자가 직접 Python 환경을 준비하고 설치해야 합니다.  
> 설치만 완료하면 실행과 연결은 VoiceScriptPlayer가 자동으로 처리합니다.  

---

## 2. 설치 및 준비 (Installation & Setup)

### 1) Python 설치
- **지원되는 버전:** Python **3.11**  
- **지원되지 않는 버전:** Python **3.12, 3.13** (호환성 문제로 동작하지 않음)  
- 다운로드: [Python 3.11.x](https://www.python.org/downloads/release/python-3119/)  

설치 시 주의사항:
- 반드시 **“Add Python to PATH”** 옵션을 체크하세요.  
- 설치 후 명령 프롬프트에서 확인:
  ```bash
  python --version
  pip --version
  ```

### 2) LibreTranslate 설치
Python이 준비되면 명령 프롬프트(또는 PowerShell)에서 입력:
```bash
pip install libretranslate
```

이 과정을 마치면 LibreTranslate가 사용자 환경에 설치됩니다.  

---

## 3. VoiceScriptPlayer에서의 사용
- 설치가 완료되면, VoiceScriptPlayer가 **자동으로 LibreTranslate 실행 파일을 탐색**하고 서버를 실행합니다.  
- 사용자는 별도의 명령어 입력이나 경로 지정이 필요하지 않습니다.  
- 서버가 실행 중일 때 번역 기능이 동작하며, 서버 실행 여부도 프로그램이 자동 확인합니다.  

---

## 4. 주의사항 (Notes & Limitations)
- 반드시 Python 3.11 버전을 설치해야 합니다. (3.12/3.13은 지원되지 않음)  
- 사용자는 설치만 진행하면 되며, 실행과 연결은 프로그램이 담당합니다.  
- 번역 품질은 DeepL, Papago 등 상용 번역기보다 낮을 수 있습니다.  
- 긴 문장보다는 짧게 나눠 번역하는 것이 더 정확합니다.  

---

## 5. 라이선스 및 출처 (License & Credits)
- **LibreTranslate**: AGPL v3 License  
- 공식 GitHub: [https://github.com/LibreTranslate/LibreTranslate](https://github.com/LibreTranslate/LibreTranslate)  
