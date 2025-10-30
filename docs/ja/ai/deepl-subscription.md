# DeepL サブスクリプションと API 設定ガイド

## 1. 概要 (Overview)
[DeepL](https://www.deepl.com/) は世界最高水準の **AI 翻訳サービス** です。  
VoiceScriptPlayer では、**字幕翻訳**、**セリフの自動翻訳**、**UI の多言語化** に利用されます。  

VoiceScriptPlayer で DeepL を使用するには、**DeepL API キー**（API Free または API Pro）を取得する必要があります。

> ⚠️ **重要:**  
> DeepL の **ウェブ翻訳サービス (translate.deepl.com)** と  
> **API サービス (pro-api.deepl.com)** は **別のプラン** です。  
> 通常のウェブ翻訳アカウントでは API を利用できません。  
> 必ず **DeepL API 専用プラン** を契約してください。

---

## 2. サブスクリプション手順 (Subscription Steps)

1. **DeepL アカウントを作成**  
   [DeepL Pro API ページ](https://www.deepl.com/pro-api) にアクセスし、アカウントを登録します。  
   無料の **API Free プラン** または 有料の **API Pro プラン** を選択できます。  

2. **メール認証**  
   登録時に入力したメールアドレス宛に確認メールが届きます。  
   メール内のリンクをクリックしてアカウントを有効化してください。  

3. **プランの選択と確認**  
   - **API Free:** 月 50 万文字まで無料で利用可能  
   - **API Pro:** 無制限翻訳、高速応答、優先処理  
   - 契約時に必ず **「DeepL API」** プランを選択してください。  
     (⚠️ *「DeepL Pro Personal」などの通常プランでは API キーが発行されません。*)

   ![deepl-subscription](../images/deepl_subscription.png)

   > ⚠️ **注意:**  
   > DeepL には 2 種類のプランがあります：  
   > 1️⃣ **DeepL 翻訳 (Translator)** → 一般的なウェブ翻訳用（API 非対応）  
   > 2️⃣ **DeepL API** → ソフトウェア連携用（VoiceScriptPlayer が使用）  
   >
   > VoiceScriptPlayer では必ず **DeepL API プラン** が必要です。  
   > 「DeepL 翻訳」プランを契約しても API キーは発行されません。

4. **API キーの取得**  
   ログイン後、[DeepL アカウントページ](https://www.deepl.com/ja/account/keys) にアクセスし、  
   **認証キー (Authentication Key, auth_key)** を確認します。  

   例：
       auth_key: 1234abcd-5678efgh-ijklmnop-qrstuvwx:fx

   このキーを VoiceScriptPlayer の設定画面にある **DeepL API Key** 欄に貼り付けてください。

5. **プラン管理と請求情報**  
   契約や請求履歴は [DeepL プラン管理ページ](https://www.deepl.com/account/plan) で確認できます。  
   プラン変更、自動更新の停止、利用状況の確認も可能です。

---

## 3. 料金プラン比較 (Pricing Overview)

| 区分 | 名称 | 主な特徴 | 月間上限 | 価格 (USD) |
|------|------|-----------|------------|-------------|
| **無料** | DeepL API Free | 基本的な翻訳機能を提供 | 50 万文字 | 無料 |
| **有料** | DeepL API Pro | 無制限翻訳、高速応答 | 無制限 | $5.49 + 従量課金制 |

> 💡 **ヒント:**  
> DeepL API Free と API Pro は **異なるエンドポイント** を使用します。  
> - Free: `https://api-free.deepl.com/v2/translate`  
> - Pro: `https://api.deepl.com/v2/translate`  
> VoiceScriptPlayer は自動的に適切なエンドポイントを判別します。

---

## 4. API 接続テスト (Connection Test)

VoiceScriptPlayer 内で以下の手順により接続状態を確認できます：

1. 設定 → **AI 設定 → DeepL** を開く  
2. 取得した API キーを入力  
3. 「テスト翻訳」ボタンをクリック  
4. 「使用量: 0 / 合計: 0」と表示されたら接続成功です（Pro 版では 0/0 と表示される場合もあります）  

![deepl-test](../images/deepl_test.png)

---

## 5. 注意事項 (Notes & Limitations)
- **ウェブアカウント**（DeepL Pro Personal、Starter、Advanced）は API 非対応です。  
- **API キーが漏洩** した場合は、すぐに DeepL アカウントで再発行してください。  
- **API Free プラン** は月 50 万文字を超えると自動的に停止します。  
- **API Pro プラン** は使用量に応じて課金されます。  
- API の利用には **インターネット接続** が必要です。  

---

## 6. 関連ドキュメント (Related Documents)
- [AI → DeepL の使用方法](../ai/deepl.md)  
- [DeepL Pro API ページ](https://www.deepl.com/pro-api)  
- [DeepL プラン管理ページ](https://www.deepl.com/account/plan)  
