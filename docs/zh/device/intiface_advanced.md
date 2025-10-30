# Intiface 高级设置指南（Advanced Configuration）

## 1. 概述（Overview）
本文档介绍在使用 Intiface Central 时所需的 **高级设置方法**。  
当你在 VoiceScriptPlayer 中使用 **需要指定端口号或 API Key 的设备**（例如 TCode 设备或 The Handy）时，请参考此指南。

---

## 2. 手动设置 TCode 设备端口（Manual Port Configuration）

基于 TCode 的设备（如 OSR2、SR6、DIY Motion 等）不会被 Intiface 自动识别，  
因此需要 **手动指定端口**。

### 设置步骤

1. 关闭 Intiface Central。  
2. 前往配置文件目录：  
   - Windows：  
     `%appdata%\com.nonpolynomial\intiface_central\config`  
3. 使用记事本打开 `buttplug-device-config-v3.json` 文件。  
4. 找到 `"tcode-v03"` 部分。  
   你会看到 `"port"` 项默认为 `"default"`，如下所示：

原始示例：

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

5. 将 `"port": "default"` 修改为实际连接的 COM 端口。  
   例如设备管理器中显示端口为 `COM4` 时：

    "port": "COM4"

6. 保存文件并重新启动 Intiface Central。  
7. 在 VoiceScriptPlayer 中选择 **TCode 连接模式**，即可自动识别该端口。

> ⚠️ 如果 Intiface 中设置的端口与设备实际连接端口不一致，  
> 会显示 “无法找到设备” 或 “连接失败”。  
> 请务必在设备管理器中确认正确的端口（如 `USB-SERIAL CH340 (COM3)`）。

---

## 3. 注册 The Handy 的 API Key（Registering The Handy API Key）

The Handy 设备在 Intiface 中控制时需要使用 **个人 API Key**。  
此密钥可在 The Handy 官方网站上为每个用户账号单独生成。

### 设置步骤

1. 登录 [The Handy 官方网站](https://www.handyfeeling.com/)  
2. 在右上角菜单中找到 **API Key** 项  
3. 启动 Intiface Central，进入 **Devices 标签 → Handy 设置菜单**  
4. 将获取的 API Key 粘贴到输入栏中，点击 **Save**  
5. 设备成功连接后，VoiceScriptPlayer 会自动识别 “Intiface Central” 连接方式

> 💡 Handy 通过 Wi-Fi 与 Intiface 通信，  
> 因此 PC 与 Handy 必须在同一个网络（路由器）下。

---

## 4. 蓝牙设备连接延迟问题（Bluetooth Pairing Delay）

部分 Bluetooth 设备在 Intiface 中识别时可能会有延迟。  
在 Windows 上，它们最初显示为 “标准蓝牙串行链接（COMx）”，  
而更新为实际设备名（如 Lovense、HandyLink 等）可能需要 5～10 秒。

如出现延迟或无法识别，请检查以下事项：

- 设备是否已在 Windows 蓝牙设置中正确配对  
- 在 Intiface 中点击 **Rescan Devices** 手动刷新设备列表  
- 确保端口未被其他程序占用

---

## 5. 端口冲突或多重连接问题（Port Conflict）

如果多个程序同时使用同一个端口，连接将会失败。  
此时需要修改 Intiface 或 VoiceScriptPlayer 的端口设置。

示例：

- 在 Intiface 配置文件中将 TCode 端口改为 `COM5`  
- 在 VoiceScriptPlayer 中同样设置为 `COM5`

> ⚠️ 请确保两个程序不会同时占用同一端口。

---

## 6. 重置配置文件（Reset Configuration）

当 Intiface 出现配置错误或无法识别设备时，  
删除并重新生成配置文件通常可以解决问题。

1. 关闭 Intiface。  
2. 打开配置文件目录：  
   `%appdata%\com.nonpolynomial\intiface_central\config`
3. 删除或备份 `buttplug-user-device-config-v3.json` 文件。  
4. 重新启动 Intiface 后，系统将自动生成新的默认配置文件。

---

## 7. 参考资料（References）
- Intiface Central 官方网站：[https://intiface.com/central](https://intiface.com/central)  
- The Handy 官方网站：[https://www.handyfeeling.com/](https://www.handyfeeling.com/)  
- TCode 协议文档：[https://github.com/mxtheturtle/TCode-Protocol](https://github.com/mxtheturtle/TCode-Protocol)  
- VoiceScriptPlayer Intiface 文档：[intiface.md](intiface.md)
