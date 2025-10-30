# Hailuo 订阅与支付指南

## 1. 概述 (Overview)
[Hailuo](https://www.minimax.io/audio) 是由 **Minimax** 提供的 **云端语音合成服务**。  
要在 VoiceScriptPlayer 中使用 Hailuo，必须 **单独订阅 API 套餐计划**。  
请注意，普通网页版套餐与 API 套餐是 **完全不同的服务**，务必区分后再进行购买。

> ⚠️ **重要提示：**  
> Hailuo API **不是免费服务**。  
> 普通网页语音合成套餐（Web Plan）无法在 VoiceScriptPlayer 中使用。  
> 必须启用 **API 订阅计划** 才能正常调用。

---

## 2. 订阅步骤 (Subscription Steps)

1. **创建 Minimax 账户**  
   前往 [Minimax 注册页面](https://www.minimax.io/audio)，注册并登录账户。

2. **进入 API 订阅页面**  
   打开 [Audio Subscription 页面](https://platform.minimax.io/subscribe/audio-subscription)。  
   在此页面中可以选择 **API 套餐计划**。  
   ![hailuo-subscription](../images/hailuo_subscription.png)

3. **选择套餐并支付**  
   - 选择所需的 API 订阅计划并完成支付。  
   - 通常需要 **支持国际支付的信用卡** 或 **海外信用卡**。

4. **生成 API Key**  
   支付完成后，点击顶部菜单中的 **Account → API Keys**。  
   在页面底部点击 **「Create new secret key」** 按钮创建新的 API 密钥。  
   ![hailuo-create-key](../images/hailuo_create_key.png)  
   创建后显示的 **Secret Key** 即为您的 **Hailuo API 密钥**。  
   该密钥 **仅显示一次**，请务必复制并安全保存。  
   如果遗失，需要重新生成新的密钥。  
   ![hailuo-key-dialog](../images/hailuo_key_dialog.png)  
   将生成的密钥输入到 VoiceScriptPlayer 的 **AI 设置 → Hailuo** 中，即可完成连接。

5. **查看剩余使用量（Coins）**  
   订阅后，可在 [Audio Subscription 页面](https://platform.minimax.io/subscribe/audio-subscription)  
   实时查看剩余 **Coins（可用额度）**。  
   ![hailuo-remaincoin](../images/hailuo-remaincoin.png)

---

## 3. 套餐说明 (Pricing Overview)

| 类型 | 说明 |
|------|------|
| **网页套餐 (Web Plan)** | 仅限在 Hailuo 官网进行语音合成的普通计划（与 VoiceScriptPlayer 不兼容） |
| **API 套餐 (API Plan)** | 允许外部程序（如 VoiceScriptPlayer）通过 API 调用语音合成服务 |
| **计费周期** | 按月订阅（可自动续订） |
| **Coins 使用方式** | 按语音生成时长扣除 Coins，余额用尽后需重新充值 |

---

## 4. 注意事项 (Notes)
- API 套餐 **不提供免费试用**。  
- 取消订阅后，剩余的 Coins **不会退款**。  
- 每次 API 请求都会扣除 Coins，请避免频繁的测试调用。  
- 若网络不稳定，可能导致 API 请求失败但仍会扣费。  
- 付款时请务必选择 **“Audio API Subscription”** 项目。

---

## 5. 相关文档 (Related Documents)
- [AI → Hailuo 使用方法](../ai/hailuo.md)  
- [Hailuo 官方网站](https://www.minimax.io/audio)  
- [Audio Subscription 管理页面](https://platform.minimax.io/subscribe/audio-subscription)
