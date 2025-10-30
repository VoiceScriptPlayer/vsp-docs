## 💡 网络连接错误（NetworkConnectionError） {#network}

#### 原因。
- COEIROINK 本地服务器（通常为 `127.0.0.1:50032`）未运行、
  端口访问被防火墙或杀毒软件阻止。  
- 电脑离线，或本地环回通信被禁用。  

### 解决方法
1. **确认 COEIROINK 引擎正在运行**。
    - COEIROINK GUI 或 CLI 服务器必须打开。
    - 确保端口 `127.0.0.1:50032` 已打开。
2. **注册防火墙/安全程序异常**
    - 设置异常以防止 `coeiroink.exe` 或 `voicevox_engine.exe` 被阻止。  
3. **重新启动引擎**
    - 关闭并重新启动 COEIROINK 会导致重新初始化端口。  
4. **检查网络连接（如有必要**
    - 某些外部资源可能需要网络连接才能加载。  


## 💡 COEIROINK 服务器连接失败 (CoeiroinkServerConnectionError) {#coeiroink-server}

### 原因
- 本地 COEIROINK 服务器已关闭，或 API 端口 (`50032`) 已更改。  
- 多个应用程序同时使用同一端口。  

### 解决方法
1. 运行 COEIROINK 并打开 **"启用 API 服务器"**选项。  
    同时确保运行在 CLI 模式下，而不是 GUI 模式下。
2. 在 Windows 命令提示符下，键入
    netstat -ano | 查找 "50032
    → 如果端口不在 "LISTENING "状态，说明 COEIROINK 没有运行。
3. 如果出现端口冲突，请指定一个不同的端口并运行它，然后在
    配置文件并更改为该端口。  

 
## 💡 服务器响应解析出错（CoeiroinkJsonParseError） {#coeiroink-json}

### 原因
- COEIROINK 服务器返回异常 JSON 数据。  
- 引擎版本不同，或响应格式改变。  
- 由于请求中途强制终止，JSON 不完整。  

### 解决方法
1. **检查 COEIROINK 版本**
    - 确保 VoiceScriptPlayer 与您使用的 API 版本兼容。  
    - 如果已经过时，请更新至最新的 COEIROINK 引擎。
2. **简化句子**
    - 过长或包含特殊字符的句子会在 JSON 转换过程中造成问题。  
3. **检查日志文件**
    - 检查 COEIROINK 控制台或日志中是否有 "predict_with_duration "错误信息。


## 💡 无法获取 Prosody 数据（CoeiroinkProsodyEmpty）。

#### 原因。
- 输入的句子太短，或包含不支持的字符组合。  
- 调用 `PredictProsodyDetail()` 失败，但未检测到异常。  

### 解决方法。
1. **将输入内容拆分成较短的句子进行测试**。
    - 将输入内容分解成 100 个字符或更少的句子，然后重试。  
2. **删除异常字符**
    - 删除特殊符号、控制字符和表情符号，然后重试。  
3. **检查引擎日志**
    - 如果请求 "predict_with_duration "时响应为空，则引擎可能未能处理某些字符。  


## 💡 Prosody prediction failed (CoerioinkPredictError) {#coeiroink-prosody} Prosody预测失败（CoerioinkPredictError）。

### 原因
- prosody predict request (`/v1/predict_with_duration`) 失败。  
- API 响应代码返回为 400、404、500 等。  

### 解决方法
1. **检查 COEIROINK 服务器日志**
    - 检查在 "predict_with_duration "步骤中发生了什么错误。  
2. **简化输入文本**
    - 删除长句、表情符号和非日文字符后进行测试。  
3. **检查速度缩放**
    - 如果 `speedScale` 值低于 0 或过大，处理可能会失败。  


## 💡 音频处理失败（CoerioinkProcessError） {#coeiroink-process}

### 原因。
- 在 `/v1/process` 请求中生成语音时出错。
- 在前音预测步骤中生成的 `wavBase64` 数据损坏。  

### 解决方法
1. **再次尝试生成**
    - 如果再次尝试相同的句子，可能是临时缓存问题。  
2. **检查引擎日志**
    - 检查 "处理 "步骤中是否输出了错误代码。  
3. **检查 pitchScale 和 intonationScale 值**。
    - 数值过高（例如高于 5.0）会导致内部计算错误。  


## 💡 生成的音频数据为空（CoerioinkEmptyAudio） {#coeiroink-empty}

### 原因
- 引擎输出音频失败，返回空响应。  
- 某些句子没有可发音的语素（如只包含符号的句子）。  

### 解决方法
1. **再次检查句子**
    - 删除无法发音的字符，如"..."、"♪"、"♡"等。  
2. **重新启动发动机**
    - 重启 COEIROINK 会初始化临时缓存。  
3. **尝试不同的扬声器/风格**
    - 某些语音风格可能会导致错误。  


## 💡 音频格式错误（CoerioinkInvalidAudioFormat） {#coeiroink-format}

### 原因
- 引擎返回的错误信息是文本而不是 WAV。  
- WAV 头已损坏，或数据在中间被截断。  

### 解决方法
1. **检查输出文件**
    - 确保实际返回的文件以 WAV 头（"RIFF"）开头。  
2. **更新 COEIROINK**
    - 旧版本的引擎可能无法处理某些设置。  
3. **用短句测试**
    - 过长的文本输入会导致引擎内部缓冲区溢出。  

 
## 💡 未知 COEIROINK 错误（CoerioinkUnknownError） {#coeiroink-general}

### 原因
- 处理过程中发生意外异常（文件访问、内存不足等）。  
- VoiceScriptPlayer 与 COEIROINK 之间的协议不匹配。  

### 解决方法
1. **检查 VoiceScriptPlayer 和 COEIROINK 的版本**
    - 使用现有的最新版本。
2. **重新启动项目**
    - 临时缓存和会话数据可能已损坏。  
3. **联系您的开发人员**
    - 请附上日志文件（如 `vsp_log.txt`）并在问题跟踪器或 Patreon 中报告。
