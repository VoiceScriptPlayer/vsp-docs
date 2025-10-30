## 💡 네트워크 연결 오류 (NetworkConnectionError) {#network}

### 원인  
- COEIROINK 로컬 서버(보통 `127.0.0.1:50032`)가 실행 중이 아니거나,  
  방화벽 또는 백신 프로그램에 의해 포트 접근이 차단됨.  
- PC가 오프라인 상태이거나, 로컬 루프백 통신이 비활성화됨.  

### 해결 방법  
1. **COEIROINK 엔진이 실행 중인지 확인**  
    - COEIROINK GUI 또는 CLI 서버가 열려 있어야 합니다.  
    - `127.0.0.1:50032` 포트가 열려 있는지 확인하세요.  
2. **방화벽/보안 프로그램 예외 등록**  
    - `coeiroink.exe` 또는 `voicevox_engine.exe`가 차단되지 않도록 예외 처리합니다.  
3. **엔진 재시작**  
    - COEIROINK를 종료 후 다시 실행하면 포트가 새로 초기화됩니다.  
4. **인터넷 연결 확인 (필요 시)**  
    - 일부 외부 리소스를 불러오는 경우 네트워크 연결이 필요할 수 있습니다.  


## 💡 COEIROINK 서버 연결 실패 (CoeiroinkServerConnectionError) {#coeiroink-server}

### 원인  
- 로컬 COEIROINK 서버가 꺼져 있거나, API 포트(`50032`)가 변경됨.  
- 동시에 여러 애플리케이션이 같은 포트를 사용 중.  

### 해결 방법  
1. COEIROINK를 실행 후 **“API 서버 활성화”** 옵션을 켭니다.  
    GUI가 아니라 CLI 모드에서 실행 중인지도 확인하세요.  
2. Windows 명령 프롬프트에서 다음을 입력:  
    netstat -ano | find "50032"  
    → 포트가 “LISTENING” 상태가 아니면 COEIROINK가 실행되지 않은 것입니다.  
3. 포트 충돌 시 다른 포트를 지정해 실행 후  
    설정 파일에서 해당 포트로 변경합니다.  

 
## 💡 서버 응답 해석 오류 (CoeiroinkJsonParseError) {#coeiroink-json}

### 원인  
- COEIROINK 서버가 비정상적인 JSON 데이터를 반환함.  
- 엔진 버전이 다르거나, 응답 포맷이 변경됨.  
- 요청 중간에 강제 종료되어 JSON이 완전하지 않음.  

### 해결 방법  
1. **COEIROINK 버전 확인**  
    - VoiceScriptPlayer가 사용하는 API 버전과 호환되는 버전인지 확인합니다.  
    - 구버전이라면 최신 COEIROINK 엔진으로 업데이트하세요.  
2. **문장 단순화**  
    - 너무 긴 문장이나 특수문자가 포함된 문장은 JSON 변환 중 문제가 생길 수 있습니다.  
3. **로그 파일 확인**  
    - COEIROINK 콘솔 또는 로그에서 "predict_with_duration" 에러 메시지를 확인하세요.  


## 💡 Prosody 데이터를 가져오지 못했습니다 (CoeiroinkProsodyEmpty) {#coeiroink-text}

### 원인  
- 입력 문장이 너무 짧거나, 지원되지 않는 문자 조합을 포함함.  
- `PredictProsodyDetail()` 호출이 실패했지만 예외로 감지되지 않음.  

### 해결 방법  
1. **입력 문장을 짧게 나누어 테스트**  
    - 100자 이하의 문장으로 나누어 재시도합니다.  
2. **비정상 문자 제거**  
    - 특수기호, 제어문자, 이모지를 제거하고 다시 시도합니다.  
3. **엔진 로그 확인**  
    - "predict_with_duration" 요청 시 응답이 비어 있는 경우, 엔진이 일부 문자를 처리하지 못했을 수 있습니다.  


## 💡 Prosody 예측 실패 (CoerioinkPredictError) {#coeiroink-prosody}

### 원인  
- prosody 예측 요청(`/v1/predict_with_duration`)이 실패함.  
- API 응답 코드가 400, 404, 500 등으로 반환됨.  

### 해결 방법  
1. **COEIROINK 서버 로그 확인**  
    - "predict_with_duration" 단계에서 어떤 오류가 발생했는지 확인합니다.  
2. **입력 텍스트 단순화**  
    - 긴 문장, 이모지, 일본어 외 문자 제거 후 테스트합니다.  
3. **속도 조정 확인**  
    - `speedScale` 값이 0 이하이거나 너무 크면 처리 실패할 수 있습니다.  


## 💡 오디오 처리 실패 (CoerioinkProcessError) {#coeiroink-process}

### 원인  
- `/v1/process` 요청에서 음성 생성 중 오류 발생.  
- prosody 예측 단계에서 생성된 `wavBase64` 데이터가 손상됨.  

### 해결 방법  
1. **다시 생성 시도**  
    - 동일 문장을 다시 시도하면 일시적 캐시 문제일 수 있습니다.  
2. **엔진 로그 확인**  
    - "process" 단계에서 에러 코드가 출력되었는지 확인합니다.  
3. **pitchScale, intonationScale 값 확인**  
    - 너무 높은 값(예: 5.0 이상)은 내부 계산 오류를 유발할 수 있습니다.  


## 💡 생성된 오디오 데이터가 비어 있음 (CoerioinkEmptyAudio) {#coeiroink-empty}

### 원인  
- 엔진이 음성을 출력하지 못하고 빈 응답을 반환함.  
- 일부 문장에 발음 가능한 모라가 없음 (예: 기호만 포함된 문장).  

### 해결 방법  
1. **문장을 다시 확인**  
    - “...”, “♪”, “♡” 등 발음 불가능한 문자는 제거합니다.  
2. **엔진 재시작**  
    - COEIROINK를 재실행하면 임시 캐시가 초기화됩니다.  
3. **다른 화자/스타일로 시도**  
    - 특정 음성 스타일이 오류를 일으킬 수 있습니다.  


## 💡 오디오 포맷 오류 (CoerioinkInvalidAudioFormat) {#coeiroink-format}

### 원인  
- 엔진이 WAV 대신 오류 메시지를 텍스트로 반환함.  
- WAV 헤더가 손상되거나, 데이터가 중간에 잘림.  

### 해결 방법  
1. **출력 파일을 확인**  
    - 실제 반환된 파일이 WAV 헤더("RIFF")로 시작하는지 확인합니다.  
2. **COEIROINK 업데이트**  
    - 구버전 엔진은 일부 설정값을 처리하지 못할 수 있습니다.  
3. **짧은 문장으로 테스트**  
    - 과도하게 긴 텍스트 입력은 엔진 내부 버퍼 초과를 일으킬 수 있습니다.  

 
## 💡 알 수 없는 COEIROINK 오류 (CoerioinkUnknownError) {#coeiroink-general}

### 원인  
- 처리 중 예기치 못한 예외 발생 (파일 접근, 메모리 부족 등).  
- VoiceScriptPlayer와 COEIROINK 간 프로토콜 불일치.  

### 해결 방법  
1. **VoiceScriptPlayer와 COEIROINK 버전 확인**  
    - 가능한 최신 버전을 모두 사용하세요.  
2. **프로젝트 재시작**  
    - 임시 캐시 및 세션 데이터가 꼬였을 수 있습니다.  
3. **개발자에게 문의**  
    - 로그 파일(`vsp_log.txt` 등)을 첨부해 이슈 트래커 또는 Patreon에 보고해주세요.  
