# 调试与日志（Debug & Log）

**VoiceScriptPlayer** 会自动记录运行过程中发生的所有异常、事件和警告。  
此功能在问题诊断或脚本运行验证时非常有用。

---

## 1. 日志文件位置

所有日志默认保存在 **我的文档** 路径下：

    C:\Users\<用户名>\Documents\VoiceScriptPlayer\Log

---

## 2. 日志文件格式

日志文件会根据日期或类别自动分类保存。

| 文件名示例 | 说明 |
|-------------|------|
| **2025-__-__.log** | 常规运行日志，包含编辑器、服务、后台等的完整记录。 |
| **2025-__-___Player.log** | 播放模式（Playback）下发生的错误或异常日志，仅记录 Player 相关事件。 |

所有日志文件均以 UTF-8 编码保存，  
并按天自动生成。

---

## 3. 日志类别

每条日志条目根据以下 **类别（Category）** 进行区分：

| 类别 | 说明 |
|------|------|
| **UI** | 用户界面相关异常，如按钮、窗口、控件操作等。 |
| **Domain** | 项目逻辑、数据处理或内部计算过程中的错误。 |
| **Task** | 异步任务、计时器或后台进程相关错误。 |
| **Player** | 播放模式（Playback）或编辑器中播放时发生的错误，例如设备、文件或执行控制异常。 |

> 💡 **提示：**  
> “Player” 日志仅在实际播放环境中生成。  
> 如果在编辑器中播放，同样会以相同方式记录。

---

## 4. 日志结构示例

以下为 `2025-__-___Player.log` 的示例日志（简化版）：

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

## 5. 日志解析方法

| 项目 | 说明 |
|------|------|
| **[Time]** | 错误或事件发生的时间。 |
| **[Category]** | 发生的模块或功能区域。 |
| **[Caller]** | 调用的函数或处理程序名称。 |
| **[Type]** | 异常类型（如 System.Exception、FileNotFoundException 等）。 |
| **[Message]** | 错误的简要说明。 |
| **[Source]** | 出错的程序集或命名空间。 |
| **[Target]** | 实际被调用的方法签名。 |
| **[StackTrace]** | 出错代码路径（用于调试追踪）。 |

> 💡 **说明：**  
> “StackTrace”（堆栈跟踪）是内部调试信息，普通用户无需理解。  
> 通常只查看上方的 **[Message]** 项即可判断大多数错误原因。

---

## 6. 播放中断（Playback Halt）

属于 `Player` 类别的错误不仅会被记录，  
还会 **实时显示在屏幕上，并自动停止播放**。

- 错误信息以红色文字显示在屏幕上。  
- 同时记录到 `Player.log` 文件中。  
- 出现此状态后，播放将完全停止，  
  在问题解决前无法重新启动项目。

示例：

    找不到文件。
    C:\Users\Documents\VoiceScriptPlayer\Project\新项目\Asset\Sound\新音频.wav

> 💡 **提示：**  
> 该行为在编辑器模式与播放模式中相同。  
> 即使在编辑中播放时出现文件缺失或设备错误，也会立即停止。

---

## 7. 发生问题时的处理方法

即使发生意外错误，VoiceScriptPlayer 也会自动记录日志。  
如果出现可重复的问题或异常行为，  
请将 **对应的日志文件** 及问题描述一并反馈给开发者。

反馈时请尽量包含以下信息：

- 错误发生的时间与场景  
- 当时使用的功能或操作  
- 错误发生后的具体表现  

开发者可通过这些日志快速分析并修复问题。  
（正式的错误报告渠道将于稍后公布。）

---

## 8. 调试技巧

- **项目无法运行或播放中断** → 检查 `Player.log`  
- **UI 操作无反应** → 检查 `UI` 类别日志  
- **错误频繁出现** → 打开最新日期的 `.log` 文件，查看最后一条记录  
- **文件缺失或访问错误** → 在 `[Message]` 或 `[Target]` 项中查看路径信息  

---

## 9. 相关文档

- [播放模式 (Playback Mode)](run.md)  
- [运行时助手](../editor/runtime-helper.md)
