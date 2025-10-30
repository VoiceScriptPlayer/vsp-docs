# 🤖 AI 統合概要

**VoiceScriptPlayer** は複数の AI サービスと連携し、音声認識から翻訳、音声合成までの全工程を自動化します。  
以下は、AI パイプライン全体の流れと各機能の概要です。

---

## 🧩 全体構造

    🎙️ 音声入力
    ↓
    [Whisper / SpeechRecognition]
    （音声 → テキスト変換）
    ↓
    [DeepL / LibreTranslate]
    （テキスト翻訳および LLM 分析）
    ↓
    [ElevenLabs / COEIROINK / Hailuo]
    （テキスト → 音声変換）
    ↓
    🔊 VoiceScriptPlayer 出力

> すべての AI 機能は **ローカル環境** と **クラウド環境** の両方に対応しており、  
> ネットワーク接続が制限されている環境でもオフライン処理が可能です。

---

## 🗣️ 音声認識（Speech to Text）

| エンジン | 説明 | リンク |
|-----------|------|--------|
| **Whisper** | 高品質なオープンソース音声認識エンジン。CPU / GPU の両方に対応 | [詳細を見る](whisper.md) |
| **SpeechRecognition** | Vosk などと統合し、リアルタイム音声コマンドを認識 | [詳細を見る](speechRecognition.md) |

---

## 🧠 翻訳および LLM（Text Processing）

| エンジン | 役割 | リンク |
|-----------|------|--------|
| **DeepL** | 高精度な翻訳を提供（日本語・英語・韓国語対応） | [詳細を見る](deepl.md) |
| **LibreTranslate** | オープンソース翻訳サーバー。ローカル環境でも利用可能 | [詳細を見る](libretranslate.md) |
| **Meta AI** | LLM（大規模言語モデル）による自然言語処理と文脈補正 | *開発中* |

---

## 🔊 音声合成（Text to Speech）

| エンジン | 特徴 | リンク |
|-----------|------|--------|
| **ElevenLabs** | 自然な感情表現と多言語対応 | [詳細を見る](elevenlabs.md) |
| **COEIROINK** | 日本語ベースの高品質な感情音声合成 | [詳細を見る](coeiroink.md) |
| **Hailuo** | 中国語・英語に特化した AI 音声エンジン | [詳細を見る](hailuo.md) |

---

## ⚙️ 設定および構成

- AI 関連の設定は `VoiceScriptPlayer/Option.json` で管理されます。  
- 各サービスの API キーは `AI` セクション内に個別保存されます。  
- オフラインモードでは **Whisper** と **LibreTranslate** が優先的に使用されます。

---

## 📚 関連ドキュメント

- [Whisper](whisper.md)  
- [ElevenLabs](elevenlabs.md)  
- [COEIROINK](coeiroink.md)  
- [Hailuo](hailuo.md)  
- [LibreTranslate](libretranslate.md)  
- [DeepL](deepl.md)
