# Hailuo Text-to-Speech (TTS)

## 1. Overview
[Hailuo AI](https://www.minimax.io/audio) is a high-quality **cloud-based text-to-speech (TTS)** service developed by **Minimax** in China.  
It features natural pronunciation, multilingual support, and expressive emotion control.  
In VoiceScriptPlayer, Hailuo enables **AI character voice generation**, **subtitle synchronization**, and other creative voice production features.

> ⚠️ **Important:**  
> The **API plan** and the **web plan** for Hailuo are separate services.  
> The API function is **not free**, and you must subscribe to Minimax’s **API plan** separately.  
> After subscribing, you can check your **remaining coins (usage balance)** on the  
> [**Hailuo Subscription Management Page**](https://platform.minimax.io/subscribe/audio-subscription).  
![hailuo-remaincoin](../images/hailuo-remaincoin.png)

📘 **New to Hailuo?**  
➡ [**See the Hailuo Subscription & Payment Guide**](../ai/hailuo-subscription.md)

---

## 2. Using Hailuo in VoiceScriptPlayer

![hailuo-editor](../images/hailuo_editor.png)

In the **Audio Editor** of VoiceScriptPlayer,  
you can synthesize speech directly from text using the Hailuo engine.  
The interface is similar to COEIROINK, allowing you to synthesize multiple lines at once  
and adjust each sentence’s timing and duration in the timeline.

---

### 🗣️ Basic Workflow

1. **Select the TextToSpeech Engine**  
   From the dropdown menu at the top, select `Hailuo AI`.  
   If your API key is correctly registered, the connection will be established automatically.

2. **Enter Sentences**  
   Input multiple sentences in the timeline or text input box.  
   Each sentence appears as an independent block that can be freely reordered or resized.

3. **Basic Voice Settings**  

   | Setting | Description |
   |----------|-------------|
   | **Language** | Choose the language to use (Korean, Japanese, English, etc.) |
   | **Voice** | Choose a voice profile (e.g., Thoughtful Woman, Gentle Male) |
   | **Emotion** | Set tone or mood (neutral, soft, energetic, etc.) |
   | **Speed** | Controls speaking rate (default: 1.0) |
   | **Pitch** | Adjusts vocal pitch |
   | **Volume** | Adjusts overall loudness |

4. **Post-Processing Options (Optional)**  
   Fine-tune pitch, intensity, or timbre.  
   Use the pronunciation dictionary to customize how certain words or names are pronounced.  
   The “Effect” option allows simple effects such as echo or filters to be applied.

5. **Synthesize and Preview**  
   Press ▶ **Play** to immediately preview the generated speech.  
   Any changes made will automatically trigger re-synthesis and update the preview.  
   The generated audio files are automatically saved in the `Asset/Sound/` folder.

---

### 💬 Subtitle Settings

| Setting | Description |
|----------|-------------|
| **X / Y** | Subtitle position on screen |
| **FontSize / OutlineSize** | Font size and outline thickness |
| **Dock** | Subtitle alignment (Top / Center / Bottom) |
| **Fill / Outline** | Font and outline color settings |
| **Preview** | Real-time sync preview of voice and subtitles |

---

### 🧩 Timeline Control

- Each sentence appears as a separate block on the timeline.  
- You can drag blocks to move them or stretch both ends to adjust duration.  
- The timeline behaves similarly to COEIROINK or a video track.  
- Arrange multiple sentences sequentially to create dialogue scenes.

---

## 3. Output Location

| Type | Path |
|------|------|
| **Generated Audio Files** | Automatically saved to `Asset/Sound/` |
| **Subtitle Data** | Saved in the same folder as `.srt` files or project metadata |

---

## 4. Notes & Limitations
- The Hailuo API is **not free**.  
- The **web plan and API plan are separate**, and  
  using the web-based voice synthesis does not cover API usage fees.  
- An **internet connection is required** since Hailuo runs on the cloud.  
- Some voices do not support emotion settings.  
- API requests have usage limits — short sentences are recommended.  
- If responses are delayed, check the Hailuo server status or network condition.

---

## 5. License & Credits
- **Hailuo API**: © Minimax Inc.  
- Official Website: [https://www.minimax.io/audio](https://www.minimax.io/audio)  
- Commercial use is allowed (must comply with Minimax Terms of Service).
