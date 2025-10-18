# Intiface 고급 설정 가이드 (Advanced Configuration)

## 1. 개요 (Overview)
이 문서는 Intiface Central을 사용할 때 필요한 **고급 설정 방법**을 설명합니다.  
TCode 기반 장치나 The Handy처럼 **별도의 포트 번호 또는 API Key 설정이 필요한 장치**를  
VoiceScriptPlayer와 함께 사용하는 경우 참고하세요.

---

## 2. TCode 장치 포트 수동 지정 (Manual Port Configuration)

TCode 기반 장치(OSR2, SR6, DIY Motion 장치 등)는  
Intiface에서 자동 인식되지 않기 때문에 **수동으로 포트를 지정해야 합니다.**

### 설정 순서

1. Intiface Central을 종료합니다.  
2. 설정 파일 위치로 이동합니다.  
   - Windows:  
     `%appdata%\com.nonpolynomial\intiface_central\config`  
3. `buttplug-device-config-v3.json` 파일을 메모장으로 엽니다.  
4. 파일 안에서 `"tcode-v03"` 섹션을 찾습니다.  
   아래 예시처럼 `"port"` 항목이 `"default"`로 되어 있을 것입니다.

예시 원본:

    "tcode-v03": {
      "defaults": {
        "name": "TCode v0.3 (Single Linear Axis)",
        "features": [
          {
            "feature-type": "Position",
            "actuator": {
              "step-range": [0, 100],
              "messages": ["LinearCmd"]
            }
          }
        ]
      },
      "communication": [
        {
          "serial": {
            "port": "default",
            "baud-rate": 115200,
            "data-bits": 8,
            "parity": "N",
            "stop-bits": 1
          }
        }
      ]
    }

5. `"port": "default"` 값을 실제 연결된 COM 포트로 변경합니다.  
   예를 들어 장치 관리자에서 확인한 포트가 `COM4`인 경우:

    "port": "COM4"

6. 저장 후 Intiface Central을 다시 실행합니다.  
7. VoiceScriptPlayer에서 **TCode 연결 방식**을 선택하면 해당 포트가 자동으로 인식됩니다.

> ⚠️ Intiface Central에서 지정한 포트가 실제 연결된 장치 포트와 다를 경우  
> “기기를 찾을 수 없습니다” 또는 “연결 실패” 메시지가 표시됩니다.  
> 장치 관리자(예: `USB-SERIAL CH340 (COM3)`)에서 올바른 포트를 반드시 확인하세요.

---

## 3. The Handy API Key 등록 (Registering The Handy API Key)

The Handy 장치는 Intiface에서 제어하려면 **개인 API Key**가 필요합니다.  
이 키는 The Handy 공식 사이트에서 사용자 계정별로 발급받습니다.

### 설정 방법

1. [The Handy 공식 사이트](https://www.handyfeeling.com/) 에 로그인  
2. 오른쪽 상단 메뉴에서 **API Key** 항목을 확인  
3. Intiface Central 실행 후 **Devices 탭 → Handy 설정 메뉴** 클릭  
4. API Key 입력란에 발급받은 키를 붙여넣고 **Save** 버튼 클릭  
5. 장치가 자동으로 연결되면 VoiceScriptPlayer에서 “Intiface Central” 연결 방식으로 인식됩니다.

> 💡 Handy는 Wi-Fi 네트워크를 통해 Intiface와 통신하므로  
> PC와 Handy가 동일한 네트워크(공유기)에 연결되어 있어야 합니다.

---

## 4. Bluetooth 장치 연결 지연 문제 (Bluetooth Pairing Delay)

일부 Bluetooth 장치는 Intiface에서 인식되기까지 약간의 시간이 걸립니다.  
특히 Windows에서 “표준 Bluetooth에서 직렬 링크(COMx)” 형태로 표시된 뒤,  
실제 장치 이름(예: Lovense, HandyLink 등)으로 갱신되기까지 5~10초가 걸릴 수 있습니다.

문제가 발생할 경우 다음을 확인하세요:

- 장치가 Windows 블루투스 설정에서 **정상적으로 페어링**되어 있는지  
- Intiface의 **장치 검색(Rescan Devices)** 버튼을 눌러 수동으로 새로고침  
- 이미 연결된 포트가 다른 프로그램에 점유되어 있지 않은지 확인

---

## 5. 포트 충돌 또는 다중 연결 문제 해결 (Port Conflict)

여러 프로그램이 동시에 같은 포트를 사용하면 연결이 실패할 수 있습니다.  
이 경우 Intiface 또는 VoiceScriptPlayer 중 하나의 포트를 변경해야 합니다.

예시:

- Intiface 설정 파일의 TCode 포트를 `COM5`로 변경  
- VoiceScriptPlayer에서도 포트를 `COM5`로 설정

> ⚠️ 두 프로그램이 동시에 같은 포트를 사용하지 않도록 항상 확인하세요.

---

## 6. 설정 파일 백업 및 초기화 (Reset Configuration)

설정이 꼬이거나 장치 인식이 안 되는 경우,  
Intiface의 설정 파일을 삭제하고 재설정하면 해결되는 경우가 많습니다.

1. Intiface를 종료합니다.  
2. 설정 폴더를 엽니다:  
   `%appdata%\com.nonpolynomial\intiface_central\config`
3. `buttplug-user-device-config-v3.json` 파일을 삭제하거나 백업해 둡니다.  
4. Intiface를 다시 실행하면 새로운 기본 설정 파일이 생성됩니다.

---

## 7. 참고 (References)
- Intiface Central 공식 사이트: [https://intiface.com/central](https://intiface.com/central)  
- The Handy 공식 사이트: [https://www.handyfeeling.com/](https://www.handyfeeling.com/)  
- TCode Protocol 문서: [https://github.com/mxtheturtle/TCode-Protocol](https://github.com/mxtheturtle/TCode-Protocol)  
- VoiceScriptPlayer Intiface 문서: [intiface.md](intiface.md)
