# Get started

*welcome to *VoiceScriptPlayer** 🎵
this document will guide you from installing the program to running it for the first time,
to creating a new project.  
it also includes basic setup instructions for enabling AI features.

---

## 1. System Requirements

- Windows 10 / 11 (64-bit)
- no installation required - portable executable
- GPU acceleration (CUDA 11.8 or higher recommended)
- **Required Runtime:** [.NET 8.0 Desktop Runtime](https://dotnet.microsoft.com/en-us/download/dotnet/8.0)

> ⚠️ **Cautions:**
> VoiceScriptPlayer is built on .NET 8.0.
> If you do not have that runtime installed on your system, it will not run.

---

## 2. Install and run

1. download the latest version from the [official site](https://www.patreon.com/VoiceScriptPlayer).  
2. extract it (zip) and save it to a folder of your choice.  
3. run `VoiceScriptPlayer.exe`.

> ⚡ Administrator privileges are not required,
> settings and log files are created in the "My Documents/VoiceScriptPlayer" folder.

---

## 3. AI Feature Components

The AI tab in VoiceScriptPlayer provides access to
speech recognition (STT), speech synthesis (TTS), and translation features are available.  
since these features work with external programs or API servers,
you will need to prepare the following components for the first time.

| Category | Name | Requirements | Description |
|------|------|------------|------|
| **STT** | [Microsoft Speech Recognition](ai/speechRecognition.md) | Requires separate installation | Requires installation of Microsoft Server Speech Platform Runtime + Language Pack
| **Secondary STT (optional)** | [Whisper](ai/whisper.md) | Optional installation | Enables higher accuracy speech recognition
| **TTS** | [COEIROINK](ai/coeiroink.md) / [ElevenLabs](ai/elevenlabs.md) / [Hailuo](ai/hailuo.md) | API key or local engine | Convert text to speech |
| **Translation** | [DeepL](ai/deepl.md) / [LibreTranslate](ai/libretranslate.md) | API key or local server | Automatically translate subtitles, lines, etc

> 💡 For installation and setup instructions for each AI feature, please refer to
> can be found in the corresponding documentation.

---

### ⚙️ AI Feature Setup Procedures

1. navigate to the **AI tab** at the top.  
2. select each AI item and click the ⚙️ Settings button.  
3. enter your local server address or API key to activate the feature.  

> Some features (e.g. COEIROINK) require running a separate program (`COEIROINKv2.exe`, etc.)
> need to run a separate program (`COEIROINKv2.exe`, for example).
> Registering the executable location automatically allows you to turn it on at program startup.

---

## 4. First run screen

when you run the program for the first time, you will see the home screen shown below.

![screenshot-main-ui](images/screenshot-main-ui.png)

this screen serves as the **Start Hub** for managing and running your project.

---

### 🖥️ Main Configuration

| Zones | Description |
|------|------|
| **Left sidebar** | Contains menus for Home, Edit, Device Connections, Settings, and more. |
| **Top search bar** | You can search for projects by name or tags. |
| Device status indicator on the right hand side: Shows whether supported devices such as Handy, SR1, and others are connected. |
| Project card list | The created projects are displayed in the form of cards. |

---

## 5. Create a new project

![project-create](images/project-create.png)

to create a new project, follow these steps

1. click the **✏️ icon (editor) in the left sidebar.  
2. press the **'New project'** button at the top.  
3. in the area on the right, set the following items  
   - **Project title
   - **Select a template (empty project / mini-game / multi-track)
   - **Tags, description, play mode, etc (optional)
4. click **Create (green button)** to create the project and add it to the list.

> 💡 Created projects are automatically saved,
> and will also appear in the "Recently Modified List" on the home screen.

---

## 6. Importing an existing project

you can open an existing project in the following ways

1. from the home screen or Editor tab, view the **Projects list**.  
2. click the Edit button of the project you want to import and it will open automatically.  
3. recently edited items are also displayed in the **Top list**.  
4. you can edit the title, tags, description, etc. at any time.

> 📁 Projects are auto-saved and will remain in the list unless you delete them.

---

## 7. Settings and Log Location

VoiceScriptPlayer's preferences and logs are stored in the
**"My Documents/VoiceScriptPlayer"** folder.

| item | path |
|------|------|
| **Settings file** | `My Documents/VoiceScriptPlayer/Option.json` |
| **Log file** | `My Documents/VoiceScriptPlayer/Log/2025-10-13_Player.log` |

> ⚠️ Any exceptions or errors encountered while running the program are automatically logged to the
> are automatically written to the log file.

---

## Next steps

- [Project management](project/create.md) - Details on creating a new project
- [AI Setup Guide](ai/whisper.md) - Setting up Whisper, COEIROINK, DeepL, etc
- [Device Integration](device/tcode.md) - Connecting Handy / SR1 devices
- [Features Summary](features.md) - Main features and interface descriptions
