# DeepL 翻译 (Text Translation)

## 1. 概述 (Overview)
[DeepL](https://www.deepl.com/) 是世界领先的 **AI 翻译服务**。  
它擅长自然语言表达和上下文理解，  
在 VoiceScriptPlayer 中用于 **字幕翻译、实时对白翻译、界面多语言转换** 等功能。

> 💡 **第一次使用 API 订阅？**  
> 👉 [**查看 DeepL 订阅与 API 设置指南**](../ai/deepl-subscription.md)

---

## 2. 创建账户 (Account Creation)
使用 DeepL API 前，需要先创建一个 **DeepL 账户**。

1. 访问 [DeepL 官方网站](https://www.deepl.com/pro-api)  
2. 选择 **“免费试用” (Free API plan)** 或 **付费计划 (Pro)**  
3. 通过邮箱注册并验证账户  
4. 登录后在 **[Account → API Key]** 菜单中查看 API 密钥

> 🔑 免费计划（API Free）每月可翻译 50 万字符。  
> Pro 计划提供更大的配额和更快的响应速度。

---

## 3. 获取 API 密钥 (API Key Setup)
注册后，前往 [DeepL 账户页面](https://www.deepl.com/account/summary)，  
复制如下格式的 API 密钥：  

    示例:
    auth_key: 1234abcd-5678efgh-ijklmnop-qrstuvwx:fx

将该密钥粘贴到 VoiceScriptPlayer 设置中的 **DeepL API Key 输入框**。

> ⚠️ API 密钥属于个人敏感信息，请勿在公共仓库或共享文件中泄露。

---

## 4. 配置方法 (Configuration)
在 VoiceScriptPlayer 中，可通过 **DeepL 翻译设置** 配置以下项目：

| 项目 | 说明 |
|------|------|
| API Key | 从 DeepL 账户获取的认证密钥 |
| Source Language | 源语言（例如 `JA`, `EN`, `KO`） |
| Target Language | 目标语言（例如 `EN`, `KO`, `JA`） |

---

## 5. 使用方法 (Usage)
1. 使用 Whisper 或其他 STT 引擎提取文本  
2. 设置翻译目标语言（例如：日语 → 韩语）  
3. 点击翻译按钮  
4. 翻译结果将以字幕或文本形式显示  

> 💡 DeepL 针对 **句子级翻译** 进行了优化，  
> 建议将字幕内容分成适当长度的句子以获得更自然的结果。  
> 💎 使用 **Pro 版 (DeepL API Pro)** 可提升语义理解和表达准确度，  
> 特别适用于含有 **情感表达、比喻、委婉语** 的句子，翻译效果更加自然流畅。

---

### 🔍 翻译质量对比示例

**原文（日语）：**  
ズルをしてレベルを上げるよりも、我慢して我慢してどうしても我慢できなくなってから出す方が気持ちいいですよ。

| 类型 | 翻译结果 |
|------|----------|
| **网页版 (DeepL)** | 比起用作弊的方法升级，忍耐、再忍耐，直到实在忍不住再释放会更舒服。 |
| **DeepL API Free** | 比起用小聪明提升等级，反复忍耐到实在忍不住才释放，更加有快感。 |
| **DeepL API Pro** | 与其用作弊手段提升等级，不如忍到真的忍无可忍时再释放，更畅快。 |

> 💬 **说明：**  
> Pro 版不仅进行逐词翻译，而是基于 **整体语境** 进行理解，  
> 因此在情感表达与语气细节上能生成更自然流畅的结果。

---

## 6. 注意事项 (Notes & Limitations)
- 免费计划每月限制 **50 万字符**。  
- API 密钥是账户唯一的，多台电脑同时使用可能导致 **请求受限**。  
- DeepL 必须在 **联网状态** 下使用。  
- 翻译质量会因语言组合（如 英语↔日语、英语↔韩语）而异。  
- **DeepL API Free** 与 **DeepL API Pro** 使用不同的接口端点。

---

## 7. 许可与来源 (License & Credits)
- **DeepL API**：专有许可 (© DeepL SE)  
- 官方网站：[https://www.deepl.com](https://www.deepl.com)  
- 官方 API 文档：[https://www.deepl.com/docs-api](https://www.deepl.com/docs-api)  
- 允许商业用途，但必须遵守 DeepL 服务条款。

---

## 8. 在 VoiceScriptPlayer 中使用翻译功能 (通用功能)

![translate-contextmenu](../images/translate-contextmenu.png)

在 VoiceScriptPlayer 中，几乎所有文本输入框 (TextBox)  
都可以通过 **右键菜单** 直接调用翻译功能。

---

### 🧭 使用步骤
1. **选中要翻译的文本并右键单击**  
2. 选择 **“翻译 → 翻译为韩语 (DeepL)”** 或 **“翻译为日语 (Web)”**  
3. 选择翻译引擎（DeepL、Google、Papago 等），结果将立即显示。

---

### ⚡ 快捷键支持
- **Ctrl + T**  
  → 将当前选中的文本通过 **默认翻译引擎** 立即翻译。  
  （可在设置中更改默认引擎）

---

### 🌐 支持的翻译引擎
| 类型 | 引擎 | 特点 |
|------|------|------|
| **本地 API** | DeepL Translate | 高精度，语境理解出色 |
| **网页翻译** | Google Translate | 支持多语言 |
| **网页翻译** | Naver Papago | 韩语与日语翻译效果出众 |

---

> 💡 **提示：**  
> 此功能适用于所有翻译引擎（DeepL、Google、Papago），  
> 并可在 **对白编辑器、字幕编辑器、文本输入框** 等  
> 所有可编辑文本区域中使用。

---

## 9. 常见问题 (Troubleshooting / FAQ)
- ❓ *出现 “Invalid authentication key” 错误。*  
  → 请检查 API 密钥是否正确输入，并确保没有空格。  

- ❓ *出现 “Quota exceeded” 错误。*  
  → 已超出免费额度（50 万字符）。请升级至 Pro 计划或等待下月重置。  

- ❓ *无法翻译。*  
  → 请检查网络连接，并确认使用的端点 (API Free / Pro) 是否正确。
