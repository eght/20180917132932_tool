;;;;;;;;;;;;;;;;;;
;;date: 1:49 AM 7/30/2018
;;effect: 改卷子，高中会考，电脑打分
;;该卷子，评分
;;format: num + enter + num + enter + enter
;;usage: 先F1 -------> 再打分
F1::
loop
{
Input, UserInput, V T5 L1 C, {enter}.{esc}{tab},  1,2,3,4
if UserInput in 1,2,3,4
   Send, {enter}
else Send, {backspace}
;;;;;;;
Input, UserInput, V T5 L1 C, {enter}.{esc}{tab},  1,2,3,4,5,6
if UserInput in 1,2,3,4,5,6
   Send, {ente 2}
else Send, {backspace}
}
return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
