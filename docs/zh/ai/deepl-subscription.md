# DeepL 订阅与 API 设置指南

## 1. 概述 (Overview)
[DeepL](https://www.deepl.com/) 是全球领先的 **AI 翻译服务**，  
在 VoiceScriptPlayer 中用于 **字幕翻译**、**台词自动翻译** 和 **UI 多语言转换**。  

要在 VoiceScriptPlayer 中使用 DeepL，您需要获取 **DeepL API 密钥**（API Free 或 API Pro）。

> ⚠️ **重要说明：**  
> DeepL 的 **网页翻译服务 (translate.deepl.com)** 与  
> **API 服务 (pro-api.deepl.com)** 是两种不同的订阅计划。  
> 普通的网页翻译帐户 **无法用于 API 接口调用**。  
> 必须激活专用的 **DeepL API 计划**。

---

## 2. 订阅步骤 (Subscription Steps)

1. **创建 DeepL 帐户**  
   访问 [DeepL Pro API 页面](https://www.deepl.com/pro-api) 并注册。  
   可选择 **API Free（免费计划）** 或 **API Pro（付费计划）**。  

2. **邮箱验证**  
   注册后，DeepL 会向您填写的邮箱发送验证邮件。  
   点击邮件中的链接以激活帐户。  

3. **选择与确认计划**  
   - **API Free**：每月最多可翻译 500,000 个字符（免费）  
   - **API Pro**：无翻译限制，响应更快，享受优先处理  
   - 订阅时请确保选择的是 **“DeepL API”** 项目。  
     (⚠️ *“DeepL Pro Personal” 为网页翻译版，不提供 API 密钥。*)

   ![deepl-subscription](../images/deepl_subscription.png)
   
   > ⚠️ **注意事项：**  
   > DeepL 提供两种不同的服务：  
   > 1️⃣ **DeepL Translator（翻译器）** → 用于普通网页翻译（不支持 API）  
   > 2️⃣ **DeepL API** → 用于程序集成（VoiceScriptPlayer 使用）  
   >
   > VoiceScriptPlayer 必须使用 **DeepL API** 计划。  
   > 如果您订阅了 “DeepL Translator” 计划，将不会获得 API 密钥。

4. **获取 API 密钥**  
   登录后，前往 [DeepL 帐户页面](https://www.deepl.com/zh/account/keys)，  
   找到您的 **认证密钥 (Authentication Key, auth_key)**。  

   示例：
       auth_key: 1234abcd-5678efgh-ijklmnop-qrstuvwx:fx

   将此密钥复制并粘贴到 VoiceScriptPlayer 设置中的 **DeepL API Key 输入栏**。

5. **管理订阅与账单**  
   您可以在 [DeepL 账单管理页面](https://www.deepl.com/account/plan) 查看订阅与支付记录。  
   可在此修改计划、取消自动续费、查看使用量等。

---

## 3. 价格对比 (Pricing Overview)

| 类型 | 名称 | 主要功能 | 每月限额 | 价格 (美元) |
|------|------|-----------|------------|--------------|
| **免费** | DeepL API Free | 提供基本翻译功能 | 500,000 字符 | 免费 |
| **付费** | DeepL API Pro | 无限制翻译，响应更快 | 无限制 | $5.49 + 按使用量计费 |

> 💡 **提示：**  
> DeepL API Free 与 API Pro 使用 **不同的接口地址**：  
> - Free: `https://api-free.deepl.com/v2/translate`  
> - Pro: `https://api.deepl.com/v2/translate`  
> VoiceScriptPlayer 会自动检测并使用正确的接口地址。

---

## 4. API 连接测试 (Connection Test)

在 VoiceScriptPlayer 中可以通过以下步骤验证 API 是否连接成功：

1. 打开 **设置 → AI 设置 → DeepL**  
2. 输入您的 API Key  
3. 点击 “测试翻译” 按钮  
4. 如果出现 “使用量: 0 / 总量: 0” 的提示，即表示连接成功（Pro 版可能显示 0/0）  

![deepl-test](../images/deepl_test.png)

---

## 5. 注意事项 (Notes & Limitations)
- **网页帐户**（DeepL Pro Personal、Starter、Advanced）不支持 API。  
- 若 **API 密钥泄露**，请立即登录 DeepL 重新生成密钥。  
- API Free 计划超过 50 万字符后将自动暂停服务。  
- API Pro 会根据使用量自动计费。  
- API 调用必须在 **联网环境下** 进行。  

---

## 6. 相关文档 (Related Documents)
- [AI → DeepL 使用方法](../ai/deepl.md)  
- [DeepL Pro API 页面](https://www.deepl.com/pro-api)  
- [DeepL 订阅管理](https://www.deepl.com/account/plan)  
