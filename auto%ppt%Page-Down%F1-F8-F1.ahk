;F1键浏览Chrome文献
;F8键停止键入PgDn
;F1键重新开始浏览Chrome文献
;author: Claude
;date: 22 04 2014
; effects:
; auto review pdf format reference with adobe reader
; auto page down  per 60 seconds

$F8::
  breakvar=0
  return

$F1::
while GetKeyState("F1", "P")  ; While the F1 key is being held down physically.
Sleep 1000
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
{
  breakvar=1
  Loop
    {
      Sleep 1000
      if breakvar = 1
        {
         Send {PgDn}
         Sleep 10000
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
