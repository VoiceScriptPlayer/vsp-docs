# Runtime Helper Tab

The **Runtime Helper Tab** is a tool designed to **monitor and debug the internal state of your project in real time during execution**.  
It allows you to easily observe the current Stroke positions, runtime variable values, global variables,  
and currently active events.

This tab is primarily intended for **developers and script debugging** rather than general users.

---

## 1. Interface Overview

![runtime-helper](../images/runtime-helper.png)

| Component | Description |
|------------|-------------|
| **Stroke Position** | Displays the real-time position of each axis (L0–R2). |
| **Runtime Variables** | Shows major control variables that change during execution (e.g., speed, range). |
| **Global Variables** | Displays the current values of global variables used throughout the project. |
| **Active Events** | Lists currently running events (e.g., ejaculation, Live2D scenes, subtitles). |

---

## 2. Stroke Position

The Stroke Position section displays the **real-time coordinates of each device axis (Axis)**.  
These values are **read-only** and reflect the movements of the actual hardware or simulator.

| Axis Name | Description |
|------------|-------------|
| **L0–L2** | Left channel axis positions |
| **R0–R2** | Right channel axis positions |

> 💡 **Tip:**  
> The slider positions directly reflect the real movement of the physical device.  
> They cannot be manually changed and are intended purely for monitoring purposes.

---

## 3. Runtime Variables

This section displays key control variables that change dynamically during execution.  
These values are automatically updated according to script logic or triggered events.

| Variable Name | Description |
|----------------|-------------|
| **StrokeRange** | Amplitude of the Stroke (maximum movement range) |
| **StrokeSpeed** | Speed multiplier of the Stroke |
| **Sensitivity** | Input sensitivity or response level |
| **ErectionState** | State variable (e.g., arousal or emotional level) |
| **RestTime** | Time spent resting (in seconds) |
| **StrokeExecCount** | Number of Stroke executions |
| *(Other Variables)* | Global variables declared within the current script or environment |

> 💡 **Tip:**  
> This section is useful for **debugging scripts, testing variable changes, or adjusting balance**.

---

## 4. Active Events

This section lists all currently active events.  
Each event represents a running component, such as subtitles, Live2D scenes, Strokes, or special events.

| Example | Description |
|----------|-------------|
| **New Live2D Scene** | Currently active Live2D animation |
| **Normal Ejaculation** | Ongoing special event |

> 💡 **Note:**  
> Events automatically disappear from the list once completed.  
> When multiple events are active, they are displayed in order from top to bottom.

---

## 5. Use Cases

| Purpose | How to Use |
|----------|------------|
| **Debugging** | Check Stroke positions, variable states, and event behavior in real time |
| **Testing** | Verify variable changes during script execution |
| **Performance Monitoring** | Observe how variables behave when multiple events run simultaneously |

---

## 7. Related Documents

- [Stroke Tab](stroke.md)  
- [Special Event Tab](special-event.md)  
- [Resource Management Tab](resources.md)
