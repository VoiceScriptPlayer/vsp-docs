# DeepL 번역 (Text Translation)

## 1. 개요 (Overview)
[DeepL](https://www.deepl.com/)은 세계 최고 수준의 **AI 번역 서비스**입니다.  
자연스러운 문장 표현과 문맥 인식에 강하며, VoiceScriptPlayer에서는  
**자막 번역, 실시간 대사 번역, 인터페이스 다국어 변환** 등에 활용됩니다.

---

## 2. 계정 생성 (Account Creation)
DeepL API를 사용하기 위해서는 **DeepL 계정**이 필요합니다.

1. [DeepL 공식 사이트](https://www.deepl.com/pro-api) 에 접속  
2. **“무료 체험 시작” (Free API plan)** 또는 **유료 요금제 (Pro)** 선택  
3. 이메일로 회원가입 후 계정 인증  
4. 로그인 후 **[Account → API Key]** 메뉴에서 API 키 확인

> 🔑 무료 요금제(API Free)는 월 50만자까지 번역이 가능합니다.  
> Pro 요금제는 더 많은 용량과 빠른 응답 속도를 제공합니다.

---

## 3. API 키 발급 (API Key Setup)
회원가입 후 [DeepL 계정 페이지](https://www.deepl.com/account/summary)에서  
다음과 같이 API 키를 복사할 수 있습니다:

```
Example:
auth_key: 1234abcd-5678efgh-ijklmnop-qrstuvwx:fx
```

이 키를 VoiceScriptPlayer 설정의 **DeepL API 키 입력란**에 붙여넣으면 됩니다.

> ⚠️ API 키는 개인 식별 정보이므로 **절대 공개 저장소나 공유 문서에 노출하지 마세요.**

---

## 4. 설정 방법 (Configuration)
VoiceScriptPlayer에서는 **DeepL 번역 설정**을 통해 다음 항목을 지정할 수 있습니다.

| 항목 | 설명 |
|------|------|
| API Key | DeepL 계정에서 발급받은 인증 키 |
| Source Language | 번역할 원문 언어 (예: `JA`, `EN`, `KO`) |
| Target Language | 번역 결과 언어 (예: `EN`, `KO`, `JA`) |

---

## 5. 사용 방법 (Usage)
1. Whisper나 다른 STT 엔진으로 텍스트를 추출  
2. 번역 대상 언어를 설정 (예: 일본어 → 한국어)  
3. 번역 실행 버튼을 클릭  
4. 결과가 자막 또는 텍스트로 표시됨  

> 💡 DeepL은 문장 단위 번역에 최적화되어 있으므로, 자막 문장을 일정 길이로 나누어 번역하는 것이 자연스러운 결과를 얻는 데 도움이 됩니다.

---

## 6. 주의사항 (Notes & Limitations)
- 무료 플랜에서는 **월 50만자** 제한이 있습니다.  
- API 키는 계정별로 고유하며, 여러 PC에서 동시에 사용 시 **요청 제한**이 발생할 수 있습니다.  
- DeepL은 인터넷 연결이 반드시 필요합니다.  
- 번역 품질은 언어쌍(예: 영어↔일본어, 영어↔한국어)에 따라 다를 수 있습니다.  
- **DeepL API Free**와 **DeepL API Pro**는 서로 다른 엔드포인트를 사용합니다.

---

## 7. 라이선스 및 출처 (License & Credits)
- **DeepL API**: 독점 라이선스 (© DeepL SE)  
- 공식 사이트: [https://www.deepl.com](https://www.deepl.com)  
- 공식 API 문서: [https://www.deepl.com/docs-api](https://www.deepl.com/docs-api)  
- 상업적 사용 가능 (단, DeepL 서비스 약관을 반드시 준수해야 합니다.)

---

## 8. 문제 해결 (Troubleshooting / FAQ)
- ❓ *"Invalid authentication key" 오류가 발생합니다.*  
  → API 키가 올바른지, 공백 없이 입력되었는지 확인하세요.  

- ❓ *"Quota exceeded" 오류가 발생합니다.*  
  → 월 번역 한도(50만자)를 초과했습니다. Pro 요금제로 업그레이드하거나 다음 달까지 기다리세요.  

- ❓ *"번역이 되지 않습니다."*  
  → 네트워크 연결 상태를 확인하고, API Free/Pro 엔드포인트가 올바른지 점검하세요.  
