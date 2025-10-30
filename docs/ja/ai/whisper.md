# Whisper 音声認識 (Speech-to-Text)

## 1. 概要 (Overview)
Whisper は OpenAI が開発した **音声認識 AI** です。  
音声ファイルをテキストに変換（STT）でき、多言語に対応しています。  
VoiceScriptPlayer では、**自動字幕生成、スクリプト抽出、リアルタイム音声コマンド認識** などに利用されています。  

---

## 2. インストールと準備 (Installation & Setup)
VoiceScriptPlayer には **WhisperNet** がすでに内蔵されており、追加のインストールは不要です。  
WhisperNet は Whisper を .NET 環境で利用できるようにした移植版ライブラリです。  
- [WhisperNet GitHub](https://github.com/davidfowl/whisper.net)

### 🔽 モデルの自動ダウンロード
VoiceScriptPlayer の **AI / Whisper 設定タブ** から、希望のモデルサイズ（`tiny`, `base`, `small`, `medium`, `large`）を選択すると、  
自動的にモデルがダウンロードされ、適用されます。  
インターネット接続があれば手動でのダウンロードは不要です。

手動でダウンロードしたい場合は、以下のリンクから取得できます：

| モデル名 | 容量 | ダウンロードリンク |
|-----------|------|------------------|
| tiny   | 約 75 MB  | [ダウンロード](https://huggingface.co/ggerganov/whisper.cpp/resolve/main/ggml-tiny.bin) |
| base   | 約 142 MB | [ダウンロード](https://huggingface.co/ggerganov/whisper.cpp/resolve/main/ggml-base.bin) |
| small  | 約 466 MB | [ダウンロード](https://huggingface.co/ggerganov/whisper.cpp/resolve/main/ggml-small.bin) |
| medium | 約 1.5 GB | [ダウンロード](https://huggingface.co/ggerganov/whisper.cpp/resolve/main/ggml-medium.bin) |
| large  | 約 2.9 GB | [ダウンロード](https://huggingface.co/ggerganov/whisper.cpp/resolve/main/ggml-large.bin) |

> ⚠️ モデルサイズが大きいほど精度は向上しますが、処理速度が遅くなりメモリ使用量も増加します。

---

## 3. 設定方法 (Configuration)
- VoiceScriptPlayer では WhisperNet を通してモデルを選択できます。  
- デフォルトモデルの設定（例: `base`, `medium`）  
- 言語設定（自動検出 または 手動指定）  
- パフォーマンスオプション  
  - 精度優先 / 速度優先  
  - CPU / GPU モードの切り替え  

---

## 4. 使用方法 (Usage)
1. 音声ファイルを読み込み（MP3、WAV、MP4 など）  
2. 字幕ファイル（SRT、VTT）として書き出し  
3. テキストのみ抽出  
4. リアルタイム音声認識の使用例  
5. UI 操作の流れ：  
   `ファイル → Whisper 処理 → 結果表示`

---

## 5. 注意事項 (Notes & Limitations)
- モデルサイズにより処理速度やメモリ使用量が大きく異なります。  
- 長時間の音声ファイルは処理に時間がかかります。  
- GPU 環境がない場合、処理速度が遅くなることがあります。  
- Whisper 自体はオープンソースですが、**商用利用する場合はライセンスを必ず確認してください。**  
- Whisper はオフラインでも動作しますが、モデルの初回ダウンロード時にはインターネット接続が必要です。

### ⚡ パフォーマンス比較 (Performance Benchmark)

| 環境 | モデル | 10分音声の処理時間（目安） |
|------|---------|------------------|
| CPU (一般的なデスクトップ i5/i7) | `base` | 約 7〜10 分 |
| CPU (低スペックノート) | `base` | 約 12〜15 分 |
| GPU (RTX 3060 以上) | `base` | 約 1〜2 分 |
| GPU (RTX 4090 等) | `large` | 約 30 秒〜1 分 |

> 💡 モデルが大きいほど精度は向上しますが、処理速度は低下します。  
> Whisper は一度モデルをダウンロードすれば、以降はオフラインで使用可能です。

---

## 6. ライセンスと出典 (License & Credits)
- **Whisper（オリジナル）**: MIT License  
- **Whisper.cpp**: MIT License  
- **WhisperNet**: MIT License  
- 公式 GitHub:  
  - [Whisper](https://github.com/openai/whisper)  
  - [Whisper.cpp](https://github.com/ggerganov/whisper.cpp)  
  - [WhisperNet](https://github.com/davidfowl/whisper.net)  
- 商用利用可能（変換されたテキストの著作権はユーザーに帰属）

---

## 7. トラブルシューティング (Troubleshooting / FAQ)
- ❓ *「モデルファイルが見つかりません。」*  
  → Whisper 設定タブからモデルを選択すれば、自動的にダウンロードおよび適用されます。  
    手動で取得する場合は Whisper.cpp のページからダウンロードしてください。  

- ❓ *「処理が遅すぎます。」*  
  → 小さいモデル（`tiny`, `base`）を使用するか、GPU アクセラレーションを有効にしてください。  
    一般的な CPU では 10分音声で約 7〜10 分、GPU 使用時は約 1〜2 分で処理されます。  

- ❓ *「言語が正しく認識されません。」*  
  → 自動検出ではなく、明示的に言語を指定してください。  

- ❓ *「メモリエラーが発生します。」*  
  → 小さいモデルを使用するか、音声ファイルを分割して処理してください。  
