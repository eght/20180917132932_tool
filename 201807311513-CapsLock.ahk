CapsLock::  ; LeftWin + RightControl => Left-click (hold down Control/Shift to Control-Click or Shift-Click).
SendEvent {Blind}{LButton down}
KeyWait CapsLock  ; Prevents keyboard auto-repeat from repeating the mouse click.
SendEvent {Blind}{LButton up}
return

