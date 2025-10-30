# DeepL 구독 및 API 설정 가이드

## 1. 개요 (Overview)
[DeepL](https://www.deepl.com/)은 세계 최고 수준의 **AI 번역 서비스**로,  
VoiceScriptPlayer에서 **자막 번역**, **대사 자동 번역**, **UI 다국어 변환** 등에 사용됩니다.  
  
DeepL을 VoiceScriptPlayer에서 사용하려면, **DeepL API 키(API Free 또는 API Pro)** 를 발급받아야 합니다.

> ⚠️ **중요:**  
> DeepL의 **웹 번역 서비스(translate.deepl.com)** 와  
> **API 서비스(pro-api.deepl.com)** 는 별도의 요금제입니다.  
> 단순한 웹 번역 계정만으로는 VoiceScriptPlayer에서 API를 사용할 수 없습니다.  
> 반드시 API 전용 구독 플랜을 활성화해야 합니다.

---

## 2. 구독 단계 (Subscription Steps)

1. **DeepL 계정 생성**  
   [DeepL Pro API 페이지](https://www.deepl.com/pro-api)로 이동하여 회원가입을 진행합니다.  
   무료 체험(**Free API Plan**) 또는 유료 요금제(**Pro API Plan**) 중 하나를 선택할 수 있습니다.  

2. **이메일 인증**  
   가입 시 입력한 이메일로 인증 메일이 발송됩니다.  
   메일 내의 링크를 클릭해 계정을 활성화하세요.  

3. **요금제 선택 및 결제**  
   - **API Free**: 월 50만자까지 무료 사용 가능  
   - **API Pro**: 번역 한도 없음, 더 빠른 응답 속도 및 우선 처리  
   - 결제 시 반드시 **“DeepL API”** 항목이 선택되어 있는지 확인하세요.  
     (⚠️ *일반 DeepL Pro Personal 요금제는 웹 번역 전용이며, API 키가 발급되지 않습니다.*)

   ![deepl-subscription](../images/deepl_subscription.png)
   
   > ⚠️ **주의사항:**  
   > DeepL에는 두 가지 플랜이 있습니다:  
   > 1️⃣ **DeepL 번역기(Translator)** → 일반 웹 번역용 (API 미지원)  
   > 2️⃣ **DeepL API** → 프로그램 연동용 (VoiceScriptPlayer에서 사용)  
   >
   > VoiceScriptPlayer에서는 반드시 **DeepL API** 플랜을 구독해야 합니다.  
   > “DeepL 번역기” 플랜을 결제하면 API Key가 발급되지 않아 연결할 수 없습니다.  

4. **API Key 발급**  
   로그인 후 [DeepL 계정 페이지](https://www.deepl.com/ko/your-account/keys)에서  
   “Authentication Key (auth_key)”를 확인할 수 있습니다.  

   예시:
    auth_key: 1234abcd-5678efgh-ijklmnop-qrstuvwx:fx

이 키를 VoiceScriptPlayer 설정의 **DeepL API 키 입력란**에 붙여넣으면 됩니다.

5. **요금제 관리 및 갱신**  
구독 및 결제 내역은 [DeepL 결제 관리 페이지](https://www.deepl.com/account/plan)에서 확인할 수 있습니다.  
요금제 변경, 자동 결제 중단, 사용량 확인도 가능합니다.

---

## 3. 요금제 비교 (Pricing Overview)

| 구분 | 이름 | 주요 특징 | 월 이용 한도 | 가격(USD 기준) |
|------|------|------------|----------------|----------------|
| **무료** | DeepL API Free | 기본 번역 기능 제공 | 50만자 | 무료 |
| **유료** | DeepL API Pro | 무제한 번역, 빠른 응답 속도 | 제한 없음 | $5.49 + 사용량 기반 |

> 💡 **참고:**  
> DeepL API Free와 DeepL API Pro는 **서버 엔드포인트가 다릅니다.**  
> - Free: `https://api-free.deepl.com/v2/translate`  
> - Pro: `https://api.deepl.com/v2/translate`  
> VoiceScriptPlayer는 자동으로 올바른 엔드포인트를 감지합니다.

---

## 4. API 연결 확인 (Connection Test)

VoiceScriptPlayer에서 다음 단계를 통해 연결 상태를 확인할 수 있습니다.

1. 설정 → **AI 설정 → DeepL** 메뉴로 이동  
2. 발급받은 API Key 입력  
3. “테스트 번역” 버튼 클릭  
4. “사용량:0 / 전체:0” 메시지가 표시되면 연결 완료 (프로버전의 경우 0/0)  

![deepl-test](../images/deepl_test.png)

---

## 5. 주의사항 (Notes & Limitations)
- **웹 계정**(DeepL Pro Personal, Starter, Advanced)은 API 사용이 불가능합니다.  
- **API Key 유출 시** 즉시 DeepL 계정에서 키를 재발급하세요.  
- API Free 요금제는 월 50만자 초과 시 자동으로 중단됩니다.  
- API Pro는 초과 요금이 사용량에 따라 청구됩니다.  
- API는 인터넷 연결이 필수입니다.  

---

## 6. 관련 문서
- [AI → DeepL 사용 방법](../ai/deepl.md)  
- [DeepL Pro API 페이지](https://www.deepl.com/pro-api)  
- [DeepL 계정 요금제 관리](https://www.deepl.com/account/plan)  
