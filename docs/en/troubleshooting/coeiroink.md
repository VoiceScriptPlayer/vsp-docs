## 💡 Network Connection Error (NetworkConnectionError) {#network}

### Cause
- The COEIROINK local server (usually `127.0.0.1:50032`) is not running, or,
  access to the port is blocked by a firewall or antivirus program.  
- PC is offline, or local loopback communication is disabled.  

### Workaround
1. **Verify that the COEIROINK engine is running**
    - The COEIROINK GUI or CLI server must be open.
    - make sure the port `127.0.0.1:50032` is open.
2. **Register firewall/security program exceptions**
    - make sure that `coeiroink.exe` or `voicevox_engine.exe` is not blocked.  
3. **Restart the engine
    - Shutting down and restarting COEIROINK will initialize the ports.  
4. **Check your internet connection (if necessary)**
    - some external resources may require a network connection to load.  


## 💡 COEIROINK Server Connection Failed (CoeiroinkServerConnectionError) {#coeiroink-server}

### Cause
- the local COEIROINK server is turned off, or the API port (`50032`) has changed.  
- multiple applications are using the same port at the same time.  

### Workaround
1. Run COEIROINK and turn on the option **"Enable API server"**.  
    Also make sure you are running in CLI mode, not GUI.
2. At a Windows command prompt, type the following
    netstat -ano | find "50032"
    → If the port is not in the "LISTENING" state, COEIROINK is not running.
3. in case of a port conflict, specify a different port and run it, then change to that port in the
    config file and change to that port.  

 
## 💡 Error parsing server response (CoeiroinkJsonParseError) {#coeiroink-json}

### Cause
- The COEIROINK server returned abnormal JSON data.  
- the engine version is different, or the response format has changed.  
- the JSON is incomplete due to a mid-request forced termination.  

### Workaround
1. **Check COEIROINK version**
    - Make sure that VoiceScriptPlayer is compatible with the version of the API you use.  
    - if it is outdated, update to the latest COEIROINK engine.
2. **Simplify your sentences**
    - sentences that are too long or contain special characters can cause problems during JSON conversion.  
3. **Check your log files**
    - Check the COEIROINK console or logs for the "predict_with_duration" error message.


## 💡 Failed to get Prosody data (CoeiroinkProsodyEmpty) {#coeiroink-text}

### Cause
- the input sentence is too short or contains unsupported character combinations.  
- the call to `PredictProsodyDetail()` failed, but was not detected as an exception.  

### Workaround
1. **Test by breaking the input into shorter sentences**
    - break your input into sentences of 100 characters or less and retry.  
2. **Remove abnormal characters**
    - remove special symbols, control characters, and emojis and try again.  
3. **Check engine logs**
    - if the response is empty when requesting "predict_with_duration", the engine may have failed to process some characters.  


## 💡 Prosody prediction failed (CoerioinkPredictError) {#coeiroink-prosody}

### Cause
- the prosody predict request (`/v1/predict_with_duration`) failed.  
- API response code returned as 400, 404, 500, etc.  

### Workaround
1. **Check COEIROINK server logs**
    - check what error occurred in the "predict_with_duration" step.  
2. **Simplify the input text**
    - test after removing long sentences, emojis, and non-Japanese characters.  
3. **Check speed scaling**
    - if the `speedScale` value is below 0 or too large, processing may fail.  


## 💡 Audio processing failed (CoerioinkProcessError) {#coeiroink-process}

### Cause
- error generating speech in the `/v1/process` request.
- corrupted `wavBase64` data generated in prosody prediction step.  

### Workaround
1. **Try generating again**
    - if you try the same sentence again, it may be a temporary cache issue.  
2. **Check engine logs**
    - check if any error codes were output during the "process" step.  
3. **Check pitchScale, intonationScale values**
    - values that are too high (e.g. above 5.0) can cause internal calculation errors.  


## 💡 Generated audio data is empty (CoerioinkEmptyAudio) {#coeiroink-empty}

### Cause
- the engine failed to output speech and returned an empty response.  
- some sentences do not have pronounceable mora (e.g., sentences containing only symbols).  

### Workaround
1. **Review the sentence again**
    - remove unpronounceable characters such as "...", "♪", "♡", etc.  
2. **Restart the engine**
    - Restarting COEIROINK will initialize the temporary cache.  
3. **Try a different speaker/style**
    - certain voice styles may cause errors.  


## 💡 Audio Format Error (CoerioinkInvalidAudioFormat) {#coeiroink-format}

### Cause
- the engine returns the error message as text instead of WAV.  
- WAV header is corrupted, or data is truncated in the middle.  

### Workaround
1. **Check the output file**
    - make sure that the actual returned file starts with a WAV header ("RIFF").  
2. **Update COEIROINK**
    - older versions of the engine may not be able to handle some settings.  
3. **Test with short sentences**
    - excessively long text input can cause buffer overflows inside the engine.  

 
## 💡 Unknown COEIROINK error (CoerioinkUnknownError) {#coeiroink-general}

### Cause
- an unexpected exception occurred during processing (file access, out of memory, etc.).  
- Protocol mismatch between VoiceScriptPlayer and COEIROINK.  

### Workaround
1. **Check the versions of VoiceScriptPlayer and COEIROINK**
    - use the most recent versions available.
2. **Restart the project**
    - temporary cache and session data may have become corrupted.  
3. **Contact your developer**
    - please attach a log file (like `vsp_log.txt`) and report it in the issue tracker or Patreon.
