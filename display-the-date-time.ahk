;date: 10:28 PM 7/29/2018
;display the date and time, useful for print screen
#singleinstance force

Gui, +AlwaysOnTop +ToolWindow -SysMenu -Caption
Gui, Color, CCCCCC
Gui, Font, cFF0000 s10 , verdana ;red
;Gui, Font, c000000 s7 , verdana ;black
;Gui, Font, cFFFFFF s7 , verdana  ;white
Gui, Add, Text, vD y0, %A_YYYY%-%A_MM%-%A_DD% %a_hour%:%a_min%:%a_sec%
Gui, Show, NoActivate x750 y3,uptime  ; screen position here
WinSet, TransColor, CCCCCC 255,uptime
SetTimer, RefreshD, 1000
return

RefreshD:
GuiControl, , D, %A_YYYY%-%A_MM%-%A_DD% %a_hour%:%a_min%:%a_sec%
Gui, Show, NoActivate x750 y3,uptime  ; screen position here
return