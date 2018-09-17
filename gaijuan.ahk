;;该卷子，评分
;;format: num + enter + num + enter + enter
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
if var is integer
    MsgBox, %var% is an integer number.
;else send {delete}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
LowerLimit = 1
UpperLimit = 4
InputBox, UserInput, Enter a number between %LowerLimit% and %UpperLimit%
;;;;;;;;;;;;;;;;;;;;;;;;;;
if UserInput not between %LowerLimit% and %UpperLimit%
    MsgBox Your input is not within the valid range.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
if UserInput between %LowerLimit% and %UpperLimit%
    MsgBox Your input is between %LowerLimit% and %UpperLimit%.