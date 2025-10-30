# Microsoft Speech Recognition (Microsoft.Speech)

## 1. 概述
**Microsoft Server Speech Platform Runtime** 是一个支持 **语音识别和语音合成** 的运行时环境。  
在 VoiceScriptPlayer 中，它用于提供 **语音识别 (STT)** 功能。  

> ⚠️ 与 Windows 内置的 SAPI（`System.Speech`）不同，必须单独安装 **运行时** 和 **语言包** 才能正常使用。

---

## 2. 安装与准备

### 1) 必要下载
必须安装以下两个文件：

- **Microsoft Server Speech Platform Runtime (x64)**  
  [下载链接](https://www.microsoft.com/en-us/download/details.aspx?id=27225)

- **Microsoft Server Speech Recognition Language Packs（语言包合集）**  
  [下载链接](https://www.microsoft.com/en-us/download/details.aspx?id=27224)  
  ![安装文件](../images/languagepack_setup_file.png)

> 第一个文件是 **运行时引擎**，第二个文件是 **语言包（支持多种语言）**。  
> 第二个文件名以 **TELE** 结尾的即为语言包文件。  

---

### 2) 语言包注意事项
- 必须安装与系统或项目需求相符的语言包。  
- 常用语言代码示例：  
  - `en-US` → 英语（美国）  
  - `ko-KR` → 韩语  
  - `ja-JP` → 日语  
  - `zh-CN` → 中文（简体）  
- 如果未正确安装匹配的语言包，识别引擎将无法启动或报错。

---

### 3) 安装验证方法
确认安装是否成功：

1. 打开 **控制面板 → 程序和功能**。  
2. 如果能看到以下两项，则说明安装成功：  
   - `Microsoft Server Speech Platform Runtime (x64)`  
   - `Microsoft Server Speech Recognition Language - <已安装语言>`  

示例（安装韩语语言包时）：  
![安装确认](../images/speech_recognition_setup.png)

---

## 3. 在 VoiceScriptPlayer 中的使用
- 安装完成后，VoiceScriptPlayer 会 **自动检测运行时和语言包**。  
- 用户无需手动启动，程序会在检测到所需语言包后自动启动语音识别器。

---

## 4. 常见错误与解决方案

### 1) `运行时安装错误`
![运行时错误](../images/setup_error.png)

- **原因：** 运行时未安装或位数不匹配（32/64 位）。  
- **解决方法：**  
  - 确认是否已安装 `Microsoft Server Speech Platform Runtime (x64)`。

---

### 2) `未安装语言包`
![语言包错误](../images/languagepack_error.png)

- **原因：** 所需语言包未安装。  
- **解决方法：**  
  - 从 [语言包下载页面](https://www.microsoft.com/en-us/download/details.aspx?id=27224) 安装项目所需语言包。  
  - 确认语言代码（如 `ko-KR`, `en-US`, `ja-JP` 等）一致。

---

## 5. 注意事项
- 必须安装 **x64 版本运行时**（不支持 x86）。  
- 不同语言需分别安装对应语言包。  
- Microsoft Speech Platform 已停止更新，不再提供最新特性。  

---

## 6. 许可与来源
- **Microsoft Server Speech Platform Runtime**：Microsoft 软件许可条款  
- 官方下载：  
  - [Runtime (x64)](https://www.microsoft.com/en-us/download/details.aspx?id=27225)  
  - [Language Packs](https://www.microsoft.com/en-us/download/details.aspx?id=27224)
