# DeepL Translation (Text Translation)

## 1. Overview
[DeepL](https://www.deepl.com/) is one of the world’s most advanced **AI translation services**.  
It excels at natural sentence construction and contextual understanding,  
and is used in VoiceScriptPlayer for **subtitle translation, real-time dialogue translation, and multilingual interface conversion**.

> 💡 **New to API subscriptions?**  
> 👉 [**See the DeepL Subscription & API Setup Guide**](../ai/deepl-subscription.md)

---

## 2. Account Creation
To use the DeepL API, you need a **DeepL account**.

1. Go to the [DeepL official website](https://www.deepl.com/pro-api).  
2. Choose either the **Free API plan** or a **Pro (paid) plan**.  
3. Register with your email and complete the verification process.  
4. After logging in, go to **[Account → API Key]** to view your API key.

> 🔑 The **API Free** plan allows up to 500,000 characters per month.  
> The **API Pro** plan offers unlimited usage and faster response times.

---

## 3. Obtaining the API Key
After registration, go to your [DeepL Account Page](https://www.deepl.com/account/summary)  
and copy your API key as shown below:

    Example:
    auth_key: 1234abcd-5678efgh-ijklmnop-qrstuvwx:fx

Paste this key into the **DeepL API Key field** in the VoiceScriptPlayer settings.

> ⚠️ The API key is a personal identifier.  
> **Do not expose it in public repositories or shared documents.**

---

## 4. Configuration
In VoiceScriptPlayer, you can configure the **DeepL Translation Settings** as follows:

| Field | Description |
|-------|--------------|
| API Key | The authentication key obtained from your DeepL account |
| Source Language | The language to translate from (e.g. `JA`, `EN`, `KO`) |
| Target Language | The language to translate into (e.g. `EN`, `KO`, `JA`) |

---

## 5. How to Use
1. Extract text using Whisper or another STT engine.  
2. Set the target translation language (e.g. Japanese → Korean).  
3. Click the “Translate” button.  
4. The translated text will appear as subtitles or text content.  

> 💡 DeepL is optimized for **sentence-level translation**,  
> so splitting subtitles into shorter sentences will produce more natural results.  
> 💎 Using the **Pro version (DeepL API Pro)** improves contextual understanding and accuracy,  
> making translations of **emotional, metaphorical, or nuanced sentences** sound more natural and fluent.

---

### 🔍 Translation Quality Comparison Example

**Original (Japanese):**  
ズルをしてレベルを上げるよりも、我慢して我慢してどうしても我慢できなくなってから出す方が気持ちいいですよ。

| Type | Translation Result |
|------|--------------------|
| **Web Version (DeepL)** | It feels better to hold back and release only when you can’t take it anymore, rather than cheating to level up. |
| **DeepL API Free** | It feels better to endure and endure until you just can’t anymore, rather than using tricks to level up. |
| **DeepL API Pro** | It feels much better to hold out until you really can’t resist anymore, rather than cheating your way to a higher level. |

> 💬 **Explanation:**  
> The Pro version analyzes **the full context** instead of just individual words,  
> resulting in more natural and expressive translations that better capture emotion and nuance.

---

## 6. Notes & Limitations
- The Free plan is limited to **500,000 characters per month**.  
- API keys are unique per account. Using the same key on multiple devices simultaneously may cause **request limits**.  
- DeepL requires an **active internet connection**.  
- Translation quality varies depending on the language pair (e.g. English↔Japanese, English↔Korean).  
- **DeepL API Free** and **DeepL API Pro** use different endpoints.

---

## 7. License & Credits
- **DeepL API**: Proprietary License (© DeepL SE)  
- Official Website: [https://www.deepl.com](https://www.deepl.com)  
- Official API Documentation: [https://www.deepl.com/docs-api](https://www.deepl.com/docs-api)  
- Commercial use is allowed, but you must comply with DeepL’s Terms of Service.

---

## 8. Using the Translation Feature in VoiceScriptPlayer (Common Features)

![translate-contextmenu](../images/translate-contextmenu.png)

In VoiceScriptPlayer, you can access translation features directly  
from **any text input field (TextBox)** via the **right-click context menu**.

---

### 🧭 How to Use
1. **Select the text and right-click.**  
2. Choose **“Translate → Translate to Korean (DeepL)”** or **“Translate to Japanese (Web)”**, etc.  
3. The selected translation engine (DeepL, Google, Papago, etc.) will instantly display the result.

---

### ⚡ Shortcut Support
- **Ctrl + T**  
  → Instantly translate the selected text using the **default translation engine**.  
  (You can change the default engine in Settings.)

---

### 🌐 Supported Translation Engines
| Type | Engine | Description |
|------|---------|-------------|
| **Local API** | DeepL Translate | High accuracy and strong contextual awareness |
| **Web Translation** | Google Translate | Supports a wide range of languages |
| **Web Translation** | Naver Papago | Excels at Korean↔Japanese translations |

---

> 💡 **Tip:**  
> This feature works across all translation engines (DeepL, Google, Papago)  
> and is available in **Dialogue Editors, Subtitle Editors, and all text input areas** throughout the project.

---

## 9. Troubleshooting / FAQ
- ❓ *“Invalid authentication key” error appears.*  
  → Check if your API key is correct and entered without spaces.  

- ❓ *“Quota exceeded” error appears.*  
  → You have exceeded the monthly 500,000-character limit. Upgrade to the Pro plan or wait until the next month.  

- ❓ *“Translation not working.”*  
  → Check your network connection and verify that the correct endpoint (Free/Pro) is configured.
