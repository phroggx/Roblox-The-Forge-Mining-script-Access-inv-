# Roblox Snap-Back Miner

**Auto-Mining Utility for *The Forge* & Click-Holding Games**

This script automates the "hold-click" mining mechanic while maintaining full usability of your inventory and UI. It locks the mining action to the bottom of the screen but momentarily releases it when you click elsewhere, instantly snapping back to resume work.

### Key Features

* **Persistent Mining:** Automatically holds the mouse button at a safe spot (80% down the screen) so your character never stops mining.
* **Smart Navigation:** Detects manual clicks, pauses the script instantly to let your input through, then resumes mining.
* **Auto-Return:** After resetting the mining hold, the cursor snaps back to your original position.
* **Background-Friendly:** Designed to work while the window is focused, allowing for "semi-AFK" inventory management.

---

### Controls

| Key | Function |
| --- | --- |
| **F1** | **Toggle On/Off** (Starts mining immediately) |
| **F4** | **Emergency Stop** (Terminates the script) |

---

### Installation

1. **Get AutoHotkey:** Download and install the software from the official repository:
[https://github.com/AutoHotkey/AutoHotkey.git](https://github.com/AutoHotkey/AutoHotkey.git)
2. **Create Script:**
* Right-click your desktop `> New > AutoHotkey Script`.
* Name it `Miner.ahk`.
* Paste the script code into the file.


3. **Run:** Right-click the file and select **Run as Administrator** (Required for Roblox input).

### Usage

1. **Align:** Position your character so the rock/ore is in the center of the screen.
2. **Engage:** Press **F1**. The mouse will snap to the bottom-middle and begin holding.
3. **Inventory:** You can open menus and click items freely. The script will briefly release the hold to register your click and then immediately resume mining.

### Configuration

To change where the script clicks (e.g., to avoid a hotbar), edit the `Miner.ahk` file and adjust the `SafeY` multiplier:

```autohotkey
Global SafeY := WinH * 0.80  ; 0.80 = 80% down the screen

```

* **Higher up:** Change to `0.60`
* **Lower down:** Change to `0.90`

> **Note:** Because the mouse is held down 99% of the time, moving the cursor may simulate a "drag" action in some menus. This is normal behavior for this method.

---

*Disclaimer: Use this script at your own risk. While it does not inject code into the game client, using automation tools may violate the Terms of Service of specific Roblox experiences.*
