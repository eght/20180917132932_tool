;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; author: TheGopher
;; 11-Dec-2009 22:26:32#1
;;
;; Note: This only works on Windows machines.
;;
;; Autohotkey was built for remapping keys.
;;
;; I created a script that you guys may find helpful. 
;; It's modeled after arkenflame's Dvorak script here: 
;; https://www.autohotkey.com/forum/topic27474.html
;;
;; It is really simple and versatile. 
;; If there is anything about the Colemak layout that you don't like, 
;; simply edit and reload the script.
;;
;; You first need to download and install some software. 
;; It's called AutoHotkey and is extremely useful for just about everything.
;; It can be found here: https://www.autohotkey.com/download/
;;
;; [website][https://forum.colemak.com/topic/801-modifiable-colemak-layout-and-layout-toggle-autohotkey/]
;; [usage]
;; How to get it running:
;; Once you have AutoHotkey installed on your computer, 
;; open up notepad and paste the script. Then save as Colemak.ahk. 
;; You could save it as anything as long as the extension is ".ahk". 
;; Now, go find where you saved the script and double click it to run it.
;;
;; Features:
;; Pushing the right alt button will toggle the Colemak layout on or off. 
;; I used right alt because I don't have a right windows button. 
;; If you want to use the right windows button instead, 
;; change the line of code that says "*RAlt::" to "*RWin::"
;; This is good for gaming or applications where you need a QWERTY layout. 
;; You can quickly and easily switch back and forth between the two layouts as needed.
;;
;; Holding alt, control, or the windows key will suspend all the hotkeys. 
;; This means that all hotkeys with control, alt, 
;; or the windows key will work as they would on a QWERTY keyboard layout.
;; (Win + r, ctrl + s, ctrl + t...)
;;
;; If you don't want this function, 
;; delete  the corresponding block of code from 
;; under the ";----------- RELEASE KEYS FROM REMAP WHEN MODIFIER DOWN" comment.
;;
;; This script switches the backspace key and the caps lock key, 
;; turning your backspace key into a caps lock key and 
;; your caps lock key into a backspace key. 
;; THIS WAY YOU CAN STILL USE CRUISE CONTROL FOR COOL. 
;; Or, BILLIE MAYS HERE WITH...
;; If you want your backspace key to work normally like the traditional Colemak layout, 
;; delete the line of code that says "Backspace::CapsLock"
;;
;; I think you can figure out how to change individual keys 
;; on your own it's pretty easy. 
;; Just change "x::y" to "x::z" where x is the key on your QWERTY layout 
;; and y or z is the character that the remapped key sends.
;;
;; Also, for super-convenience, the Autohotkey software comes with a compiler. 
;; You can use it to compile this script into a portable .exe file 
;; that you can store on your thumb drive or as an e-mail attatchment 
;; so that you can have this wherever you go. 
;; You can just run the compiled 
;; script (which will be about  200-300 kb, extremely small) on whatever 
;; computer you're on be it a library computer, 
;; work computer, or a school computer and you'll have all the 
;; functionality of the regular script except you won't be able to edit it.
;; To compile the script, just right click on it and click Compile Script. 
;; There should now be a Colemak.exe file in the same place 
;; as your Colemak.ahk script. Now you may do whatever you want with it.
;;
;; I hope this helps someone, It sure made my life a lot easier.
;; Here is the script:

;START CODE

SendMode Input
#NoEnv
Menu, Tray, Icon, main.cpl, 8

;----------- REMAP TO COLEMARK

;q::' ;no change
;w::, ;no change
e::f
r::p
t::g
y::j
u::l
i::u
o::y
p::;
;[::/ ;no change
;]::= ;no change
;\::\ ;no change

;a::a ;no change
s::r
d::s
f::t
g::d
h::h
j::n
k::e
l::i
SC027::o
;SC028::- ;no change

;z::z ;no change
;x::q ;no change
;c::j ;no change
;v::k ;no change
;b::x ;no change
n::k
;m::m ;no change
;,::w ;no change
;.::v ;no change
;/::z ;no change
CapsLock::Backspace
;Backspace::CapsLock
Backspace::Esc
;----------- RELEASE KEYS FROM REMAP WHEN MODIFIER DOWN

*Ctrl::
SetKeyDelay -1
Send {Blind}{Ctrl DownTemp}
Suspend On
return
*Ctrl up::
Suspend Off
SetKeyDelay -1
Send {Blind}{Ctrl Up}
return

*Alt::
SetKeyDelay -1
Send {Blind}{Alt DownTemp}
Suspend On
return
*Alt up::
Suspend Off
SetKeyDelay -1
Send {Blind}{Alt Up}
return

*LWin::
SetKeyDelay -1
Send {Blind}{LWin DownTemp}
Suspend On
return
*LWin up::
Suspend Off
SetKeyDelay -1
Send {Blind}{LWin Up}
return

;----------- TOGGLE COLEMARK-QWERTY WITH RIGHT ALT KEY

*RAlt::
Suspend, Permit
Suspend, toggle
Hotkey, *Ctrl, toggle
Hotkey, *Ctrl up, toggle
Hotkey, *Alt, toggle
Hotkey, *Alt up, toggle
Hotkey, *LWin, toggle
Hotkey, *LWin up, toggle
return

;END CODE