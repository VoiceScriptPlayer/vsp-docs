# Hailuo 購読と支払いガイド

## 1. 概要 (Overview)
[Hailuo](https://www.minimax.io/audio) は **Minimax** が提供する **クラウドベースの音声合成サービス** です。  
VoiceScriptPlayer で Hailuo を利用するには、**別途 API プランの購読** が必要です。  
一般的な Web プランと API プランは **別サービス** なので、必ず区別して契約してください。

> ⚠️ **重要:**  
> Hailuo API は無料では提供されていません。  
> 一般の Web 音声合成プラン（ブラウザ版）は VoiceScriptPlayer では利用できません。  
> **API サブスクリプションプラン** を有効化する必要があります。

---

## 2. 購読手順 (Subscription Steps)

1. **Minimax アカウントの作成**  
   [Minimax サインアップページ](https://www.minimax.io/audio) からアカウントを作成し、ログインします。

2. **API サブスクリプションページへアクセス**  
   [Audio Subscription ページ](https://platform.minimax.io/subscribe/audio-subscription) にアクセスします。  
   ここで **API プラン** を選択できます。  
   ![hailuo-subscription](../images/hailuo_subscription.png)

3. **プランの選択と支払い**  
   - 希望する API プランを選択して決済を行います。  
   - 支払い方法は通常、**クレジットカード** または **海外対応カード** が必要です。

4. **API キーの発行**  
   支払い完了後、上部メニューの **Account → API Keys** をクリックします。  
   ページ下部の **「Create new secret key」** ボタンを押して、新しい API キーを生成します。  
   ![hailuo-create-key](../images/hailuo_create_key.png)  
   最初に表示される **Secret Key** が、あなたの **Hailuo API キー** です。  
   セキュリティ上、このキーは **一度しか表示されない** ため、必ずコピーして安全な場所に保管してください。  
   紛失した場合は、新しいキーを再発行する必要があります。  
   ![hailuo-key-dialog](../images/hailuo_key_dialog.png)  
   生成したキーを VoiceScriptPlayer の **AI 設定 → Hailuo** 項目に入力すると、接続が完了します。

5. **残りコイン（使用量）の確認**  
   購読後は [Audio Subscription ページ](https://platform.minimax.io/subscribe/audio-subscription) で、  
   **残りのコイン（利用可能残高）** をリアルタイムで確認できます。  
   ![hailuo-remaincoin](../images/hailuo-remaincoin.png)

---

## 3. プラン概要 (Pricing Overview)

| 区分 | 説明 |
|------|------|
| **Web プラン** | Hailuo サイト内で音声合成ができる一般プラン（VoiceScriptPlayer とは非互換） |
| **API プラン** | 外部プログラム（例：VoiceScriptPlayer）から API 経由で音声を合成できるプラン |
| **支払い周期** | 月額サブスクリプション（自動更新可能） |
| **コインの利用方式** | 音声の長さに応じてコインが消費され、残高がなくなると追加購入が必要 |

---

## 4. 注意事項 (Notes)
- API プランには **無料トライアルはありません**。  
- 購読をキャンセルしても、残りのコインは **返金されません**。  
- API リクエストごとにコインが消費されるため、不要なテスト呼び出しは避けてください。  
- ネットワークが不安定な場合、API 呼び出しが失敗してもコインが減ることがあります。  
- 支払い時は必ず **「Audio API Subscription」** の項目を選択してください。

---

## 5. 関連ドキュメント (Related Documents)
- [AI → Hailuo の使用方法](../ai/hailuo.md)  
- [Hailuo 公式サイト](https://www.minimax.io/audio)  
- [Audio Subscription 管理ページ](https://platform.minimax.io/subscribe/audio-subscription)
