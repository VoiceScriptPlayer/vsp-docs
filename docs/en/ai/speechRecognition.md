# Microsoft Speech Recognition (Microsoft.Speech)

## 1. Overview
**Microsoft Server Speech Platform Runtime** is a runtime environment that supports **speech recognition and synthesis**.  
In VoiceScriptPlayer, it enables **Speech-to-Text (STT)** functionality.  

> ⚠️ Unlike the built-in Windows SAPI (`System.Speech`),  
> you must install both the **runtime** and **language packs** separately for it to work properly.

---

## 2. Installation & Setup

### 1) Required Downloads
You must install the following two components:

- **Microsoft Server Speech Platform Runtime (x64)**  
  [Download Link](https://www.microsoft.com/en-us/download/details.aspx?id=27225)

- **Microsoft Server Speech Recognition Language Packs (Language Pack Collection)**  
  [Download Link](https://www.microsoft.com/en-us/download/details.aspx?id=27224)  
  ![Language Pack Setup](../images/languagepack_setup_file.png)

> The first file is the **runtime engine**, and the second contains **language packs (multi-language support)**.  
> Language pack files usually end with **TELE** in their filename.

---

### 2) Language Pack Notes
- You must install the language pack that matches your **Windows language setting** or your **project’s target language**.  
- Common language codes:  
  - `en-US` → English (United States)  
  - `ko-KR` → Korean  
  - `ja-JP` → Japanese  
  - `zh-CN` → Chinese (Simplified)  
- If the correct language pack is not installed, the recognizer may fail to start or produce errors.

---

### 3) How to Verify Installation
To confirm successful installation:

1. Open **Control Panel → Programs and Features**.  
2. If the following two entries are listed, installation was successful:  
   - `Microsoft Server Speech Platform Runtime (x64)`  
   - `Microsoft Server Speech Recognition Language - <Installed Language>`  

Example (Korean Language Pack Installed):  
![Installation Confirmation](../images/speech_recognition_setup.png)

---

## 3. Using with VoiceScriptPlayer
- Once installed, VoiceScriptPlayer **automatically detects the runtime and language packs**.  
- No manual launch is required — the program checks for the installed language packs and starts the recognizer accordingly.

---

## 4. Troubleshooting

### 1) `Runtime Installation Error`
![Runtime Error](../images/setup_error.png)

- **Cause:** The runtime is not installed or there is a 32/64-bit mismatch.  
- **Solution:**  
  - Ensure `Microsoft Server Speech Platform Runtime (x64)` is installed.

---

### 2) `Language Pack Missing`
![Language Pack Error](../images/languagepack_error.png)

- **Cause:** The required language pack is not installed.  
- **Solution:**  
  - Download and install the appropriate language pack from the [Language Pack Page](https://www.microsoft.com/en-us/download/details.aspx?id=27224).  
  - Make sure the language code (e.g., `ko-KR`, `en-US`, `ja-JP`) matches your project settings.

---

## 5. Notes
- Only the **x64 runtime** is supported (x86 is not compatible).  
- Each language requires its own separate language pack installation.  
- The Microsoft Speech Platform is **no longer actively updated**, so newer features are not available.

---

## 6. License & Sources
- **Microsoft Server Speech Platform Runtime**: Microsoft Software License Terms  
- Official Downloads:  
  - [Runtime (x64)](https://www.microsoft.com/en-us/download/details.aspx?id=27225)  
  - [Language Packs](https://www.microsoft.com/en-us/download/details.aspx?id=27224)
