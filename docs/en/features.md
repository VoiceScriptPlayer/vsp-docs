# Features

VoiceScriptPlayer is a **project-based multimedia editing and playback platform**  
that integrates **audio, video, interaction, device control, and AI features** in a single environment.

---

## 🎞️ Project-Based Management

- Manage audio, video, subtitles, UI, Live2D, and AI settings **within a single project**  
- Automatically organize and load resources based on the `Asset` folder structure  
- All edits are automatically saved and can be backed up per project  
- See [Create a Project](project/create.md) and [Save/Load Project](project/manage.md) for details  

---

## 🕒 Timeline-Based Editing

- Edit all resources (audio, subtitles, Live2D, events, etc.) on a **timeline interface**  
- Supports zooming, snapping, and section selection for precise control  
- Multi-track structure enables synchronization of audio, video, and interactions  
- See [Timeline Tab](editor/timeline.md)  

---

## 🧩 Rich UI Controls

- Provides **UI control elements** such as buttons, checkboxes, sliders, and images  
- Supports simultaneous display of Live2D, Spine, and image resources  
- Each control has **unique properties** and **event triggers**  
- See [UI Tab](editor/ui.md) and [Live2D Tab](editor/live2d.md)  

---

## ⚙️ Stroke & Device Control

- **Stroke editing system** directly integrated with physical devices (TCode, Intiface)  
- Multi-axis (Axis) curve editing, pattern playback, speed correction, and countdown mode  
- Fully compatible with `.funscript` format  
- See [Stroke Tab](editor/stroke.md) and [TCode](device/tcode.md)  

---

## 🎮 Interactive Event System

- Execute **event triggers** based on various conditions such as key input, variable comparison, and UI interaction  
- Build complex scenarios using conditions, loops, counters, and state variables  
- Define behaviors naturally with `SCAScript`, a built-in scripting language  
- See [Script Tab](editor/script.md)  

---

## 🧠 Integrated AI Features

- **Speech Recognition (STT)**: Local/server recognition powered by Whisper  
- **Text-to-Speech (TTS)**: Supports ElevenLabs, COEIROINK, Hailuo, and more  
- **Translation**: Integrates with DeepL, LibreTranslate, and Meta AI  
- All AI functions can operate in **local or network mode**  
- See [AI Documentation](ai/whisper.md) for more details  

---

## 🗂️ Resource Management & Translation Dictionary

- Centralized management for all project variables, images, and Live2D assets  
- **Translation dictionary** allows fine-tuning of auto-translated words  
- Example: “Flower → Blossom”, “Brother → Oni-chan” (contextual replacements)  
- See [Resource Management Tab](editor/resources.md)  

---

## 🧭 Runtime Helper

- Monitor **Stroke positions, variable values, and event states** in real time  
- Useful for debugging and variable synchronization tests  
- See [Runtime Helper Tab](editor/runtime-helper.md)  

---

## ▶️ Playback Mode

- Play completed projects in a dedicated playback environment  
- Playback options: Hand Only / Device Recommended / Device Only / No Restriction  
- Includes microphone check and device connection verification  
- Errors are logged to `Player.log` and displayed on screen  
- See [Playback Mode](playback/run.md)  

---

## 🧾 Debug & Log System

- All exceptions and events are automatically saved in `Documents/VoiceScriptPlayer/Log`  
- Categorized into UI / Domain / Task / Player sections  
- Playback stops automatically on error with red on-screen notifications  
- See [Debug & Log Documentation](playback/debug.md)  

---

## 🔌 Extensibility & Automation

- C# plugin architecture enables feature expansion  
- Supports custom events, variable linking, and external device control through scripting  
- APIs and external integration modules planned for future releases  

---

## 🌐 Device Integration

- Supports **TCode / Intiface** protocols for hardware communication  
- Built-in advanced features: multi-axis control, real-time signal output, speed compensation  
- Device connection status can be monitored via the Runtime Helper or logs  
- See [TCode](device/tcode.md) and [Intiface](device/intiface.md)  

---

## 🧩 Additional Features Summary

| Category | Description |
|----------|--------------|
| **UI/UX** | Drag editing, mouse selection, auto snap, live preview |
| **Data** | Variable/state-driven events, real-time updates |
| **AI/Subtitles** | Whisper-based subtitle generation, translation, auto-sync |
| **Compatibility** | `.funscript` import/export, Spine & Live2D support |
| **Security** | Resource protection based on internal project paths |

---

## 📘 Related Documents

- [Project Creation & Management](project/create.md)  
- [Timeline Editing](editor/timeline.md)  
- [Stroke Control](editor/stroke.md)  
- [Playback Mode](playback/run.md)  
- [AI Features](ai/whisper.md)
