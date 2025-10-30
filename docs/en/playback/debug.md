# Debug & Log

**VoiceScriptPlayer** automatically records all exceptions, events, and warnings that occur during execution.  
This feature is extremely useful for diagnosing issues and verifying script behavior.

---

## 1. Log File Location

All logs are saved by default in the **Documents** directory:

    C:\Users\<Username>\Documents\VoiceScriptPlayer\Log

---

## 2. Log File Format

Log files are automatically categorized by date or type.

| File Name Example | Description |
|--------------------|-------------|
| **2025-__-__.log** | General execution log that includes all records from the editor, services, and backend. |
| **2025-__-___Player.log** | Logs of errors or exceptions that occur in playback mode. Dedicated to Player-related events. |

All log files are saved in UTF-8 encoding and generated daily.

---

## 3. Log Categories

Each log entry is classified under one of the following **categories**:

| Category | Description |
|-----------|-------------|
| **UI** | User interface-related exceptions — buttons, windows, controls, etc. |
| **Domain** | Errors in project logic, data processing, or internal operations. |
| **Task** | Errors in asynchronous operations, timers, or background processes. |
| **Player** | Errors that occur during playback mode or while previewing in the editor — device, file, or execution control related exceptions. |

> 💡 **Tip:**  
> “Player” logs are generated only during actual playback.  
> However, if playback is triggered within the editor, the same logging behavior applies.

---

## 4. Log Structure Example

Below is a simplified example from `2025-__-___Player.log`:

    ============================================================
    [Time]     2025-__-__ __:__:__
    [Category] Player
    [Caller]   ExceptionHandler
    [Type]     System.IO.FileNotFoundException
    [Message]  Could not find file '...Sound1.audio'.
    [Source]   System.Private.CoreLib
    [Target]   Microsoft.Win32.SafeHandles.SafeFileHandle.CreateFile(...)
    [StackTrace]
       at System.IO.File.ReadAllText(String path)
       at VoiceScriptPlayer.Models.AudioItem..ctor(...)
       at VoiceScriptPlayer.Core.Event.AudioEvent.get_AudioItem() ...
    ============================================================

---

## 5. How to Read Logs

| Field | Description |
|--------|-------------|
| **[Time]** | Timestamp of the error or event. |
| **[Category]** | Module or area where the issue occurred. |
| **[Caller]** | Function or handler that triggered the event. |
| **[Type]** | Exception type (e.g., System.Exception, FileNotFoundException). |
| **[Message]** | Short description of the error. |
| **[Source]** | Assembly or namespace where the error originated. |
| **[Target]** | Actual method signature that was called. |
| **[StackTrace]** | Call stack trace showing where the error occurred (for debugging). |

> 💡 **Note:**  
> The StackTrace is intended for internal debugging.  
> Regular users don’t need to understand the detailed code.  
> Checking only the **[Message]** field is usually enough to identify most issues.

---

## 6. Playback Halt

Errors in the `Player` category are not just recorded —  
they are **immediately displayed on screen, and playback stops automatically.**

- Error messages appear in red text on the screen.  
- They are simultaneously written to `Player.log`.  
- Playback completely stops, and the project cannot be restarted until the issue is resolved.

Example:

    File not found.
    C:\Users\Documents\VoiceScriptPlayer\Project\NewProject\Asset\Sound\NewSound.wav

> 💡 **Note:**  
> This behavior occurs in both **Editor Mode** and **Playback Mode**.  
> If a missing file or device error occurs during playback, it stops instantly.

---

## 7. Reporting Issues

Even if an unexpected error occurs, VoiceScriptPlayer automatically generates a log.  
If you experience reproducible problems or recurring abnormal behavior,  
please send the **log file** along with a detailed description to the developer.

Include the following information in your report:

- When and under what conditions the error occurred  
- What feature or function you were using  
- What happened immediately after the error  

Developers can quickly identify and fix the issue using these logs.  
(Official bug reporting channels will be announced later.)

---

## 8. Debugging Tips

- **Project won’t run or playback stops** → Check `Player.log`  
- **UI not responding** → Check the `UI` category logs  
- **Frequent errors** → Open the most recent `.log` file and review the last entry  
- **Missing file or access errors** → Check `[Message]` or `[Target]` for file paths  

---

## 9. Related Documents

- [Playback Mode](run.md)  
- [Runtime Helper](../editor/runtime-helper.md)
