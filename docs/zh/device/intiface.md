# Intiface Central 连接（Device Bridge Setup）

## 1. 概述（Overview）
**Intiface Central** 是一款用于控制各种设备的 **设备桥接程序**。  
**VoiceScriptPlayer** 可以与 Intiface 集成，通过 Bluetooth 或 USB  
向已连接的设备发送 **TCode 信号**。

> 💡 Intiface 是基于 **Buttplug.io** 的官方设备控制中心，  
> 可通过一个服务器同时管理多个品牌的设备。

---

## 2. 准备工作（Before You Begin）
Intiface Central 是独立于 VoiceScriptPlayer 的外部程序。  
在连接前，需要先安装并启动 Intiface 服务器。

### 🔧 安装步骤
1. 从 [Intiface Central 官方网站](https://intiface.com/central) 下载最新版本  
2. 安装后运行程序  
3. 点击顶部的 **“Start Server”** 按钮以启动服务器  
4. 当状态栏显示 **“Server Running”** 时，表示服务器已成功启动

---

## 3. 连接步骤（Connection Steps）

### 🖱️ 第一步 — 选择连接方式
启动 VoiceScriptPlayer，在左侧菜单中选择“设备连接”。  
在“请选择连接方式”界面中，选择 **Intiface Central**。

![](../images/intiface-step1.png)

> 从左到右依次为 “不连接”、“直接连接”、“Intiface Central”  
> 请选择第三个 **Intiface Central**。

---

### 🌐 第二步 — 确认服务器连接
VoiceScriptPlayer 默认通过以下地址与 Intiface 通信：

    ws://127.0.0.1:12345

如果 Intiface 已运行，显示“正在连接...”消息后，  
几秒钟后会自动完成连接。

![](../images/intiface-step2.png)

> ✅ 当连接成功时，会显示 “已连接” 提示。

---

### ⚙️ 第三步 — 设备识别与测试
Intiface 会自动开始搜索设备。  
如果设备连接正常，将在 Intiface 的 **Devices** 标签页中显示。

![](../images/intiface-step3.png)

> 若设备未显示在列表中，可能需要在 Intiface 内进行额外设置。  
> 例如：  
> - TCode 设备需手动指定端口号  
> - The Handy 设备需输入 API Key  
>  
> ⚙️ 请参考 [Intiface 高级设置指南](intiface_advanced.md)。

点击 **完成（Done）** 按钮保存连接配置。

> 💡 之后，每次启动 VoiceScriptPlayer 时都会自动重新连接 Intiface。

---

## 4. 连接结构（Connection Overview）

VoiceScriptPlayer → Intiface Server → 设备（Bluetooth / USB）

- VoiceScriptPlayer 向 Intiface 服务器发送 TCode 命令  
- Intiface 将信号转发至实际连接的设备  
- 支持多个设备同时连接使用

---

## 5. ⚙️ Intiface 内部设置参考
部分设备需要在 Intiface 中进行额外配置。  
请参考以下表格：

| 设备类型 | 必要设置 | 说明 |
|-----------|-----------|------|
| **TCode 设备（OSR2、SR6 等）** | 端口号指定 | 在 Intiface 设置文件中手动输入 TCode 服务器端口 |
| **The Handy** | API Key | 在 Intiface 的 Handy 设置菜单中注册 API Key |
| **其他 BLE 设备** | 蓝牙配对 | 需在 Windows 蓝牙设置中预先配对后才能识别 |

> 🔍 更多详细信息请参考以下资料：  
> - [Intiface 高级设置指南](intiface_advanced.md)  
> - [Intiface Central GitHub 仓库](https://github.com/intiface/intiface-central)  
> - [Buttplug.io 项目](https://buttplug.io/)

---

## 6. 常见问题（Troubleshooting）

| 问题 | 原因 | 解决方法 |
|------|------|-----------|
| VoiceScriptPlayer 无法连接 Intiface | Intiface 未启动 | 请先启动 Intiface 并点击“Start Server” |
| 出现 “端口占用” 错误 | 12345 端口被其他程序占用 | 在 Intiface 设置中修改端口号，并同步修改 VoiceScriptPlayer 设置 |
| 设备未显示在 Intiface 中 | 蓝牙配对不完整 | 在 Windows 蓝牙设置中删除设备后重新配对 |
| 测试无反应 | 设备处于暂停状态 | 在 Intiface 的 Device 标签页中点击 “Resume” |
| 设备频繁断开重连 | 电源不足或节能模式启用 | 禁用设备节能功能或使用有线连接 |

---

## 7. 注意事项（Notes）
- Intiface 通过 **本地 WebSocket 服务器** 运行，默认端口为 `12345`。  
- 可同时连接多个设备，但部分设备可能不支持多命令并行。  
- Intiface 可在 Windows、macOS、Linux 上运行，  
  但 VoiceScriptPlayer 目前仅支持 Windows 环境。

---

## 8. 参考资料（References）
- **Intiface Central 官方网站：** [https://intiface.com/central](https://intiface.com/central)  
- **Buttplug.io 项目：** [https://buttplug.io](https://buttplug.io)  
- **VoiceScriptPlayer 官方文档：** [https://voicescriptplayer.github.io/vsp-docs/](https://voicescriptplayer.github.io/vsp-docs/)  
- **TCode 连接指南：** [tcode.md](tcode.md)
