# DeepL Subscription and API Setup Guide

## 1. Overview
[DeepL](https://www.deepl.com/) is one of the world’s leading **AI translation services**,  
used in VoiceScriptPlayer for **subtitle translation**, **automatic dialogue translation**, and **UI multilingual conversion**.  

To use DeepL in VoiceScriptPlayer, you must obtain a **DeepL API key** (either API Free or API Pro).

> ⚠️ **Important:**  
> DeepL’s **Web Translator (translate.deepl.com)** and  
> **API Service (pro-api.deepl.com)** are **separate subscription plans**.  
> A regular DeepL web translation account **cannot** be used for API access.  
> You must activate a dedicated **DeepL API plan**.

---

## 2. Subscription Steps

1. **Create a DeepL Account**  
   Visit the [DeepL Pro API page](https://www.deepl.com/pro-api) and register.  
   You can choose between the **Free API Plan** or the **Pro API Plan**.  

2. **Verify Your Email**  
   A confirmation email will be sent to your registered address.  
   Click the link in the email to activate your account.  

3. **Select and Confirm Your Plan**  
   - **API Free**: Up to 500,000 characters per month (free).  
   - **API Pro**: Unlimited translations, faster response time, and priority processing.  
   - When subscribing, make sure the plan clearly states **“DeepL API”**.  
     (⚠️ *The “DeepL Pro Personal” plan is for web translation only and does NOT include an API key.*)

   ![deepl-subscription](../images/deepl_subscription.png)
   
   > ⚠️ **Note:**  
   > DeepL offers two types of plans:  
   > 1️⃣ **DeepL Translator** → For general web translation (no API support)  
   > 2️⃣ **DeepL API** → For software integration (used by VoiceScriptPlayer)  
   >
   > VoiceScriptPlayer requires a **DeepL API** plan.  
   > If you subscribe to the “DeepL Translator” plan, no API key will be issued.

4. **Get Your API Key**  
   After logging in, go to your [DeepL Account Page](https://www.deepl.com/your-account/keys)  
   to find your **Authentication Key (auth_key)**.  

   Example:
       auth_key: 1234abcd-5678efgh-ijklmnop-qrstuvwx:fx

   Copy this key and paste it into the **DeepL API Key field** in your VoiceScriptPlayer settings.

5. **Manage Subscription & Billing**  
   You can check your plan, billing details, and usage on the [DeepL Plan Management Page](https://www.deepl.com/account/plan).  
   From there, you can also change your plan, cancel auto-renewal, or monitor usage.

---

## 3. Pricing Overview

| Type | Name | Key Features | Monthly Limit | Price (USD) |
|------|------|---------------|----------------|--------------|
| **Free** | DeepL API Free | Basic translation functions | 500,000 characters | Free |
| **Paid** | DeepL API Pro | Unlimited translation, faster response | Unlimited | $5.49 + usage-based |

> 💡 **Tip:**  
> DeepL API Free and API Pro use **different endpoints**.  
> - Free: `https://api-free.deepl.com/v2/translate`  
> - Pro: `https://api.deepl.com/v2/translate`  
> VoiceScriptPlayer automatically detects and uses the correct endpoint.

---

## 4. Connection Test

You can verify your DeepL connection in VoiceScriptPlayer as follows:

1. Open **Settings → AI Settings → DeepL**  
2. Enter your API Key  
3. Click the “Test Translation” button  
4. If “Usage: 0 / Total: 0” appears, your connection is successful (Pro plan may show 0/0)  

![deepl-test](../images/deepl_test.png)

---

## 5. Notes & Limitations
- **Web accounts** (DeepL Pro Personal, Starter, Advanced) do **not** support API access.  
- If your **API key is leaked**, immediately reissue a new one from your DeepL account.  
- The **API Free plan** automatically stops after 500,000 characters per month.  
- The **API Pro plan** charges additional fees based on usage.  
- The API requires an active **internet connection**.  

---

## 6. Related Documents
- [AI → Using DeepL](../ai/deepl.md)  
- [DeepL Pro API Page](https://www.deepl.com/pro-api)  
- [DeepL Plan Management](https://www.deepl.com/account/plan)  
