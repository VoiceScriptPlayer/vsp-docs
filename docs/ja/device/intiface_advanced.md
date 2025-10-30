# Intiface 高度設定ガイド（Advanced Configuration）

## 1. 概要（Overview）
このドキュメントでは、**Intiface Central** を使用する際に必要となる  
**高度な設定方法** について説明します。  
TCode ベースのデバイスや The Handy のように、**ポート番号や API Key の設定が必要なデバイス** を  
VoiceScriptPlayer と併用する場合に参照してください。

---

## 2. TCode デバイスのポートを手動で指定する（Manual Port Configuration）

TCode ベースのデバイス（OSR2、SR6、DIY Motion デバイスなど）は  
Intiface で自動検出されないため、**ポートを手動で指定する必要があります。**

### 設定手順

1. Intiface Central を終了します。  
2. 設定ファイルの保存場所を開きます。  
   - Windows:  
     `%appdata%\com.nonpolynomial\intiface_central\config`  
3. `buttplug-device-config-v3.json` ファイルをメモ帳で開きます。  
4. ファイル内で `"tcode-v03"` セクションを探します。  
   `"port"` 項目が `"default"` になっている部分を見つけてください。

例（元の状態）：

    "tcode-v03": {
      "defaults": {
        "name": "TCode v0.3 (Single Linear Axis)",
        "features": [
          {
            "feature-type": "Position",
            "actuator": {
              "step-range": [0, 100],
              "messages": ["LinearCmd"]
            }
          }
        ]
      },
      "communication": [
        {
          "serial": {
            "port": "default",
            "baud-rate": 115200,
            "data-bits": 8,
            "parity": "N",
            "stop-bits": 1
          }
        }
      ]
    }

5. `"port": "default"` を、実際に接続されている COM ポートに変更します。  
   例えば、デバイスマネージャで確認したポートが `COM4` の場合：

    "port": "COM4"

6. ファイルを保存し、Intiface Central を再起動します。  
7. VoiceScriptPlayer で **TCode 接続モード** を選択すると、そのポートが自動的に認識されます。

> ⚠️ Intiface で指定したポートが実際のデバイスポートと異なる場合、  
> 「デバイスが見つかりません」または「接続に失敗しました」と表示されます。  
> 必ずデバイスマネージャ（例：`USB-SERIAL CH340 (COM3)`）で正しいポートを確認してください。

---

## 3. The Handy の API Key 登録（Registering The Handy API Key）

The Handy デバイスを Intiface で制御するには、**個人用 API Key** が必要です。  
このキーは The Handy の公式サイトでユーザーアカウントごとに発行されます。

### 設定方法

1. [The Handy 公式サイト](https://www.handyfeeling.com/) にログイン  
2. 右上メニューから **API Key** を確認  
3. Intiface Central を起動し、**Devices タブ → Handy 設定メニュー** を開く  
4. API Key 入力欄に発行されたキーを貼り付けて **Save** をクリック  
5. デバイスが自動的に接続されると、VoiceScriptPlayer で「Intiface Central」接続方式として認識されます。

> 💡 Handy は Wi-Fi 経由で Intiface と通信するため、  
> PC と Handy は同じネットワーク（ルーター）に接続している必要があります。

---

## 4. Bluetooth デバイスの認識遅延（Bluetooth Pairing Delay）

一部の Bluetooth デバイスは Intiface で認識されるまで数秒かかる場合があります。  
特に Windows では、最初に「標準 Bluetooth シリアルリンク（COMx）」として表示され、  
実際のデバイス名（例：Lovense、HandyLink など）に更新されるまで **5～10 秒程度** かかります。

問題が発生した場合は、以下を確認してください：

- デバイスが Windows の Bluetooth 設定で **正しくペアリングされているか**  
- Intiface の **Rescan Devices（デバイス再検索）** ボタンを押して手動で更新する  
- 既存のポートが他のプログラムに使用されていないか確認する

---

## 5. ポート競合または多重接続の問題（Port Conflict）

複数のプログラムが同じポートを同時に使用すると、接続に失敗する可能性があります。  
この場合、Intiface または VoiceScriptPlayer のどちらかのポートを変更してください。

例：

- Intiface 設定ファイルで TCode ポートを `COM5` に変更  
- VoiceScriptPlayer 側でも同じく `COM5` を設定

> ⚠️ 両方のプログラムが同じポートを同時に使用しないように注意してください。

---

## 6. 設定ファイルのリセット（Reset Configuration）

設定が壊れたり、デバイスが認識されない場合は、  
Intiface の設定ファイルを削除して再生成することで解決できることがあります。

1. Intiface を終了します。  
2. 設定フォルダを開きます：  
   `%appdata%\com.nonpolynomial\intiface_central\config`
3. `buttplug-user-device-config-v3.json` ファイルを削除またはバックアップします。  
4. Intiface を再起動すると、新しいデフォルト設定ファイルが自動生成されます。

---

## 7. 参考資料（References）
- Intiface Central 公式サイト: [https://intiface.com/central](https://intiface.com/central)  
- The Handy 公式サイト: [https://www.handyfeeling.com/](https://www.handyfeeling.com/)  
- TCode プロトコルドキュメント: [https://github.com/mxtheturtle/TCode-Protocol](https://github.com/mxtheturtle/TCode-Protocol)  
- VoiceScriptPlayer Intiface ドキュメント: [intiface.md](intiface.md)
