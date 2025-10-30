# Stroke Tab

The **Stroke Tab** is used to **design and control device motion patterns**.  
You can control the movement of each axis over time to create physical motion patterns such as vibration, rotation, and reciprocation.

All stroke data is saved inside the project under **`Asset/Stroke/`**,  
and supports **importing and exporting** compatible formats like `.funscript`.

---

## 1. Basic Interface

![stroke-main](../images/stroke-main.png)

| Component | Description |
|------------|-------------|
| **① Import** | Loads a saved stroke (`.stroke`) file. |
| **② New** | Creates a new stroke pattern. |
| **③ Edit ✏️** | Opens the detailed editor window for the selected stroke. |
| **④ Delete 🗑️** | Removes the selected stroke from the project. |
| **⑤ Open Folder 📂** | Opens the `Asset/Stroke/` folder directly. |

> 💡 **Note:**  
> The Stroke Tab has a layout similar to the Live2D Tab,  
> allowing you to add or edit motion patterns in the “Motion Action” list.

---

## 2. Stroke Editor

Click **“New”** or **“Edit”** to open the  
**Stroke Editor** window.  
Here, you can directly adjust the movement, speed, and range for each axis.

![stroke-editor](../images/stroke-editor.png)

---

### 🎛️ Top Panel

| Field | Description |
|--------|-------------|
| **Name** | Specifies the name of the current stroke pattern. |
| **Type** | Selects how the stroke will play. |
| **Fixed Time** | Keeps the total duration of the pattern constant. |
| **Speed Control** | Determines whether playback speed follows variable input. |
| **Range Control** | Determines whether amplitude follows variable input. |
| **Axis Type** | Choose between `Single Axis`, `Single Rotation Axis`, or `Multi Rotation Axis`. |
| **Length** | Sets total pattern duration in milliseconds. |
| **Scale (%)** | Adjusts display zoom for the preview area. |

---

### 🧰 Toolbar

At the top of the Stroke Editor is a **toolbar** containing essential editing tools.  
You can quickly switch between tools and use keyboard shortcuts for efficiency.

![stroke-toolbar](../images/stroke-toolbar.png)

| Icon | Tool | Shortcut | Description |
|------|------|-----------|-------------|
| 📂 | **Import** | — | Imports an external `.funscript` file. |
| 💾 | **Export** | — | Saves the current pattern as a `.funscript` file. |
| ⬜ | **Select Tool** | — | Selects points or areas (default editing tool). |
| ✥ | **Move Tool** | **M** | Moves selected points or curves. |
| 🗑️ | **Delete** | **Del** | Deletes selected points. |
| ✂️ | **Trim** | — | Keeps only the selected range and removes the rest. |
| ➕ | **Add Point** | — | Adds a new control point by clicking on the graph. |
| ⏺️ | **Record (Not Supported)** | — | Records real-time device motion (currently disabled). |

> 💡 **Tip:**  
> You can switch tools instantly with shortcuts.  
> For example, press `M` for Move Tool, or `S` to return to Select Tool.

> ⚙️ **Note:**  
> `.funscript` is an open motion format widely supported by external devices and software.

---

### 🩰 Axis Management

The left-side axis list (L0–R2) represents the device’s actual motion axes.  
Only checked axes will be active for editing and playback.

| Axis | Description |
|------|--------------|
| **L0–L2** | Left-side channels. |
| **R0–R2** | Right-side channels. |
| **Enable Checkbox** | Toggles axis visibility on the timeline. |

---

### 🧩 Graph & Timeline

The central graph area visualizes the motion of each axis over time.  
The horizontal axis represents time (ms), and the vertical axis represents relative position (0–100%).  
Motion curves are formed by connecting editable control points.

- **Horizontal (Time):** Time progression (in ms)  
- **Vertical (Value):** Axis position (0–100%)  
- **Grid Lines:** Help visualize timing and amplitude  
- **Points:** Represent adjustable motion values at specific times  

---

#### 🎯 Graph Editing

The graph is a **static editing interface**,  
focused on adjusting and adding points rather than playback or zooming.

| Function | Description |
|-----------|-------------|
| **Select Tool** | Click or drag to select multiple points. |
| **Move Tool** | Drag selected points to change their position. |
| **Add Point** | Click on the graph to add a new control point. |
| **Delete** | Press Delete to remove selected points. |
| **Trim** | Keeps the selected range and removes all others. |

> 💡 **Note:**  
> The Stroke Editor is a **static pattern designer** —  
> playback occurs in the Stroke Player, not within this editor.

---

#### 🗺️ Minimap

At the bottom of the graph is a **Minimap** that shows the entire stroke pattern in miniature.  
The visible area is highlighted with a box, and clicking on the minimap moves the view to that section.

| Function | Description |
|-----------|-------------|
| **Scroll View** | Click on the minimap to jump to a specific section. |
| **View Area Box** | Highlights the portion currently being edited. |
| **Overview** | Displays the full distribution of the motion pattern. |

> 💡 **Tip:**  
> The minimap is useful for long patterns,  
> allowing you to quickly navigate or understand the overall motion structure.

---

## 3. Stroke Types

The stroke behavior depends on its **Type** setting.  
Four main types are available for different control modes:

---

### 3.1 Pattern

A time-based automatic stroke.  
When placed on the timeline or triggered via script, it plays automatically for its set duration.

| Feature | Description |
|----------|-------------|
| **Automatic Playback** | Plays automatically when added to the timeline. |
| **Speed / Range Control** | Adjustable through “Speed Control” and “Range Control” options. |
| **Loop Playback** | Can be set to repeat in a script. |

---

### 3.2 Manual

Each press of the **Space key** triggers one playback cycle.  
Ideal for interactive or manual control scenarios.

| Feature | Description |
|----------|-------------|
| **Single Playback** | Plays once per key press. |

---

### 3.3 Mouse Control

Tracks the mouse movement in real time to control axis positions.  
L0 reacts to vertical movement, and R0 to horizontal movement.

| Feature | Description |
|----------|-------------|
| **L0 Axis** | Follows vertical mouse movement. |
| **R0 Axis** | Follows horizontal mouse movement. |
| **Real-Time Control** | Responds instantly to mouse position. |

---

### 3.4 Countdown

The **Countdown Type** dynamically adjusts pattern speed and shape  
based on the interaction between **Climax Progress** and **Counter** values — a high-level adaptive control mode.

![stroke-countdown](../images/stroke-countdown.png)

| Feature | Description |
|----------|-------------|
| **0–10 Level Buttons** | Assign a stroke pattern to each counter level. |
| **Pattern Setup Panel** | Configure which pattern plays for each counter-progress combination. |
| **Reset Button** | Resets the pattern grid to default. |
| **Grid Panel** | Horizontal axis = Counter, Vertical axis = Climax Progress.<br>Each cell represents a pattern number (Left click = increase, Right click = decrease). |
| **Counter Sound** | Defines the sound to play with each count. |

---

#### ⚙️ Speed Adjustment (Penalty Speed)

| Feature | Description |
|----------|-------------|
| **Max Penalty Speed** | When the counter is **far below the climax progress**, playback **accelerates**. |
| **Min Penalty Speed** | When the counter is **close to the climax progress**, playback **slows down**. |

> 💡 **Example:**  
> - Counter = 1, Progress = 10 → **Maximum acceleration**  
> - Counter = 10, Progress = 1 → **Maximum slowdown**

---

## 4. Script Integration

| Command | Description |
|----------|-------------|
| **StrokeExec** | Plays a specific stroke for a given duration. |

> 💡 **Tip:**  
> You can drag and drop strokes directly onto the timeline  
> and synchronize them with other resources such as sounds or Live2D.

---

## 5. File Structure

| Item | Path |
|------|------|
| **Stroke Data** | `Asset/Stroke/StrokeName.stroke` |
| **Preview Cache** | `Asset/Stroke/` |

> ⚙️ **Note:**  
> Stroke data files are project-specific.  
> Moving or renaming them may cause timeline links to break.

---

## 6. Related Documents

- [Special Event Tab](special-event.md)  
- [Sound Tab](sound.md)  
- [Video Tab](video.md)  
- [UI Tab](ui.md)  
- [Script Tab](script.md)  
