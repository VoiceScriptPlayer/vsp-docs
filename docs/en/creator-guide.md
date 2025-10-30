# Creator Guide
quick tutorials for content creators

this is a short guide for **creators** who are new to VoiceScriptPlayer.  
by the end of this document, you should be able to complete a small project that includes audio, subtitles, and interaction
small project with audio, subtitles, and interaction.

---

## 1️⃣ Create the project

- select **"Create new project"** from the top menu
- enter a title and save location, and the default structure will be automatically generated.  
- inside the folder, it will contain the `Asset` (resources) and `Script` (events) folders.  
- 👉 For more information: [Create a project](project/create.md)

---

## 2️⃣ Add the resource

- add the **Audio, Image, and Live2D** files to the `Asset` folder.  
- you can see all your files at a glance in the **Resource Management tab** on the left side of the editor.  
- this is also where you register variables and translation dictionaries if needed.  
- 👉 See also: [Manage resources](editor/resources.md)

---

## 3️⃣ Configuring the timeline

- place the **Sound**, **Subtitle**, and **Video** on the timeline.  
- drag them with your mouse to adjust their position, and preview them section by section.  
- provides basic editing tools: zoom, snap align, copy-paste, and more.  
- 👉 See also: [Timeline] (editor/timeline.md)

---

## 4️⃣ Adding interactions and events

- On the UI tab, add a button or image control.  
- each control can have events associated with it, such as **click, compare, change variable**, etc.  
- use a simple script to specify an action, such as "go to next scene".  
- 👉 See also: [script](editor/script.md), [UI](editor/ui.md)

---

## 5️⃣ Apply AI features (optional)

- You can generate subtitles with Whisper and translate them with DeepL or LibreTranslate.  
- add TTS voice with hailuo or COEIROINK if needed.  
- if the translation is awkward, you can correct it word-by-word in the **Translation dictionary**.  
- 👉 Note: [AI features](ai/whisper.md)

---

## 6️⃣ Test & Run

- press the ▶️ button at the top to switch to **Play Mode**.  
- select a mode: "None / Hand only / Machine recommended / Machine only"
- if you are asked to use a microphone, confirm the connection through the **Confirmation window**.  
- if an error occurs, a red message will be displayed,
  detailed logs can be found in the `Documents/VoiceScriptPlayer/Log` folder.  
- 👉 Notes: [Run](playback/run.md), [Debug & Log](playback/debug.md)

---

## 7️⃣ Complete and deploy

- when you're done testing, you can export your project in `.vspack` format.  
- users who receive it will be able to run it directly from the run-only player.  
- 👉 See also: [Project management](project/manage.md)

---

## 🎯 Finalize

if you've followed this process,
you've already reached the point where you can create "one finished piece of content" on your own.

The power of VoiceScriptPlayer is that it allows you to **manage everything in one project**.  
from there, you can learn stroke editing, device control, advanced scripting, and more
and expand into your own content.
