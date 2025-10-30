# 功能概览 (Features)

VoiceScriptPlayer 是一个能够在同一环境中整合 **语音、视频、交互、设备控制与 AI 功能** 的  
**基于项目的多媒体编辑与运行平台**。

---

## 🎞️ 基于项目的管理

- 将音频、视频、字幕、UI、Live2D、AI 设置等 **统一在一个项目中管理**  
- 按照 `Asset` 文件夹结构自动整理与加载资源  
- 所有编辑记录都会自动保存，并可按项目进行备份  
- 参考 [创建项目](project/create.md) 与 [保存/加载项目](project/manage.md)

---

## 🕒 基于时间轴的编辑

- 所有资源（音频、字幕、Live2D、事件等）均可在 **时间轴 (Timeline)** 上编辑  
- 支持缩放、对齐 (Snap)、区间选择等精细控制  
- 使用多轨结构，可同时同步语音、视频与交互内容  
- 参考 [时间轴标签](editor/timeline.md)

---

## 🧩 多样化控件

- 提供按钮、复选框、滑块、图片等 **UI 控件元素**  
- 可同时显示 Live2D、Spine、图片等视觉资源  
- 每个控件都有 **独立属性 (Property)** 与 **事件触发器 (Event Trigger)**  
- 参考 [UI 标签](editor/ui.md) 与 [Live2D 标签](editor/live2d.md)

---

## ⚙️ Stroke 与设备控制

- 可直接连接物理设备 (TCode、Intiface) 的 **Stroke 编辑系统**  
- 基于多轴 (Axis) 的曲线编辑、模式播放、速度修正、倒计时模式等功能  
- 与 `.funscript` 格式 **完全兼容**  
- 参考 [Stroke 标签](editor/stroke.md) 与 [TCode 文档](device/tcode.md)

---

## 🎮 交互事件系统 (Interactive Event System)

- 根据键盘输入、变量比较、UI 交互等多种条件执行 **事件触发器**  
- 支持条件判断、循环、计数器、状态变量等构建复杂场景逻辑  
- 基于脚本语言 `SCAScript`，可定义自然语言触发与行为逻辑  
- 参考 [脚本标签](editor/script.md)

---

## 🧠 AI 功能整合

- **语音识别 (STT)**：基于 Whisper 的本地/服务器识别支持  
- **语音合成 (TTS)**：支持 ElevenLabs、COEIROINK、Hailuo 等多种引擎  
- **自动翻译 (Translation)**：支持 DeepL、LibreTranslate、Meta AI  
- 所有 AI 功能均可在本地模式或网络模式间切换  
- 详情参阅 [AI 功能文档](ai/whisper.md)

---

## 🗂️ 资源管理与翻译词典

- 集中管理项目中的变量、图片、Live2D 资源等内容  
- 通过 **翻译词典功能** 可对自动翻译结果进行逐词修正  
- 例如：「花 → 一朵」、「哥哥 → 欧巴」等适配语境替换  
- 参考 [资源管理标签](editor/resources.md)

---

## 🧭 运行时助手 (Runtime Helper)

- 实时监控 **Stroke 位置、变量数值、事件状态**  
- 用于调试与变量同步测试  
- 参考 [运行时助手标签](editor/runtime-helper.md)

---

## ▶️ 播放模式 (Playback Mode)

- 在独立的运行环境中播放完成的项目  
- 播放模式选项：仅手动 / 推荐使用设备 / 仅设备 / 不限制  
- 提供麦克风检测与设备连接检查功能  
- 出错时会在屏幕上提示并记录到 `Player.log`  
- 参考 [运行 (Playback Mode)](playback/run.md)

---

## 🧾 调试与日志系统 (Debug & Log System)

- 所有异常与事件都会自动记录在 `Documents/VoiceScriptPlayer/Log` 文件夹中  
- 按照 UI / Domain / Task / Player 分类  
- 播放过程中若发生错误，会显示红色提示并自动停止  
- 参考 [调试与日志文档](playback/debug.md)

---

## 🔌 可扩展性与自动化

- 基于 C# 的插件结构，可扩展功能模块  
- 支持通过脚本自定义事件、变量联动、外部设备控制  
- 未来将加入 API 与外部集成模块  

---

## 🌐 设备集成 (Device Integration)

- 支持 **TCode / Intiface** 协议的设备通信  
- 内置多轴控制、实时信号输出、速度修正等高级功能  
- 可在运行时助手与日志中查看设备连接状态  
- 参考 [TCode](device/tcode.md)、[Intiface](device/intiface.md)

---

## 🧩 附加功能摘要

| 分类 | 功能概要 |
|------|-----------|
| **UI/UX** | 拖拽编辑、鼠标选择、自动对齐、实时预览 |
| **数据** | 基于变量与状态的事件处理、实时更新 |
| **AI/字幕** | Whisper 字幕生成、翻译、自动同步 |
| **兼容性** | `.funscript` 导入/导出、Spine & Live2D 支持 |
| **安全性** | 基于项目内部路径的资源保护 |

---

## 📘 相关文档

- [创建与管理项目](project/create.md)  
- [时间轴编辑](editor/timeline.md)  
- [Stroke 控制](editor/stroke.md)  
- [运行 (Playback Mode)](playback/run.md)  
- [AI 功能](ai/whisper.md)
