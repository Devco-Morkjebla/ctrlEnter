#NoEnv
#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
#KeyHistory 0
ListLines Off
Process, Priority, , A
SetBatchLines, -1
SetKeyDelay, -1, -1

loop:
    while, True {
        If (GetKeyState("Home") = 1) {
            Sleep, 200
            while (True) {
                If (GetKeyState("Home") = 1) {
                    Sleep, 200
                    Goto, loop
                    }
                Send, {Ctrl down}v{Ctrl up}{Enter}
                Sleep, 10
            }
        }
    }