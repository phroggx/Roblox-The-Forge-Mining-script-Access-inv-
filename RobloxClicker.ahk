#SingleInstance Force
CoordMode, Mouse, Window
SetMouseDelay, -1 ; Makes the mouse jumps instant

F1::
    Toggle := !Toggle
    if (Toggle) {
        ; 1. Notify
        SoundBeep, 1000, 200
        ToolTip, MINING: ACTIVE (Auto-Return), 0, 0
        
        IfWinExist, ahk_exe RobloxPlayerBeta.exe
        {
            WinActivate, ahk_exe RobloxPlayerBeta.exe
            
            ; 2. Define the Safe Mining Spot (Bottom Area)
            WinGetPos, , , WinW, WinH, A
            
            Global SafeX := WinW / 2 
            Global SafeY := WinH * 0.80 ; 80% down the screen
            
            ; 3. Initial Start
            GoSub, RepairMining
            
            ; 4. Start Monitoring Loop
            SetTimer, CheckClickStatus, 10
        }
    } else {
        ; 1. Stop Monitoring
        SetTimer, CheckClickStatus, Off
        
        ; 2. Release Mouse
        Click, Up
        
        ; 3. Notify
        SoundBeep, 500, 200
        ToolTip, STOPPED, 0, 0
        SetTimer, ClearToolTip, 1000
    }
return

CheckClickStatus:
    IfWinActive, ahk_exe RobloxPlayerBeta.exe
    {
        ; If the button is released (Mouse Up), repair the hold
        if !GetKeyState("LButton")
        {
            GoSub, RepairMining
        }
    }
return

RepairMining:
    ; 1. Save where the user's mouse is RIGHT NOW
    MouseGetPos, ReturnX, ReturnY
    
    ; 2. Snap to the mining spot and Hold Down
    MouseMove, %SafeX%, %SafeY%
    Click, Down
    
    ; 3. Snap BACK to where the user was
    MouseMove, %ReturnX%, %ReturnY%
return

ClearToolTip:
    ToolTip
return

F4::ExitApp
