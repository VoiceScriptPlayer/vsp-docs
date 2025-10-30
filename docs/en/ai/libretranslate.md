# LibreTranslate Translation (Translation)

## 1. Overview
**LibreTranslate** is an open-source **machine translation engine**.  
It can be used **for free**, and it supports **offline translation** by running locally.  
In VoiceScriptPlayer, LibreTranslate provides **subtitle and script translation** functionality.  

> ⚠️ Unlike other AI features, LibreTranslate requires users to **set up and install Python** manually.  
> Once installed, VoiceScriptPlayer will automatically handle server startup and connection.  

---

## 2. Installation & Setup

### 1) Install Python
- **Supported Version:** Python **3.11**  
- **Unsupported Versions:** Python **3.12, 3.13** (not compatible)  
- Download: [Python 3.11.x](https://www.python.org/downloads/release/python-3119/)  

Installation notes:
- Be sure to check **“Add Python to PATH”** during installation.  
- After installation, open Command Prompt and verify:

    python --version  
    pip --version

### 2) Install LibreTranslate
Once Python is ready, open Command Prompt (or PowerShell) and enter:

    pip install libretranslate

After the process is complete, LibreTranslate will be installed in your system environment.  

---

## 3. Using with VoiceScriptPlayer
- After installation, VoiceScriptPlayer will **automatically detect the LibreTranslate installation path** and start the server.  
- No manual commands or path configuration are required.  
- When the server is running, translation features are automatically enabled, and the app will monitor server status.  

---

## 4. Translation Features in VoiceScriptPlayer (Common Functions)

![translate-contextmenu](../images/translate-contextmenu.png)

In any text input field (TextBox) within VoiceScriptPlayer,  
you can access the translation function directly through the **right-click context menu**.  

---

### 🧭 How to Use

1. **Select text and right-click**  
2. Choose **“Translate → Translate to Korean (DeepL)”** or **“Translate to Japanese (Web)”**  
3. The selected translation engine (DeepL, Google, Papago, etc.) will display results instantly.  

---

### ⚡ Shortcut Key
- **Ctrl + T**  
  → Instantly translates the selected text using the **default translation engine**.  
  (The default engine can be changed in settings)

---

### 🌐 Supported Translation Engines
| Type | Engine | Features |
|------|---------|-----------|
| **Local API** | LibreTranslate | Offline use, privacy-focused, open-source |
| **Local/Cloud** | DeepL Translate | High accuracy, excellent contextual understanding |
| **Web Translation** | Google Translate | Widest language support |
| **Web Translation** | Naver Papago | Strong performance in Korean–Japanese translation |

---

> 💡 **Tip:**  
> This feature works across all translation engines (LibreTranslate, DeepL, Google, Papago),  
> and can be used throughout the project — in **Dialogue Editor, Subtitle Editor, or any TextBox** where text input is available.  

---

## 5. Notes & Limitations
- You must install **Python 3.11** (3.12/3.13 are not supported).  
- The user only needs to install; **VoiceScriptPlayer automatically handles startup and connection.**  
- Translation quality may be lower than commercial engines like DeepL or Papago.  
- For best results, split long sentences into shorter ones before translating.  

---

## 6. License & Credits
- **LibreTranslate**: AGPL v3 License  
- Official GitHub: [https://github.com/LibreTranslate/LibreTranslate](https://github.com/LibreTranslate/LibreTranslate)
