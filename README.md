# Roblox Snap-Back Miner

**Auto-Mining Utility for *The Forge* & Click-Holding Games**

This AutoHotKey script automates the "hold-click" mining mechanic while maintaining full usability of your inventory and UI. It locks the mining action to the bottom of the screen but momentarily releases it when you click elsewhere, instantly snapping back to resume work.

### Key Features

* **Persistent Mining:** Automatically holds the mouse button at a safe spot (80% down the screen) so your character never stops mining.
* **Smart Navigation:** Detects manual clicks, pauses the script instantly to let your input through, then resumes mining.
* **Auto-Return:** After resetting the mining hold, the cursor snaps back to your original position, preventing mouse drift.
* **Background-Friendly:** Designed to work while the window is focused, allowing for "semi-AFK" inventory management.

---

### Controls

| Key | Function |
| --- | --- |
| **F1** | **Toggle On/Off** (Starts mining immediately) |
| **F4** | **Emergency Stop** (Terminates the script) |

---

### Quick Start

1. **Install:** Download [AutoHotKey](https://www.autohotkey.com/).
2. **Create:** Save the script code into a file named `Miner.ahk`.
3. **Run:** Right-click the file and select **Run as Administrator** (Required for Roblox input).
4. **Engage:**
* Align your character so the rock is in the center of the screen.
* Press **F1**.



### Configuration

To change where the script clicks (e.g., to avoid a hotbar), edit the `Miner.ahk` file and adjust the **SafeY** multiplier:

```autohotkey
Global SafeY := WinH * 0.80  ; 0.80 = 80% down the screen

```

* **Higher up:** Change to `0.60`
* **Lower down:** Change to `0.90`

> **Note:** Because the mouse is held down 99% of the time, moving the cursor may simulate a "drag" action. This is normal behavior for this method.
