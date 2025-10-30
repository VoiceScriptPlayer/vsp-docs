# Intiface Advanced Configuration Guide

## 1. Overview
This document explains **advanced configuration methods** for using **Intiface Central**.  
Refer to this guide when using devices that require **a specific port number or API key**,  
such as **TCode-based devices** or **The Handy**, with **VoiceScriptPlayer**.

---

## 2. Manually Configuring a TCode Device Port

TCode-based devices (OSR2, SR6, DIY Motion devices, etc.)  
are **not automatically detected** by Intiface,  
so you must **manually specify the communication port**.

### Steps

1. Close Intiface Central.  
2. Open the configuration file directory:  
   - Windows:  
     `%appdata%\com.nonpolynomial\intiface_central\config`  
3. Open `buttplug-device-config-v3.json` in a text editor.  
4. Find the `"tcode-v03"` section inside the file.  
   You should see a `"port"` field set to `"default"`, like this:

Example (original):

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

5. Change `"port": "default"` to the actual COM port you’re using.  
   For example, if Device Manager shows the port as `COM4`, set:

    "port": "COM4"

6. Save the file and restart Intiface Central.  
7. In VoiceScriptPlayer, select the **TCode connection method**, and the port will be detected automatically.

> ⚠️ If the port in Intiface Central does not match the actual connected device port,  
> you will see “Device not found” or “Connection failed.”  
> Always check the correct port name in Device Manager (e.g., `USB-SERIAL CH340 (COM3)`).

---

## 3. Registering The Handy API Key

The Handy requires a **personal API key** for control through Intiface.  
This key is issued individually per user account via the official Handy website.

### Steps

1. Log in to [The Handy Official Website](https://www.handyfeeling.com/)  
2. Find **API Key** in the menu on the top right  
3. Open Intiface Central → go to the **Devices tab → Handy Settings menu**  
4. Paste your issued API Key into the input field and click **Save**  
5. Once the device connects successfully, VoiceScriptPlayer will detect it under the “Intiface Central” connection mode

> 💡 Handy communicates with Intiface over Wi-Fi,  
> so both the PC and Handy must be on the **same local network (router)**.

---

## 4. Bluetooth Device Detection Delay

Some Bluetooth devices may take a few seconds to be recognized in Intiface.  
On Windows, they may first appear as “Standard Bluetooth Serial Link (COMx)”  
and update to the actual device name (e.g., Lovense, HandyLink) after about **5–10 seconds**.

If this happens, check the following:

- Ensure the device is **properly paired** in Windows Bluetooth settings  
- Click **Rescan Devices** in Intiface to refresh the device list manually  
- Make sure the port is not in use by another program

---

## 5. Resolving Port Conflicts or Multiple Connections

If multiple programs attempt to use the same port simultaneously,  
the connection may fail.  
In such cases, you must change the port setting in either Intiface or VoiceScriptPlayer.

Example:

- Change the TCode port in Intiface configuration to `COM5`  
- Set VoiceScriptPlayer to use the same port (`COM5`)

> ⚠️ Always ensure that both programs are **not accessing the same port at the same time**.

---

## 6. Resetting Configuration Files

If settings are corrupted or devices are not being recognized,  
you can often fix the issue by deleting and regenerating Intiface’s configuration files.

1. Close Intiface.  
2. Open the configuration directory:  
   `%appdata%\com.nonpolynomial\intiface_central\config`
3. Delete or back up the file `buttplug-user-device-config-v3.json`.  
4. Restart Intiface, and a new default configuration file will be created automatically.

---

## 7. References
- **Intiface Central Official Website:** [https://intiface.com/central](https://intiface.com/central)  
- **The Handy Official Website:** [https://www.handyfeeling.com/](https://www.handyfeeling.com/)  
- **TCode Protocol Documentation:** [https://github.com/mxtheturtle/TCode-Protocol](https://github.com/mxtheturtle/TCode-Protocol)  
- **VoiceScriptPlayer Intiface Documentation:** [intiface.md](intiface.md)
