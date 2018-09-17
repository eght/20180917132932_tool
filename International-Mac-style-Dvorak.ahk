;;[website][https://autohotkey.com/board/topic/68127-international-mac-style-dvorak-non-english-on-qwerty/?hl=dvorak]
;;effect: International Mac style Dvorak  (non-english on qwerty) 
;;7:31 PM 7/29/2018
;;usage: 1. ScrollLock   ---->  dvorak or qwerty
;;       2. F9           ---->  emacs
;;       3. CapsLock     ---->  BackSpace
;;       4. F2           ----> switch input method instead of Ctrl + Shift
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;    ^ for CTRL
;;    ! for ALT
;;    # for Windows Key
;;    + for Shift
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;usage: 1. ScrollLock   ---->  dvorak or qwerty
;;       2. F3           ---->  emacs
;;       3. CapsLock     ---->  BackSpace
;;       4. F2           ----> switch input method instead of Ctrl + Shift
; Use Scroll Lock to control keyboard ("on" is Qwerty)
; and do not let Control, Alt, or Win modifiers act on Dvorak
; and do not let Non-English input method act on Dvorak
Loop {
	IME_CHECK(WinTitle)
	{
		WinGet,hWnd,ID,%WinTitle%
		Return Send_ImeControl(ImmGetDefaultIMEWnd(hWnd),0x005,"")
	}

	Send_ImeControl(DefaultIMEWnd, wParam, lParam)
	{
		DetectSave := A_DetectHiddenWindows       
		DetectHiddenWindows,ON                           

		SendMessage 0x283, wParam,lParam,,ahk_id %DefaultIMEWnd%
		if (DetectSave <> A_DetectHiddenWindows)
			DetectHiddenWindows,%DetectSave%
		return ErrorLevel
	}

	ImmGetDefaultIMEWnd(hWnd)
	{
		return DllCall("imm32\ImmGetDefaultIMEWnd", Uint,hWnd, Uint)
	}

	ret := IME_CHECK("A")     ;until this line : IME check
   
	If !GetKeyState("ScrollLock", "T")
	and !GetKeyState("Control")
	and !GetKeyState("Alt")
	and !GetKeyState("LWin")
	and !GetKeyState("RWin") 
	and %ret%=0{
		Suspend, Off
	} else {
		Suspend, On
	}
	Sleep, 50
}

; QWERTY to Dvorak mapping
-::[
=::]

q::'
w::,
e::.
r::p
t::y
y::f
u::g
i::c
o::r
p::l
[::/
]::=

;a::a
s::o
d::e
f::u
g::i
h::d
j::h
k::t
l::n
`;::s
'::-

z::`;
x::q
c::j
v::k
b::x
n::b
;m::m
,::w
.::v
/::z

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Set Lock keys permanently
SetNumlockState, AlwaysOn
SetCapsLockState, AlwaysOff
;;SetScrollLockState, AlwaysOff

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;usage: 1. ScrollLock   ---->  dvorak or qwerty
;;       2. F4           ---->  emacs
;;       3. CapsLock     ---->  BackSpace
;;       4. F2           ----> switch input method instead of Ctrl + Shift
; Turn Caps Lock into a Shift key
Capslock::BackSpace

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;usage: 1. ScrollLock   ---->  dvorak or qwerty
;;       2. F9           ---->  emacs
;;       3. CapsLock     ---->  BackSpace
;;       4. F2           ----> switch input method instead of Ctrl + Shift
;;run emacs
F9::Run, D:\emacs\home\wilson\emacs.bat

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;usage: 1. ScrollLock   ---->  dvorak or qwerty
;;       2. F3           ---->  emacs
;;       3. CapsLock     ---->  BackSpace
;;       4. F2           ----> switch input method instead of Ctrl + Shift
;; switch input method
;; effect: use F2 instead of ctrl+shift
F2::send {LShift down}{LCtrl down}{LShift up}{LCtrl up}