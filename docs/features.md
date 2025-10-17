# Features

VoiceScriptPlayer는 음성, 영상, 인터랙션, 장치 제어, AI 기능을 하나의 환경에서 통합 관리할 수 있는  
**프로젝트 기반 멀티미디어 편집·실행 플랫폼**입니다.

---

## 🎞️ 프로젝트 기반 관리

- 오디오, 영상, 자막, UI, Live2D, AI 설정을 **하나의 프로젝트 단위**로 통합 관리  
- `Asset` 폴더 구조에 따라 자동으로 리소스 정리 및 로드  
- 모든 편집 내역은 자동 저장되며, 프로젝트 단위로 백업 가능  
- [프로젝트 만들기](project/create.md) 및 [저장/불러오기](project/manage.md) 문서 참고

---

## 🕒 타임라인 기반 편집

- 모든 리소스(사운드, 자막, Live2D, 이벤트 등)는 **시간축(Timeline)** 위에서 편집  
- 줌 인/아웃, 스냅(Snap), 구간 선택 등 세밀한 제어 지원  
- 멀티 트랙 구조를 사용하여 음성, 영상, 인터랙션을 동시에 동기화  
- [타임라인 탭](editor/timeline.md) 참고

---

## 🧩 다양한 컨트롤

- 버튼, 체크박스, 슬라이더, 이미지 등 **UI 컨트롤 요소** 제공  
- Live2D, Spine, 이미지 등 시각적 리소스의 동시 표현 가능  
- 각 컨트롤은 **고유 속성(Property)** 및 **이벤트 트리거**를 가짐  
- [UI 탭](editor/ui.md)과 [Live2D 탭](editor/live2d.md) 참고

---

## ⚙️ 스트로크 & 장치 제어

- 물리 장치(TCode, Intiface)와 직접 연동되는 **스트로크(Stroke)** 편집 시스템  
- 다축(Axis) 기반 그래프 편집, 패턴 재생, 속도 보정, 카운트다운 모드 지원  
- `.funscript` 포맷과의 상호 호환  
- [스트로크 탭](editor/stroke.md) 및 [TCode](device/tcode.md) 문서 참고

---

## 🎮 인터랙티브 이벤트 시스템

- 키 입력, 변수 비교, UI 상호작용 등 다양한 조건에 따라 **이벤트 트리거** 실행  
- 조건문, 반복문, 카운터, 상태 변수 등을 활용한 복합 시나리오 구성 가능  
- 스크립트 언어(`SCAScript`) 기반의 자연어 트리거 및 동작 정의  
- [스크립트 탭](editor/script.md) 참고

---

## 🧠 AI 기능 통합

- **음성 인식(STT)** : Whisper 기반 로컬/서버 인식 지원  
- **음성 합성(TTS)** : ElevenLabs, COEIROINK, Hailuo 등 다양한 엔진 연동  
- **자동 번역(Translation)** : DeepL, LibreTranslate, Meta AI 지원  
- 모든 AI 기능은 로컬/네트워크 모드 선택 가능  
- [AI 항목](ai/whisper.md)에서 자세히 보기

---

## 🗂️ 리소스 관리 & 번역 사전

- 프로젝트에서 사용되는 모든 변수, 이미지, Live2D 리소스를 한곳에서 관리  
- **번역 사전 기능**을 통해 자동 번역된 결과를 단어 단위로 교정 가능  
- 예: “꽃 → 하나”, “형 → 오빠” 등 상황에 맞는 대체 단어 지정  
- [리소스 관리 탭](editor/resources.md) 참고

---

## 🧭 런타임 도우미

- 실행 중 **Stroke 위치, 변수 값, 이벤트 상태**를 실시간으로 모니터링  
- 디버깅 및 변수 동기화 테스트에 사용  
- [런타임 도우미 탭](editor/runtime-helper.md) 참고

---

## ▶️ 실행 모드 (Playback Mode)

- 완성된 프로젝트를 실행 전용 환경에서 재생  
- 플레이 모드 설정: 손만 사용 / 기계 권장 / 기계만 사용 / 상관없음  
- 마이크 인식 확인 창 및 장치 연결 검사 기능 제공  
- 오류 발생 시 `Player.log` 기록 및 화면 알림 표시  
- [실행하기 (Playback Mode)](playback/run.md) 참고

---

## 🧾 디버그 & 로그 시스템

- 모든 예외와 이벤트는 `Documents/VoiceScriptPlayer/Log` 폴더에 자동 저장  
- UI / Domain / Task / Player 카테고리별로 구분  
- 플레이 도중 오류 발생 시 빨간색 알림과 함께 자동 정지  
- [디버그 & 로그 문서](playback/debug.md) 참고

---

## 🔌 확장성 & 자동화

- C# 기반 플러그인 구조로 기능 확장 가능  
- 스크립트를 통한 커스텀 이벤트, 변수 연동, 외부 장치 제어 지원  
- 향후 API 및 외부 연동 모듈 추가 예정  

---

## 🌐 장치 연동 (Device Integration)

- **TCode / Intiface** 프로토콜을 통한 장치 통신 지원  
- 다축 제어, 실시간 신호 송출, 페널티 속도 보정 등 고급 기능 내장  
- 장치 연결 상태는 런타임 도우미 및 로그를 통해 확인 가능  
- [TCode](device/tcode.md), [Intiface](device/intiface.md) 참고

---

## 🧩 추가 기능 요약

| 분류 | 기능 요약 |
|------|-----------|
| **UI/UX** | 드래그 편집, 마우스 선택, 자동 스냅, 미리보기 |
| **데이터** | 변수/상태 기반 이벤트 처리, 실시간 갱신 |
| **AI/자막** | Whisper 자막 생성, 번역, 자동 싱크 |
| **호환성** | `.funscript` 가져오기/내보내기, Spine & Live2D |
| **보안** | 프로젝트 내부 경로 기반 리소스 보호 |

---

## 📘 관련 문서

- [프로젝트 생성 및 관리](project/create.md)  
- [타임라인 편집](editor/timeline.md)  
- [스트로크 제어](editor/stroke.md)  
- [실행하기 (Playback Mode)](playback/run.md)  
- [AI 기능](ai/whisper.md)
