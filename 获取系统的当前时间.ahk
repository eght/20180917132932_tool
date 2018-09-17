;;autohotkey]脚本如何获取系统的当前时间
^!d:: ;Ctrl+alt+d
FormatTime, now_date, %A_Now%, yyyy/MM/dd ;格式化当前时间
Send, % now_date ;发送
Return
;; autohotkey]脚本如何获取系统的当前时间
;; autohotkey 脚本里面有没有什么函数之类的可以获取系统的当前时间？
;; 我想成某个组合键按下之后能够在记事本等等文档中输出当前年月日2014/12/29这样格式的文字。