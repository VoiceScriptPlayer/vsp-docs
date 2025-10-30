# Playback Mode

The **Playback Mode** in **VoiceScriptPlayer** is a **pure playback environment** separated from the editing mode.  
In this mode, the timeline and editing tools are all disabled,  
and only the actual project behavior (audio, Live2D, Stroke, device control, etc.) is executed.

---

## 1. Overview of Playback Mode

| Item | Description |
|------|-------------|
| **Purpose** | To play completed projects as intended or to perform device synchronization tests. |
| **Difference from Editing Mode** | All editing features (selection, movement, property panels, etc.) are disabled — only playback is available. |
| **How to Start** | Click the ▶ **Play** button on the top toolbar or launch via `vsp://open?file=...`. |
| **How to Exit** | Press the **Esc** key or close the window. |

> ⚙️ **Note:**  
> In playback mode, user input and manual navigation are disabled.  
> **All progress follows the event flow defined in the project script automatically.**

---

## 2. Play Mode Options

When entering playback mode, you can use **Play Mode** settings  
to determine whether and how external devices are used.

| Option | Description |
|--------|-------------|
| **No Preference** | Play freely regardless of whether a device is connected. |
| **Hand Only** | Plays audio and visuals only — device output is disabled. |
| **Device Recommended** | Displays a warning if no device is connected, but allows the user to continue playback. |
| **Device Only** | Requires a connected device to start playback. If none is detected, execution is blocked. |

---

### ⚠️ Restrictions and Warnings

| Situation | Behavior |
|------------|-----------|
| **Device Only mode without a connected device** | Displays a warning: “This script requires a connected device to play.” Playback is blocked. |
| **Device Recommended mode without a connected device** | Displays: “A device connection is recommended. Continue anyway?” The user can choose to proceed or cancel. |
| **Device disconnects during Device Only mode** | Playback pauses and displays: “Please reconnect the device and try again.” |
| **Hand Only mode** | Device output is fully disabled. Hardware controls such as Stroke and vibration will not be executed. |

> 💡 **Tip:**  
> The device mode restrictions depend on whether the project script contains **device-dependent events**.  
> For example, if the project includes Stroke or TCode operations,  
> it is safer to set the mode to **Device Recommended** or **Device Only**.

---

## 3. Microphone Check Window

If the **“Use Microphone Check Window”** option is enabled in playback settings,  
a dedicated window will appear before playback starts to verify microphone detection.

| Item | Description |
|------|-------------|
| **Purpose** | Ensures accurate operation for projects that include speech recognition (STT) or voice-interactive features. |
| **Check Items** | Lists connected microphones, input sensitivity, and provides a voice test feature. |
| **Execution Flow** | The “Confirm” button is enabled only after a valid microphone is detected. |
| **Error Case** | If no microphone is detected, a warning window appears, and playback is blocked until resolved. |

> 💡 **Note:**  
> If an error occurs during microphone detection,  
> refer to [SpeechRecognition Settings](../ai/speechRecognition.md) for detailed troubleshooting.

---

## 4. Important Notes

- **Editing, saving, and resource modification** are disabled during playback mode.  
- Playback in **Device Only** mode will be blocked if no device is connected.  
- When **Microphone Check Window** is enabled, you must pass the test to start playback.  
- If an error or device connection issue occurs during playback,  
  the program will automatically pause and can be resumed after the issue is resolved.  

---

## 5. Related Documents

- [Resource Management Tab](../editor/resources.md)  
- [Runtime Helper Tab](../editor/runtime-helper.md)  
- [Debug & Log](debug.md)  
- [SpeechRecognition Settings](../ai/speechRecognition.md)
