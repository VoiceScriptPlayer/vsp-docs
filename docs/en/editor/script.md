# Script Tab

The **Script Tab** is the **core logic system of VoiceScriptPlayer**, allowing you to control  
all events, interactions, animations, UI, and sounds within a project through  
**conditions and actions**.

---

## 1. Basic Interface

![script-main](../images/script-main.png)

| Component | Description |
|------------|-------------|
| **① Drag to Add Script** | Creates a new instance script and adds it to the project. |
| **② Global Script** | Manages scripts that are always loaded globally. |
| **③ Import** | Loads an existing script template. |
| **④ New** | Creates a new script template. |
| **⑤ Edit ✏️** | Opens the selected script in the editor. |
| **⑥ Delete 🗑️** | Removes the selected script from the list. |
| **⑦ Open Folder 📂** | Opens the `Asset/Trigger/` folder directly. |

> 💡 **Note:**  
> Global scripts are loaded by default, but you can use the **“Execute only when called”** option to use them as templates.

---

## 2. Script Editor

![script-editor](../images/script-editor.png)

The script editor allows you to visually construct complex logic by freely combining  
**Condition** and **Action** blocks.

---

### 🧭 Top Panel

| Item | Description |
|------|-------------|
| **Name** | Assigns a unique name to the script. |
| **Description** | Adds a short note describing the script’s purpose or function. |
| **Run Once** | Executes only once and won’t run again. |
| **Execute While Paused** | Runs even during pause states (useful for menus or settings). |
| **Execute Only When Called** | Runs only when triggered externally. |

---

### 🧩 Local Variables

| Function | Description |
|-----------|-------------|
| **Add (＋)** | Creates a new local variable for use within the script. |
| **Edit (✏️)** | Changes the variable name or initial value. |
| **Delete (🗑️)** | Removes the selected variable. |

> 💡 **Tip:**  
> Local variables exist only within the current script and do not conflict with global variables.

---

## 3. Condition Blocks

Condition blocks determine **when a script should execute**.  
You can combine multiple conditions to build **detailed trigger logic**.

---

### ⚙️ Basic Concept

- If all conditions evaluate to **True**, the connected **Action** block executes.  
- Multiple conditions are evaluated with **AND** logic.  
- Use **Branch** blocks to define different flows for true/false outcomes.  
- Refer to [Condition List](#10) for available condition types.

---

### 🧩 Examples

| Scenario | Example Condition |
|-----------|------------------|
| Specific key pressed | “When key [Space] is pressed.” |
| Voice recognized | “When voice ‘Start’ is detected.” |
| Variable check | “When variable [Score] is greater than or equal to 100.” |
| Subtitle detection | “When subtitle contains ‘Hello’.” |

> 💡 **Tip:**  
> Conditions can link to various resources such as UI, sound, or Live2D.  
> For example: “If the current track is 1 **and** the subtitle contains a phrase.”

---

## 4. Action Blocks

Action blocks define what actually happens **when conditions are met**.  
They control sound playback, variable changes, track movement, UI display, and more.

---

### ⚙️ Basic Concept

- Actions execute **from top to bottom**.  
- You can insert **Wait** actions to control timing.  
- Combine with loops to create **repetitive logic**.  
- See [Action List](#11) for available commands.

---

### 🧩 Examples

| Scenario | Example Action |
|-----------|----------------|
| Play sound | “Play sound [Voice01].” |
| Switch track | “Change to track [NextScene].” |
| Modify variable | “Increase variable [Volume] by +10.” |
| Open UI | “Open UI [OptionMenu] with ID [Main].” |
| Control Live2D | “Play animation [smile] for Live2D [Scene01].” |

> 💡 **Note:**  
> Actions can also be time-based, e.g. “Increase variable over 3 seconds,”  
> or “Transition animation over 2 seconds.”

---

## 5. Branch Blocks

Branch blocks separate behaviors for **True** and **False** conditions.

| Section | Description |
|----------|-------------|
| **If Block** | Executes when the condition is True. |
| **Else Block** | Executes when the condition is False. |

> 💡 You can nest multiple branches to create complex event scenarios.

---

## 6. Loop Blocks

Loop blocks repeatedly execute specific actions **while a condition remains True**.

| Item | Description |
|------|-------------|
| **Loop Condition** | Defines when the loop continues (e.g., key held, event active). |

> 💡 Useful for continuous responses like “Repeat while key is pressed” or “Wait until subtitle appears.”

---

## 7. Combining Conditions & Actions

![script-logic](../images/script-logic.png)

Scripts consist of multiple conditions and actions arranged in sequence.  
You can drag to reorder blocks, or use toolbar icons for copy/cut/move operations.

| Icon | Function |
|------|-----------|
| ➕ | Add new condition or action block |
| 🔀 | Add branch block (If / Else structure) |
| 🔁 | Add loop block (repeat while condition is true) |
| ✏️ | Edit selected block |
| ✂️ | Cut selected block |
| 📋 | Copy / paste block |
| 🗑️ | Delete block |
| ⬆️ / ⬇️ | Move block up or down |

> ⚙️ **Tip:**  
> Script structures can be freely edited, and runtime debugging is supported.

---

## 8. Global vs Instance Scripts

| Type | Description |
|------|-------------|
| **Global Script** | Always loaded and applied throughout the entire project. |
| **Instance Script** | Linked to a specific track, UI, or event. |

> 💡 **Examples:**  
> - **Global:** HUD updates, time-based events  
> - **Instance:** Scene-specific effects or interaction logic

---

## 9. Script Execution Modes

| Option | Description |
|--------|-------------|
| **Run Once** | Executes once when conditions are met. |
| **Execute Only When Called** | Runs only when invoked by another script or trigger. |
| **Execute While Paused** | Active even when paused (e.g., in menus). |
| **Infinite Loop** | Runs continuously while the condition remains True. |

---

## 10. Condition List

Defines the available conditions that trigger scripts.

---

### 🖱️ Keyboard Input

#### 🔹 KeyDown  
Triggered when key **[Key]** is held down.  
- **Key**: Target key (e.g., `A`, `Space`, `Enter`)

#### 🔹 KeyUp  
Triggered when key **[Key]** is released.  
- **Key**: Target key  

#### 🔹 KeyPressed  
Triggered when key **[Key]** is pressed (Down → Up).  
- **Key**: Target key  

---

### 🗣️ Speech & Subtitle

#### 🔹 SpeechRecognition  
Triggered when speech **[Text]** is detected with volume **[Volume]** and precision **[Precision]**.  
- **Text**: Speech content  
- **Volume**: Minimum volume (0–1)  
- **Precision**: Recognition accuracy (0–1)

#### 🔹 SubtitleRecognition  
Triggered when subtitles contain **[Text]**.  
- **Text**: Target string  

---

### 📊 Status & Variable

#### 🔹 VariableComparison  
Checks if variable **[Variable]** is **[Comparison]** compared to **[Value]**.  
- **Variable**: Variable name  
- **Value**: Value to compare  
- **Comparison**: `>=`, `<=`, `>`, `<`, `==`, `!=`

#### 🔹 CurrentTrack  
Triggered when the current track is **[Track]**.  
- **Track**: Track name or ID  

#### 🔹 CumAction  
Triggered when cum action **[CumType]** occurs.  
- **CumType**: Action type (`All`, `Edge`, etc.)  

#### 🔹 RestStatus  
Triggered when rest state is **[Status]**.  
- **Status**: `Active`, `Inactive`

#### 🔹 EventStatus  
Triggered when event **[EventType]** has status **[EventStatus]**.  
- **EventType**: Event type  
- **EventStatus**: `Active`, `Inactive`

---

## 11. Action List

Actions define what happens when conditions are met.

---

### ⏱️ Time Control

#### 🔹 WaitTime  
Waits for **[Seconds]** seconds.  
- **Seconds**: Duration  

---

### 🔊 Sound Control

#### 🔹 PlaySound  
Plays sound **[Sound]** with left/right volume **[LeftVolume]**, **[RightVolume]**.  
- **Sound**: Sound name  
- **LeftVolume / RightVolume**: Volume ratio (-1–1)

---

### 📦 Variable & Track Control

#### 🔹 SetVariable  
Modifies variable **[Variable]** by **[Value]** with operation **[Modify]** over **[Seconds]** seconds.  
- **Modify**: `Set`, `Add`, `Subtract`, `Multiply`, `Divide`, `Modulo`  

#### 🔹 MoveTrack  
Changes track to **[Track]**.  

#### 🔹 SeekTime  
Sets current track time to **[Seconds]**.  

#### 🔹 PauseTrack / ResumeTrack / ToggleTrack  
Controls playback state.  

---

### 💾 Data Management

#### 🔹 Save / Load  
Saves or loads current state to **Slot:[Slot]**.  
- **Slot**: Save slot index  

#### 🔹 Close  
Closes the program.  

---

### 🧩 UI Control

#### 🔹 OpenUI / CloseUI  
Opens or closes UI **[UI]** with ID **[Text]**.  
- **UI**: UI name  
- **Text**: Instance identifier  

---

### 🔁 Script Control

#### 🔹 TriggerExec / ReturnScript  
Executes another script or returns from current script.  
- **Trigger**: Script name  

---

### 💦 Action & Event Control

#### 🔹 CumActionExec  
Forces cum action **[CumType]**.  
- **CumType**: Action type  

#### 🔹 RestTime  
Rest for **[Seconds]** seconds.  

#### 🔹 StrokeExec  
Executes stroke **[Stroke]** for **[Seconds]** seconds.  

---

### 🎬 Live2D / Spine Control

#### 🔹 SpinePlayAnimation  
Plays animation **[Animation]** for Spine **[Model]** in Live2D **[Live2D]** with **[PlayType]**,  
track **[TrackIndex]**, and status **[Status]**.  

#### 🔹 SpineSetSkin  
Sets skin **[Skin]** for Spine **[Model]** in Live2D **[Live2D]**.  

---

> ⚙️ **Note:**  
> All conditions and actions are structured visually as block components.

---

## 12. File Structure

| Item | Path |
|------|------|
| **Global Script** | `Asset/Trigger/` |

> ⚙️ **Warning:**  
> Scripts must be stored **inside the project** and cannot reference external files.

---

## 14. Related Documents

- [UI Tab](ui.md)  
- [Live2D Tab](live2d.md)  
- [Timeline Editing](timeline.md)
