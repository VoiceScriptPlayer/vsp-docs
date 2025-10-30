# Intiface Central 接続（Device Bridge Setup）

## 1. 概要（Overview）
**Intiface Central** は、さまざまなデバイスを制御するための **デバイスブリッジプログラム** です。  
**VoiceScriptPlayer** は Intiface と連携し、Bluetooth または USB 経由で接続されたデバイスに  
**TCode 信号** を送信できます。

> 💡 Intiface は **Buttplug.io** をベースにした公式デバイスハブであり、  
> 複数のブランドのデバイスを 1 つのサーバーで統合的に制御できます。

---

## 2. 準備（Before You Begin）
Intiface Central は VoiceScriptPlayer とは別のプログラムです。  
接続前に Intiface をインストールし、サーバーを起動する必要があります。

### 🔧 インストール方法
1. [Intiface Central 公式サイト](https://intiface.com/central) から最新バージョンをダウンロード  
2. インストール後、プログラムを実行  
3. 上部の **「Start Server」** ボタンをクリックしてサーバーを起動  
4. ステータスバーに **「Server Running」** が表示されたら準備完了

---

## 3. 接続手順（Connection Steps）

### 🖱️ ステップ1 — 接続方法を選択
VoiceScriptPlayer を起動し、左メニューの「デバイス接続」をクリックします。  
「接続方法を選択してください」画面で **Intiface Central** を選択します。

![](../images/intiface-step1.png)

> 左から「接続しない」「直接接続」「Intiface Central」のボタンが並んでおり、  
> 3 番目の **Intiface Central** を選択します。

---

### 🌐 ステップ2 — サーバー接続の確認
VoiceScriptPlayer は既定で  
`ws://127.0.0.1:12345` のアドレスを介して Intiface と通信します。

Intiface が実行中の場合、「接続中です...」のメッセージの後に  
数秒で自動的に接続が完了します。

![](../images/intiface-step2.png)

> ✅ 接続が成功すると「接続されました。」と表示されます。

---

### ⚙️ ステップ3 — デバイス認識とテスト
Intiface は自動的にデバイス検索を開始します。  
デバイスが正常に接続されていれば、Intiface の **Devices** タブに一覧が表示されます。

![](../images/intiface-step3.png)

> **デバイスが一覧に表示されない場合**、Intiface 側で追加設定が必要な場合があります。  
> 例えば：  
> - **TCode デバイス** → ポート番号を手動で指定する必要があります  
> - **The Handy** → API Key を入力しないと認識されません  
>  
> ⚙️ 詳しくは [Intiface 高度設定ガイド](intiface_advanced.md) を参照してください。

**「完了」** ボタンを押して接続設定を保存します。

> 💡 次回以降は、VoiceScriptPlayer 起動時に自動的に Intiface に再接続されます。

---

## 4. 接続構造（Connection Overview）

VoiceScriptPlayer → Intiface Server → デバイス（Bluetooth / USB）

- VoiceScriptPlayer は Intiface サーバーに TCode コマンドを送信します。  
- Intiface は接続されているデバイスに信号を転送します。  
- 複数のデバイスを同時に接続して使用できます。

---

## 5. ⚙️ Intiface 内部設定の参考
一部のデバイスでは、Intiface 内で追加設定が必要です。  
以下の表を参考にしてください。

| デバイス種類 | 必要な設定 | 説明 |
|---------------|-------------|------|
| **TCode デバイス（OSR2、SR6 など）** | ポート番号の指定 | Intiface 設定ファイルで TCode サーバーポートを手動入力する必要があります。 |
| **The Handy** | API Key | Intiface 内の Handy 設定メニューで API Key を登録する必要があります。 |
| **その他の BLE デバイス** | ペアリング | Windows の Bluetooth 設定で事前にペアリングする必要があります。 |

> 🔍 詳細な設定方法については以下を参照してください：  
> - [Intiface 高度設定ガイド](intiface_advanced.md)  
> - [Intiface Central GitHub リポジトリ](https://github.com/intiface/intiface-central)  
> - [Buttplug.io プロジェクト](https://buttplug.io/)

---

## 6. よくある問題（Troubleshooting）

| 問題 | 原因 | 解決方法 |
|------|------|-----------|
| VoiceScriptPlayer が Intiface に接続できない | Intiface が起動していない | Intiface を起動し、「Start Server」ボタンを押す |
| 「ポートが使用中です」エラー | ポート 12345 が他のプログラムに使用されている | Intiface 設定で別のポートを指定し、VoiceScriptPlayer 側も同じポートに変更する |
| デバイスが Intiface に表示されない | Bluetooth ペアリングが不完全 | Windows の Bluetooth 設定からデバイスを削除して再ペアリング |
| テスト時に反応がない | デバイスが一時停止状態 | Intiface の Device タブで「Resume」をクリック |
| デバイスが頻繁に切断される | 電力不足または省電力モード | デバイスの省電力設定を無効にするか、有線接続を使用 |

---

## 7. 注意事項（Notes）
- Intiface は **ローカル WebSocket サーバー** として動作し、既定のポートは `12345` です。  
- 複数デバイスの同時接続が可能ですが、一部のデバイスはマルチコマンドをサポートしていません。  
- Intiface は Windows、macOS、Linux に対応していますが、  
  VoiceScriptPlayer は現在 **Windows のみ対応** です。

---

## 8. 参考資料（References）
- **Intiface Central 公式サイト:** [https://intiface.com/central](https://intiface.com/central)  
- **Buttplug.io プロジェクト:** [https://buttplug.io](https://buttplug.io)  
- **VoiceScriptPlayer 公式ドキュメント:** [https://voicescriptplayer.github.io/vsp-docs/](https://voicescriptplayer.github.io/vsp-docs/)  
- **TCode 接続ガイド:** [tcode.md](tcode.md)
