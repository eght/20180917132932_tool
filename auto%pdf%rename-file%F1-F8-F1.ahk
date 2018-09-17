;F1键浏览Chrome文献
;F8键停止键入PgDn
;F1键重新开始浏览Chrome文献
;author: Claude
;date: 22 04 2014
; effects:
; auto review pdf format reference with adobe reader
; auto page down  per 60 seconds
;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; # Win (Windows logo key) 
;; ! Alt 
;; ^ Control 
;; + Shift 
;; &  An ampersand may be used between any two keys 
;;    or mouse buttons to combine them into a custom hotkey.  
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

$F8::
  breakvar=0
  return

$F1::
while GetKeyState("F1", "P")  ; While the F1 key is being held down physically.
Sleep 1000
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
{
  breakvar=1
  Loop 1000
    {
      Sleep 100
      if breakvar = 1
        {
         ;; 1.
         ;; everything *.pdf F:/
         ;; 移动到第一行
         ;;;;;;;;;;;;;
         ;;切换窗口到 Everything
	 ;;IfWinNotActive, ahk_class Emacs
         ;;  WinActivate, ahk_class Emacs
         IfWinNotActive, ahk_class EVERYTHING
           WinActivate, ahk_class EVERYTHING
         WinWaitActive, ahk_class EVERYTHING
         Sleep 100
         Send {Down}
         Sleep 100
         Send {Home}
         Sleep 100
         ;; 2.
         ;; 复制文件名
         Send, {Shift down}{F10}{Shift up}
         Sleep 1000
         Send, {up 2}
         Sleep 100
         Send, m
         Sleep 100
         Send, {Ctrl down}c{Ctrl up}
         ;; 3.
         ;; 换到emacs窗口 README.org
         Sleep 100
         Send, {Alt down}{Tab}{Alt up}
         ;;;;;;;;;;;;;
         ;;切换窗口到 Emacs
	 IfWinNotActive, ahk_class Emacs
           WinActivate, ahk_class Emacs
         WinWaitActive, ahk_class Emacs
         ;;IfWinNotActive, ahk_class EVERYTHING
         ;;WinActivate, ahk_class EVERYTHING
         ;; 4.
         ;; 输入内容
         Sleep 100
         Send, original:
         Sleep 100
         Send, {Space 2}
         Sleep 100
         Send, {BackSpace 1}
         Sleep 100
         Send, {Ctrl down}y{Ctrl up}
         Sleep 100
         Send, {Enter}
         ;; 第二行
         Sleep 100
         Send, modified: v.va.vac
         Sleep 100
         Send, {Alt down}x{Alt up}
         ;;Sleep 1000
         ;;Send, bjk-timestamp-claude-v1
         Sleep 100
         Send, {Enter}
         Sleep 100
         Send, .pdf
         Sleep 100
         Send, {Ctrl down}e{Ctrl up}
         Sleep 100
         Send, {Alt down}bbbbbb{Alt up}
         Sleep 100
         Send, {Ctrl down}k{Ctrl up}
         Sleep 100
         Send, {Ctrl down}y{Ctrl up}
         Sleep 100
         Send, {Enter}
         Sleep 100
         Send, path: F:/secret/v/va/vac/
         Sleep 100
         Send, {Ctrl down}y{Ctrl up}
         Sleep 100
         Send, {Enter 2}
         Sleep 1000
         Send, {Ctrl down}xs{Ctrl up}
         ;; 3.
         ;; 换到everything窗口 重命名
         Sleep 1000
         Send, {Alt down}{Tab}{Alt up}
         ;;;;;;;;;;;;;
         ;;切换窗口到 Everything
	 ;;IfWinNotActive, ahk_class Emacs
         ;;  WinActivate, ahk_class Emacs
         IfWinNotActive, ahk_class EVERYTHING
           WinActivate, ahk_class EVERYTHING
         WinWaitActive, ahk_class EVERYTHING
         Sleep 100
         Send, {Shift down}{F10}{Shift up}
         Sleep 1000
         Send, {up 2}
         Sleep 100
         Send, m
         Sleep 100
         Send, {Ctrl down}v{Ctrl up}
         Sleep 100
         Send, {Alt down}{Tab}{Alt up}
         Sleep 1000
         Send, {Alt down}{Tab}{Alt up}
         ;;Send, {Enter}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;关闭记事本
;;WinClose ahk_class Notepad
;;;;;;;;;;;;;;;;;;;;;;;;;;
         Sleep 3000
;;;;;;;;;;;;;;;;;;;;;;
;;reboot
;;Shutdown, 2
;;;;;;;;;;;;;;;;;;;
;;shutdown
;;Shutdown, 1
;;;;;;;;;;;;;;;;;;;;;;
;         Send {PgDn}
;         Sleep 10000
;         Send {PgDn}
;         Sleep 10000
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; left page
;; 10 seconds, then Down
        }
      else
        {
          break
        }
    }
    breakvar=1
}
return
