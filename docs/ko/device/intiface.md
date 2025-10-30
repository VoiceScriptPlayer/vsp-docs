# Intiface Central 연결 (Device Bridge Setup)

## 1. 개요 (Overview)
**Intiface Central**은 다양한 기기를 제어하기 위한 **장치 브리지 프로그램**입니다.  
VoiceScriptPlayer는 Intiface와 연동하여, Bluetooth나 USB로 연결된 장치에  
TCode 신호를 보낼 수 있습니다.

> 💡 Intiface는 Buttplug.io 기반의 공식 장치 허브로,  
> 여러 브랜드의 기기를 하나의 서버를 통해 제어할 수 있습니다.

---

## 2. 사전 준비 (Before You Begin)
Intiface Central은 VoiceScriptPlayer와 별도의 프로그램입니다.  
먼저 Intiface를 설치하고 서버를 실행해야 합니다.

### 🔧 설치 방법
1. [Intiface Central 공식 사이트](https://intiface.com/central)에서 최신 버전을 다운로드  
2. 설치 후 프로그램 실행  
3. 상단의 **“Start Server”** 버튼을 눌러 서버를 활성화  
4. 상태 표시줄에 **“Server Running”**이 보이면 준비 완료

---

## 3. 연결 과정 (Connection Steps)

### 🖱️ 1단계 — 연결 방식 선택
VoiceScriptPlayer를 실행한 뒤, 왼쪽 메뉴에서 기기 연결을 클릭합니다.  
**“연결할 방식을 선택하세요.”** 화면에서 **Intiface Central**을 선택합니다.

![](../images/intiface-step1.png)

> 왼쪽부터 ‘연결 안 함’, ‘직접 연결’, ‘Intiface Central’ 버튼이 있으며  
> 세 번째 **Intiface Central**을 선택해야 합니다.

---

### 🌐 2단계 — 서버 연결 확인
VoiceScriptPlayer는 기본적으로  
ws://127.0.0.1:12345 주소를 통해 Intiface와 통신합니다.  

Intiface가 실행 중이라면, “연결 중입니다...” 메시지 이후  
잠시 후 자동으로 연결이 완료됩니다.

![](../images/intiface-step2.png)

> ✅ 서버 연결이 성공하면 `연결되었습니다.` 메시지가 표시됩니다.  

---

### ⚙️ 3단계 — 장치 인식 및 테스트
Intiface가 장치 검색을 자동으로 시작합니다.  
기기가 정상적으로 연결되어 있다면 Intiface의 **Devices 탭**에서 목록이 표시됩니다.

![](../images/intiface-step3.png)

> **장치가 목록에 나타나지 않는 경우**, Intiface 쪽에서 추가 설정이 필요할 수 있습니다.  
> 예를 들어, TCode 기반 장치는 포트를 수동으로 지정해야 하고,  
> The Handy는 API Key를 입력해야 정상적으로 인식됩니다.  
>  
> ⚙️ 이러한 경우 [Intiface 고급 설정 가이드](intiface_advanced.md)를 참고하세요.

**완료** 버튼을 눌러 연결 구성을 저장하세요.

> 💡 이후에는 VoiceScriptPlayer 실행 시 자동으로 Intiface와 재연결됩니다.


---

## 4. 연결 구조 (Connection Overview)

VoiceScriptPlayer → Intiface Server → 장치 (Bluetooth / USB)

- VoiceScriptPlayer는 Intiface 서버로 TCode 명령을 보냅니다.  
- Intiface는 연결된 실제 장치로 신호를 전달합니다.  
- 여러 장치를 동시에 연결해 사용할 수 있습니다.

---

## 5. ⚙️ Intiface 내부 설정 참고
일부 장치는 Intiface에서 **별도의 설정**이 필요할 수 있습니다.  
다음 표를 참고하세요.

| 장치 종류 | 필요 설정 | 설명 |
|------------|------------|------|
| **TCode 기반 장치 (OSR2, SR6 등)** | 포트 번호 지정 | Intiface 설정 파일에서 TCode 서버 포트를 수동으로 입력해야 합니다. |
| **The Handy** | API Key | Intiface 내 Handy 설정 메뉴에서 API Key를 등록해야 합니다. |
| **기타 BLE 장치** | 페어링 | Windows Bluetooth 설정에서 장치를 사전 페어링해야 인식됩니다. |

> 🔍 자세한 설정 방법은 다음 자료를 참고하세요.  
> - [Intiface 고급 설정 가이드](intiface_advanced.md)
> - [Intiface Central GitHub 저장소](https://github.com/intiface/intiface-central)  
> - [Buttplug.io 프로젝트](https://buttplug.io/)

---

## 6. 자주 묻는 문제 (Troubleshooting)

| 문제 | 원인 | 해결 방법 |
|------|------|-----------|
| VoiceScriptPlayer가 Intiface에 연결되지 않음 | Intiface가 실행되지 않음 | Intiface를 먼저 실행하고 서버를 시작하세요. |
| 연결 시 “포트 점유 중” 오류 | 다른 프로그램이 12345 포트를 사용 중 | Intiface 설정에서 다른 포트로 변경 후, VoiceScriptPlayer 설정도 동일하게 수정 |
| 장치가 Intiface에 표시되지 않음 | 블루투스 페어링 불완전 | Windows Bluetooth 설정에서 장치 제거 후 다시 페어링 |
| 작동 테스트 반응 없음 | 장치가 일시 중단 상태 | Intiface의 Device 탭에서 “Resume” 클릭 |
| 장치가 끊겼다 다시 연결됨 | 전력 관리나 절전 모드 | 장치 절전 기능을 비활성화하거나 유선 연결 사용 |

---

## 7. 참고 (Notes)
- Intiface는 **로컬 서버(WebSocket)** 기반으로 동작하며 기본 포트는 12345입니다.  
- 여러 장치를 동시에 연결할 수 있지만, 일부 장치는 다중 명령을 지원하지 않을 수 있습니다.  
- Intiface는 Windows, macOS, Linux에서 실행 가능하지만  
  VoiceScriptPlayer는 현재 Windows 환경에서만 지원됩니다.  

---

## 8. 참고 자료 (References)
- **Intiface Central 공식 사이트:** [https://intiface.com/central](https://intiface.com/central)  
- **Buttplug.io 프로젝트:** [https://buttplug.io](https://buttplug.io)  
- **VoiceScriptPlayer 공식 문서:** [https://voicescriptplayer.github.io/vsp-docs/](https://voicescriptplayer.github.io/vsp-docs/)  
- **TCode 연결 가이드:** [tcode.md](tcode.md)
