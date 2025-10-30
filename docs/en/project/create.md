# Creating a New Project

A new project is the **starting point** for your work in **VoiceScriptPlayer**.  
This document explains the entire process of creating a project through the “New Project” screen.

---

## 1. Open the New Project Screen

![project-create](../images/project-create.png)

To create a new project, follow these steps:

1. Click the **✏️ icon (Editor)** on the left sidebar.  
2. Click the **[New Project]** button at the top.  
3. Enter the project information in the right panel.

---

## 2. Configure Project Information

In the right panel, you can set the basic information for your new project.  
The following items are key options to check when creating a project:

| Item | Description |
|------|--------------|
| **Project Title** | Enter the name of your project. This will also be used as the file and folder name. |
| **Product Code (DLsite Code)** | Enter the DLsite product ID, e.g., `RJ01430276`.<br>Click the **🔍 button** on the right to automatically bind the product’s information (title, description, tags, etc.). |
| **Auto Translation** | Automatically translates the bound information (title, description, tags, etc.) into your preferred language.<br>The translation language is based on the **STT Engine Language** setting below. |
| **Template Selection** | Predefines the structure of your project.<br>You can choose between **Empty Project / Mini Game / Multi-track** templates. |
| **Tags and Description** | Add tags or detailed descriptions for your project. When imported from DLsite, these fields are filled automatically. |
| **Play Mode** | Select the basic play style.<br>① **Hand Only** ② **Device Recommended** ③ **Device Only** |
| **Language Setting (STT Engine)** | Specify the default language used for speech recognition (STT) within the project.<br>Examples: Japanese (`ja`), English (`en`), Korean (`ko`), etc. |
| **Microphone Check Window** | When checked, a **Microphone Detection Window** appears at the project start.<br>You can test whether the input device is functioning properly. |

> 💡 **Tip:**  
> Information loaded via a DLsite product code is automatically saved when the project is created.  
> Translations applied via the translation button are reflected immediately.  
> The language setting applies not only to the **STT Engine**, but also to **auto translation, subtitle generation, and TTS synthesis**.

---

## 3. Create the Project

After completing all settings, click the **green [Create] button** at the bottom of the screen.  
Your new project will be created automatically and added to the **Project List**.

- The project is automatically saved after creation.  
- A new entry will also appear in the **“Recently Edited”** section on the home screen.  
- Project files are stored in the following structure by default:

---

## 4. What You Can Do Immediately After Creation

- **Add Media:** Import [Audio](../editor/sound.md) or [Video](../editor/video.md) files.  
- **Build UI:** Arrange buttons, text, and other elements in the [UI Editor](../editor/ui.md).  
- **Set Up Timeline:** Define time-based actions in the [Stroke / Event Editor](../editor/stroke.md).  
- **Save:** Use **Ctrl + S** or **File → Save** in the menu.

---

## 6. Next Steps

- [Load & Save Projects](manage.md)
