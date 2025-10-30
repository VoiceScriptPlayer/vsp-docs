# Live2D Tab

The **Live2D Tab** is used to create **character scenes** by placing Spine models and setting up their animations.  
All Live2D resources are **automatically saved within the project (`Asset/Live2D/`)**,  
and external reference options are **not supported**.

---

## 1. Main Interface

![live2d-main](../images/live2d-main.png)

| Component | Description |
|------------|-------------|
| **① Import** | Load a Live2D Scene (`.live2d`) file. |
| **② New** | Create a new Live2D Scene. |
| **③ Edit ✏️** | Open the detail editor for the selected scene. |
| **④ Delete 🗑️** | Remove the selected scene from the project. |
| **⑤ Open Folder 📂** | Open the `Asset/Live2D/` folder directly. |

> 💡 **Note:**  
> Live2D scenes are managed entirely within the project and cannot be referenced or exported externally.

---

## 2. Live2D Scene Editor

![live2d-editor](../images/live2d-editor.png)

The Live2D Editor allows you to place multiple Spine objects in one screen  
to create a complete character performance scene.

---

### 🎛️ Top Panel

| Item | Description |
|------|--------------|
| **Name** | Name of the current scene being edited. |
| **Width / Height** | Set the resolution of the scene (e.g., 1920x1080). |
| **Scene Preview Area** | Visually place Spine objects and background elements. |
| **Object List (Right Panel)** | Displays all Spine objects included in the current scene. |

---

### 🧩 Spine Object Management

Multiple Spine objects can be added to a Live2D scene.  
Each object has its own position, scale, animation, and skin settings.

| Item | Description |
|------|--------------|
| **Name** | Name of the Spine object. |
| **StartX / StartY** | Set the position coordinates within the scene (in pixels). |
| **Scale** | Adjust the size of the character. |
| **StartAnimation** | Specify the animation to play on load (e.g., `idle`, `walk`, `attack`). |
| **Skin** | Select the visual skin of the Spine model. |
| **Loop** | Enable or disable loop playback. |
| **AutoPlay** | Automatically start the animation when the scene is loaded. |

> 💡 **Tip:**  
> You can **drag** objects directly in the preview window to reposition them.  
> Multiple characters can be placed together to create a full scene.

---

### ➕ Add / Remove Objects

| Action | Description |
|---------|-------------|
| **Add (+)** | Add a new Spine object to the scene. |
| **Delete (🗑️)** | Remove the selected Spine object from the scene. |

---

## 3. Timeline & Script Integration

Live2D scenes can be integrated not only with the **timeline**,  
but also directly with the **scripting system** — allowing real-time control over  
**motion, position, scale, and animation progress** based on conditions or events.

---

### 🎞️ Timeline Integration

Live2D scenes can be placed on the timeline  
to synchronize with other resources such as sound, events, and UI.

| Feature | Description |
|----------|--------------|
| **Drag & Drop** | Drag the Live2D scene onto the timeline to place it. |
| **Condition Editing** | Set visibility conditions for when the scene should appear. |
| **Timing Adjustment** | Manually set the start and end times of the scene. |

> 💡 **Examples:**  
> - Display character motion during a specific audio segment  
> - Trigger facial changes after a UI interaction  
> - Automatically play animations during a climax event  

---

### ⚙️ Script Integration

Live2D objects can be **controlled directly via variables in scripts**.  
When opening the variable selection window, you’ll see the following structure:

![live2d-variable](../images/live2d-variable.png)

| Component | Description |
|------------|-------------|
| **Live2D Scene Selection** | Choose which scene to control. |
| **Spine Object Selection** | Select the specific object within the scene. |
| **Property Selection** | Choose which variable or property to manipulate. |

---

### 📊 Controllable Variables

| Variable | Description |
|-----------|-------------|
| **AnimationProgress** | Current animation progress (0.0–1.0) — used for time-based control. |
| **X / Y** | Adjust object coordinates. |
| **Scale** | Adjust the size of the character. |

> 💡 **Tip:**  
> By changing Live2D variables dynamically via scripts,  
> you can smoothly modify a character’s position, size, or expression mid-animation.

---

### 🧩 Example Script

![example-live2d-script](../images/example-live2d-script.png)

> 🎯 **Result:**  
> When executed, the script dynamically adjusts character position, scale,  
> and animation progress in perfect sync with the timeline.

---

### 🔗 Trigger Integration Examples

| Situation | Trigger Behavior |
|------------|------------------|
| On button click | Set `AnimationProgress` to 1 to instantly complete the animation. |
| On event trigger | Change `Scale` from 1.0 → 1.5 for a zoom-in effect. |
| On timer | Gradually increase `Y` value to move the character upward. |

---

> 💡 **Note:**  
> Live2D variables can be accessed in the same way as UI, sound, or stroke events.  
> Through the **PlayData script system**, all event types can be controlled together seamlessly.

---

### 🎬 Spine Control Scripts

You can control **Spine animations and skins** within Live2D scenes via scripts.

---

#### 🕹️ Play Spine Animation

![live2d-play-animation](../images/live2d-play-animation.png)

Use this script to trigger specific Spine animations at any timing you choose.

| Item | Description |
|------|--------------|
| **Live2D Scene Selection** | Specify which scene to control. |
| **Spine Object Selection** | Choose the target Spine model. |
| **Animation Name** | The animation to play (e.g., `idle`, `attack`, `death`). |
| **State** | Define post-animation behavior (e.g., Stop, Loop, Play Next). |
| **Blend Mode** | Enable blending with other animations if desired. |
| **Enable / Disable** | Set the animation as active or paused. |

> 💡 **Use Cases:**  
> - Play `talk` motion during dialogue lines  
> - Switch to `happy` motion after an event finishes  
> - Play `death` animation during a climax scene  

---

#### 🎨 Change Spine Skin

![live2d-set-skin](../images/live2d-set-skin.png)

You can change a Spine character’s skin to apply different outfits, expressions, or accessories.

| Item | Description |
|------|--------------|
| **Live2D Scene Selection** | Specify which scene to control. |
| **Spine Object Selection** | Select the Spine model to modify. |
| **Skin Name** | Choose the skin to apply (e.g., `default`, `costume1`, `damaged`). |

> 💡 **Use Cases:**  
> - Switch costumes based on story progression (`default` → `battle`)  
> - Change to `damaged` state upon a hit event  
> - Display different appearances depending on user choice  

---

> ⚙️ **Extra Tip:**  
> Combine Spine animation control and Live2D variable control scripts  
> to easily create complex dynamic effects such as “motion + movement + zoom”.

---

## 4. File Structure

| Item | Path |
|------|------|
| **Scene Data** | `Asset/Live2D/SceneName.live2D` |
| **Live2D Model Files** | `Asset/Live2DModel/` |
| **Spine Model Files** | `Asset/SpineModel/` |
| **Textures / Animation Data** | Maintains original Spine folder structure |
| **Preview Cache** | `Asset/Live2D/` |

> ⚙️ **Note:**  
> Live2D scenes are managed exclusively within the project.  
> If paths are changed or files are moved externally, they may fail to load correctly.

---

## 5. Related Documents

- [Sound Tab](sound.md)  
- [Video Tab](video.md)  
- [UI Tab](ui.md)  
- [Timeline Editing](timeline.md)
