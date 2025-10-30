# LibreTranslate 翻译 (Translation)

## 1. 概述 (Overview)
**LibreTranslate** 是一个基于开源的 **机器翻译引擎**。  
它可以 **免费使用**，并且可以在本地运行，实现 **离线翻译**。  
在 VoiceScriptPlayer 中，LibreTranslate 用于提供 **字幕和脚本翻译** 功能。  

> ⚠️ 与其他 AI 功能不同，LibreTranslate 需要用户自行准备 **Python 环境并安装**。  
> 安装完成后，VoiceScriptPlayer 会自动启动并连接 LibreTranslate 服务器。  

---

## 2. 安装与准备 (Installation & Setup)

### 1) 安装 Python
- **支持版本：** Python **3.11**  
- **不支持版本：** Python **3.12, 3.13**（存在兼容性问题）  
- 下载链接：[Python 3.11.x](https://www.python.org/downloads/release/python-3119/)  

安装注意事项：
- 一定要勾选 **“Add Python to PATH”** 选项。  
- 安装后打开命令提示符确认：

    python --version  
    pip --version

### 2) 安装 LibreTranslate
当 Python 环境准备好后，在命令提示符（或 PowerShell）中输入以下命令：

    pip install libretranslate

执行完成后，LibreTranslate 就会被安装到您的系统环境中。  

---

## 3. 在 VoiceScriptPlayer 中使用
- 安装完成后，VoiceScriptPlayer 会 **自动检测 LibreTranslate 安装位置** 并启动服务器。  
- 用户无需手动输入命令或设置路径。  
- 当服务器运行时，翻译功能会自动启用，程序也会自动检测服务器是否在线。  

---

## 4. VoiceScriptPlayer 内的翻译功能（通用功能）

![translate-contextmenu](../images/translate-contextmenu.png)

在 VoiceScriptPlayer 的任意文本输入框 (TextBox) 中，  
都可以通过 **右键菜单** 直接调用翻译功能。  

---

### 🧭 使用方法

1. **选中要翻译的文字后右键点击**  
2. 选择 **“翻译 → 翻译成韩语(DeepL)”** 或 **“翻译成日语(Web)”** 等选项  
3. 结果会立即通过所选翻译引擎（DeepL、Google、Papago 等）显示。  

---

### ⚡ 快捷键支持
- **Ctrl + T**  
  → 使用当前设置的 **默认翻译引擎** 立即翻译选中文本。  
  （默认引擎可在设置中修改）

---

### 🌐 支持的翻译引擎
| 分类 | 引擎 | 特点 |
|------|------|------|
| **本地 API** | LibreTranslate | 可离线使用、隐私安全、开源免费 |
| **本地/云端** | DeepL Translate | 高精度、擅长语境理解 |
| **网页翻译** | Google Translate | 支持语言种类最多 |
| **网页翻译** | Naver Papago | 在韩语与日语翻译中表现优秀 |

---

> 💡 **提示：**  
> 该功能适用于所有翻译引擎（LibreTranslate、DeepL、Google、Papago），  
> 并可在项目中的 **对白编辑器、字幕编辑器、文本输入框** 等  
> 几乎所有可输入文本的界面中直接使用。  

---

## 5. 注意事项 (Notes & Limitations)
- 必须安装 **Python 3.11 版本**（不支持 3.12/3.13）。  
- 用户只需完成安装，**启动与连接由程序自动处理**。  
- 翻译质量可能不及 DeepL、Papago 等商业翻译服务。  
- 建议将长句拆分成短句翻译，以获得更准确的结果。  

---

## 6. 许可证与来源 (License & Credits)
- **LibreTranslate**: AGPL v3 License  
- 官方 GitHub: [https://github.com/LibreTranslate/LibreTranslate](https://github.com/LibreTranslate/LibreTranslate)
