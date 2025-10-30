# 开始

*欢迎使用 *VoiceScriptPlayer** 🎵
本文档将指导您从安装程序到首次运行、
到创建新项目。  
它还包括启用人工智能功能的基本设置说明。

---

## 系统要求

- Windows 10 / 11（64 位）
- 无需安装 - 可移植可执行文件
- GPU 加速（建议使用 CUDA 11.8 或更高版本）
- **所需运行时：** [.NET 8.0 桌面运行时](https://dotnet.microsoft.com/en-us/download/dotnet/8.0)

> ⚠️ **注意：**
> VoiceScriptPlayer 基于 .NET 8.0 构建。
> 如果您的系统没有安装该运行时，它将无法运行。

---

## 2.

1. 从 [官方网站](https://www.patreon.com/VoiceScriptPlayer) 下载最新版本。  
2. 解压缩（zip）并保存到您选择的文件夹中。  
3.运行 `VoiceScriptPlayer.exe`。

> ⚡ 不需要管理员权限、
> 设置和日志文件创建在 "我的文档/VoiceScriptPlayer "文件夹中。

---

## 人工智能功能组件

VoiceScriptPlayer 中的 AI 选项卡可访问
语音识别 (STT)、语音合成 (TTS) 和翻译功能。  
由于这些功能与外部程序或 API 服务器配合使用、
首次使用时，您需要准备以下组件

| 类别 | 名称 | 要求 | 说明
|------|------|------------|------|
| **STT** | [Microsoft Speech Recognition](ai/speechRecognition.md) | 需要单独安装 | 需要安装 Microsoft Server Speech Platform Runtime + Language Pack
**二级 STT（可选）** | [Whisper](ai/whisper.md) | 可选安装 | 实现更高精度的语音识别
**TTS** | [COEIROINK](ai/coeiroink.md) / [ElevenLabs](ai/elevenlabs.md) / [Hailuo](ai/hailuo.md) | API key 或本地引擎 | 将文本转换为语音
| **翻译** | [DeepL](ai/deepl.md) / [LibreTranslate](ai/libretranslate.md) | API 密钥或本地服务器 | 自动翻译字幕、对白

> 💡 各项人工智能功能的安装和设置说明可在相应的文档中找到。
> 相应的文档中。

---

### ⚙️ AI 功能设置步骤

1. 转到顶部的 **AI 选项卡**。  
2. 选择每个人工智能项目，然后单击 ⚙️ Settings（设置）按钮。  
3. 输入本地服务器地址或 API 密钥以激活该功能。  

> 某些功能（如 COEIROINK）需要运行单独的程序（如 `COEIROINKv2.exe`）。
> 需要运行一个单独的程序（如 `COEIROINKv2.exe`）。
> 可以自动注册可执行位置，并在程序启动时打开。

---

## 4. 首次运行屏幕

首次运行程序时，您将看到如下所示的主屏幕。

![screenshot-main-ui](images/screenshot-main-ui.png)

该屏幕是管理和运行项目的**启动中心**。

---

#### 🖥️ 主要配置

| 区域 | 说明
|------|------|
| 左侧边栏** | 包含主页、编辑、连接设备、设置等菜单。
| 顶部搜索栏** 可以按名称或标签搜索项目。
| 右侧的设备状态指示器：显示是否已连接 Handy、SR1 等支持的设备。
| **项目卡片列表** | 创建的项目以卡片形式显示。

---

## 创建新项目

![project-create](images/project-create.png)

创建新项目的步骤如下

1. 单击左侧边栏中的 **✏️ 图标（编辑器）。  
2. 按顶部的**'新建项目'**按钮。  
3. 在右侧区域设置以下项目  
   - **项目标题
   - **选择一个模板（空白项目/小游戏/多音轨）
   - **标签、说明、播放模式等（可选）
4. 点击 **创建（绿色按钮）**，您的项目将被创建并添加到列表中。

> 💡 创建的项目会自动保存、
> 并将出现在主屏幕的 "最近修改列表 "中。

---

## 导入现有项目

您可以通过以下方式打开现有项目

1. 从主屏幕或编辑器选项卡查看**项目列表**。  
2. 单击要导入的项目的 "编辑 "按钮，它将自动打开。  
3. 最近编辑的项目也会显示在**顶部列表**中。  
4. 您可以随时编辑标题、标签、描述等。

> 📁 项目会自动保存，除非您将其删除，否则会保留在列表中。

---

## 设置和日志位置

VoiceScriptPlayer 的配置设置和日志存储在
**我的文档/VoiceScriptPlayer "** 文件夹中。

| 项目 | 路径
|------|------|
| **设置文件** | `My Documents/VoiceScriptPlayer/Option.json` | | **日志文件** | `My Documents/VoiceScriptPlayer/Option.json` | | `My Documents/VoiceScriptPlayer/Option.json
| **日志文件** | `My Documents/VoiceScriptPlayer/Log/2025-10-13_Player.log` | | `My Documents/VoiceScriptPlayer/Log/2025-10-13_Player.log

> ⚠️ 运行程序时遇到的任何异常或错误都会 > 自动记录到日志文件中。
> 自动记录到日志文件中。

---

## 下一步

- [项目管理](project/create.md) - 创建新项目的详细信息
- [人工智能设置指南](ai/whisper.md) - 设置 Whisper、COEIROINK、DeepL 等。
- [设备集成](device/tcode.md) - 连接 Handy / SR1 设备
- [功能摘要](features.md) - 主要功能和界面说明
