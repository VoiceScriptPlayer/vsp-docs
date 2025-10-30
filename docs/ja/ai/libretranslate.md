# LibreTranslate 翻訳 (Translation)

## 1. 概要 (Overview)
**LibreTranslate** はオープンソースベースの **機械翻訳エンジン** です。  
無料で利用でき、ローカル環境で実行することで **オフライン翻訳** を行うことができます。  
VoiceScriptPlayer では LibreTranslate サーバーを通して **字幕やスクリプトの翻訳** 機能を提供します。  

> ⚠️ 他の AI 機能と異なり、LibreTranslate はユーザー自身で **Python 環境を準備・インストール** する必要があります。  
> 一度インストールすれば、VoiceScriptPlayer が自動的に起動および接続を処理します。  

---

## 2. インストールと準備 (Installation & Setup)

### 1) Python のインストール
- **対応バージョン:** Python **3.11**  
- **非対応バージョン:** Python **3.12, 3.13**（互換性の問題あり）  
- ダウンロード: [Python 3.11.x](https://www.python.org/downloads/release/python-3119/)  

インストール時の注意事項:
- 必ず **「Add Python to PATH」** にチェックを入れてください。  
- インストール後、コマンドプロンプトで以下を確認します：

    python --version  
    pip --version

### 2) LibreTranslate のインストール
Python が準備できたら、コマンドプロンプト（または PowerShell）で次を入力します：

    pip install libretranslate

完了すると、LibreTranslate がシステム環境にインストールされます。  

---

## 3. VoiceScriptPlayer での使用方法
- インストールが完了すると、VoiceScriptPlayer が **自動的に LibreTranslate の場所を検出** し、サーバーを起動します。  
- ユーザーがコマンドを入力したりパスを指定する必要はありません。  
- サーバーが起動中であれば翻訳機能が動作し、接続状況も自動で確認されます。  

---

## 4. VoiceScriptPlayer 内の翻訳機能（共通機能）

![translate-contextmenu](../images/translate-contextmenu.png)

VoiceScriptPlayer のすべてのテキスト入力欄（TextBox）で  
**右クリックのコンテキストメニュー** から直接翻訳機能を利用できます。  

---

### 🧭 使用方法

1. **翻訳したいテキストを選択して右クリック**  
2. **「翻訳 → 韓国語に翻訳(DeepL)」** または **「日本語に翻訳(Web)」** などを選択  
3. 選択した翻訳エンジン（DeepL、Google、Papago など）で即時に結果が表示されます。  

---

### ⚡ ショートカットキー
- **Ctrl + T**  
  → 現在設定されている **既定の翻訳エンジン** で即座に翻訳します。  
  （既定エンジンは設定画面で変更可能）

---

### 🌐 対応する翻訳エンジン
| 種類 | エンジン | 特徴 |
|------|----------|------|
| **ローカル API** | LibreTranslate | オフライン対応、プライバシー重視、オープンソース |
| **ローカル/クラウド** | DeepL Translate | 高精度、文脈理解に優れる |
| **ウェブ翻訳** | Google Translate | 多言語対応数が最多 |
| **ウェブ翻訳** | Naver Papago | 韓国語・日本語翻訳に強い |

---

> 💡 **ヒント:**  
> この機能はすべての翻訳エンジン（LibreTranslate、DeepL、Google、Papago）で共通して使用でき、  
> プロジェクト内の **セリフエディタ、字幕エディタ、テキスト入力欄** など、  
> ほぼすべてのテキスト入力可能な箇所で動作します。  

---

## 5. 注意事項 (Notes & Limitations)
- **Python 3.11** を必ず使用してください（3.12/3.13 は非対応）。  
- ユーザーはインストールのみ行えば、**起動と接続はプログラムが自動処理** します。  
- 翻訳精度は DeepL や Papago などの商用翻訳より低い場合があります。  
- 長文よりも短文に分けて翻訳する方が正確です。  

---

## 6. ライセンスおよび出典 (License & Credits)
- **LibreTranslate**: AGPL v3 License  
- 公式 GitHub: [https://github.com/LibreTranslate/LibreTranslate](https://github.com/LibreTranslate/LibreTranslate)
