## 💡 Network Connection Error (NetworkConnectionError) {#network}

### Cause  
- Unable to connect to the Hailuo server or the internet connection is unstable.  
- A firewall or VPN may be blocking access to the Hailuo API.  
- The server address is incorrect, or there is a temporary network failure.  

### Solution  
1. **Check Internet Connection**  
    - The Hailuo API communicates with external servers, so a network connection is required.  
2. **Check Firewall/Security Software**  
    - Make sure the domain `https://api.minimax.io` is not being blocked.  
3. **Disable VPN and Try Again**  
    - VPNs or proxies may block authentication headers.  
4. **Try Again Later**  
    - The issue may be due to temporary maintenance or network congestion.  

---

## 💡 Authentication Failure (HailuoAuthError) {#auth-error}

### Cause  
- The API key is missing or invalid.  
- The Authorization header contains an incorrect token format.  
- The issued API key has expired or been deleted.  

### Solution  
1. **Verify Correct API Key**  
    - Copy the key exactly as issued from the Hailuo dashboard.  
    - The Authorization header should be formatted as:  
      `Authorization: Bearer YOUR_API_KEY`  
2. **Check for Missing API Key**  
    - Ensure the key is not empty in VoiceScriptPlayer’s settings.  
3. **Reissue API Key**  
    - If the key has expired, obtain a new one from the Hailuo website.  

---

## 💡 Request Timeout (HailuoTimeoutError) {#timeout-error}

### Cause  
- The Hailuo API request exceeded the time limit (usually 10 seconds).  
- The server response is slow or temporarily unavailable.  

### Solution  
1. **Retry the Request**  
    - In most cases, retrying after some time resolves the issue.  
2. **Check Network Status**  
    - Unstable connections can cause delayed responses.  
3. **Shorten Input Text**  
    - Long text inputs may increase processing time.  

---

## 💡 Request Rate Limit (HailuoRateLimitError) {#ratelimit-error}

### Cause  
- Too many requests were sent in a short period of time.  
- The Hailuo API rate limit (Flow Restriction) has been reached.  

### Solution  
1. **Wait 1–2 Minutes and Retry**  
    - The server automatically resets request limits periodically.  
2. **Adjust Request Interval**  
    - Leave at least a 1-second gap between each request.  
3. **Review Automation Scripts**  
    - Ensure no excessive looped or repeated requests are being made.  

---

## 💡 Exceeded TPM (Token Per Minute) Limit (HailuoTPMError) {#tpm-error}

### Cause  
- The number of tokens processed per minute has exceeded the allowed limit.  
- The Hailuo server has temporarily blocked excessive requests.  

### Solution  
1. **Increase Request Interval**  
    - Distribute requests over time instead of sending them all at once.  
2. **Check Premium Plan**  
    - Higher-tier plans have larger TPM limits.  
3. **Implement Auto-Retry Logic**  
    - Add logic to retry automatically after 60 seconds.  

---

## 💡 Illegal Characters in Input (HailuoIllegalCharacterError) {#illegalchar-error}

### Cause  
- More than 10% of the input text contains invalid characters (symbols, emojis, etc.).  
- The server failed to properly interpret the text encoding.  

### Solution  
1. **Remove Special Characters**  
    - Remove emojis or control characters such as 💕, ✨, 🔥, etc.  
2. **Normalize Text**  
    - Clean up spaces, tabs, and line breaks, and encode as UTF-8.  
3. **Split into Shorter Sentences**  
    - If the text is too long, send it in smaller chunks.  

---

## 💡 Invalid Input Format (HailuoInvalidInputFormat) {#invalidinput-error}

### Cause  
- Required fields such as `text`, `voice_setting`, or `audio_setting` are incorrect.  
- The JSON structure does not match the server’s specification.  

### Solution  
1. **Validate JSON Structure**  
    - Ensure all fields `model`, `text`, `voice_setting`, and `audio_setting` are present.  
2. **Check Data Types**  
    - Make sure numbers are int/float and strings are string type.  
3. **Update VoiceScriptPlayer**  
    - The latest version automatically sends correctly structured requests.  

---

## 💡 Insufficient Credits (HailuoCreditError) {#credit-error}

### Cause  
- Not enough credits to make the API request.  
- The Hailuo account balance is zero or usage limits have been exceeded.  

### Solution  
1. **Check Account Balance**  
    - Log into your Hailuo account and confirm sufficient credits.  
2. **Recharge and Retry**  
    - Add credits through the billing or recharge menu.  
3. **Verify Free Tier Limit**  
    - If the free usage limit is reached, credits are required.  

---

## 💡 Invalid Request Format (HailuoRequestError) {#request-error}

### Cause  
- Required fields are missing or contain invalid data types.  
- One of the values in `voice_id`, `text`, or `audio_setting` is incorrect.  
- The server failed to parse the JSON structure.  

### Solution  
1. **Check Request Data**  
    - Ensure the text is not too long and the format is valid.  
2. **Verify Voice Settings**  
    - Confirm that `VoiceId`, `SpeedScale`, `VolumeScale`, and `PitchScale` values are within valid ranges.  
3. **Validate JSON**  
    - Use [jsonlint.com](https://jsonlint.com/) to verify the logged request JSON.  

---

## 💡 Server Error (HailuoServerError) {#server-error}

### Cause  
- An internal error occurred on the Hailuo server.  
- It may be due to high traffic or maintenance.  

### Solution  
1. **Try Again Later**  
    - Most server errors are temporary.  
2. **Check Server Status Page**  
    - Visit the official Hailuo site or Discord channel for maintenance notices.  
3. **Contact Support if Persistent**  
    - Provide the error code and logs to the Hailuo support team.  

---

## 💡 Response Parsing Error (HailuoParseError) {#json-error}

### Cause  
- The server returned a JSON structure different from what was expected.  
- The Hailuo API version or response format may have changed.  

### Solution  
1. **Verify Hailuo Engine Version**  
    - Make sure the API version used by VoiceScriptPlayer is compatible.  
2. **Review Response Logs**  
    - Check whether fields like “base_resp” or “data” exist.  
3. **Update Software**  
    - Update VoiceScriptPlayer to the latest version.  

---

## 💡 Empty Audio Data (HailuoEmptyAudio) {#empty-audio}

### Cause  
- The input text is too short or cannot be converted to speech.  
- Hailuo failed to generate audio internally.  

### Solution  
1. **Check Input Text**  
    - Try again with sentences that do not contain spaces, special characters, or emojis.  
2. **Try Another Voice**  
    - The issue may only occur with specific VoiceIds.  
3. **Retry**  
    - The failure might be due to temporary cache issues.  

---

## 💡 Invalid Audio Format (HailuoInvalidAudioFormat) {#audio-format}

### Cause  
- The returned audio data is corrupted or a problem occurred during hex conversion.  
- The server did not return a valid `audio` field.  

### Solution  
1. **Validate Response Data**  
    - Check whether the returned data is a valid hex string.  
2. **Verify Audio Format**  
    - Ensure that the configured `Format` is supported (`mp3`, `wav`).  
3. **Test with Shorter Text**  
    - Long input text may cause buffer overflow.  

---

## 💡 Audio Processing Failure (HailuoAudioProcessingError) {#process-error}

### Cause  
- An error occurred during MP3 decoding or WAV conversion.  
- The file stream is corrupted or invalid data was received.  

### Solution  
1. **Retry**  
    - It may be a temporary conversion failure.  
2. **Check Response Data Length**  
    - Verify that the data is not too short or zero bytes.  
3. **Update MP3/WAV Libraries**  
    - Keep libraries such as NAudio up to date.  

---

# hailuo-unexpected  
## 💡 Unexpected Response (HailuoUnexpectedResponse) {#unexpected}

### Cause  
- The server response structure did not match expectations and could not be parsed.  
- The `"data.audio"` field is missing or changed in format.  

### Solution  
1. **Check Raw Response**  
    - Review the logged `responseText` directly.  
2. **Check VoiceScriptPlayer Version**  
    - Older versions may not support the latest API structure.  
3. **Check for Server Updates**  
    - The Hailuo API specification may have been updated.  

---

# hailuo-unknown  
## 💡 Unknown Error (HailuoUnknownError) {#unknown-error}

### Cause  
- An unexpected error occurred during processing.  
- It may be an unhandled exception (e.g., file access or disk write failure).  

### Solution  
1. **Check Versions of VoiceScriptPlayer and Hailuo**  
    - Update to the latest available versions.  
2. **Restart the Program**  
    - The issue may be caused by memory leaks or corrupted cache.  
3. **Contact the Developer**  
    - Report the issue with the `vsp_log.txt` log file attached.  
