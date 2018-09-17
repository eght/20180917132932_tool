;F1键浏览Chrome文献
;F8键停止键入PgDn
;F1键重新开始浏览Chrome文献
;author: Claude
;date: 22 04 2014
; effects:
; search English words
; emacs + English words + Chrome
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
  Loop 100
    {
      Sleep 100
      if breakvar = 1
        {
         ;; 1.
         Sleep 1000
         Send, 3
         Send, {Enter}
         Sleep 3000
         Send, {Space}
         Sleep 3000
         Send, {asc 155}
         Sleep 1000
;;;;;;;;;;;;;;;;;;;;
Send, symbol{Space 4}ANSI
Send, {Enter}
Send, {asc 0}{Space 4}0
Send, {Enter}
Send, {asc 1}{Space 4}1
Send, {Enter}
Send, {asc 2}{Space 4}2
Send, {Enter}
Send, {asc 3}{Space 4}3
Send, {Enter}
Send, {asc 4}{Space 4}4
Send, {Enter}
Send, {asc 5}{Space 4}5
Send, {Enter}
Send, {asc 6}{Space 4}6
Send, {Enter}
Send, {asc 7}{Space 4}7
Send, {Enter}
Send, {asc 8}{Space 4}8
Send, {Enter}
Send, {asc 9}{Space 4}9
Send, {Enter}
Send, {asc 10}{Space 4}10
Send, {Enter}
Send, {asc 11}{Space 4}11
Send, {Enter}
Send, {asc 12}{Space 4}12
Send, {Enter}
Send, {asc 13}{Space 4}13
Send, {Enter}
Send, {asc 14}{Space 4}14
Send, {Enter}
Send, {asc 15}{Space 4}15
Send, {Enter}
Send, {asc 16}{Space 4}16
Send, {Enter}
Send, {asc 17}{Space 4}17
Send, {Enter}
Send, {asc 18}{Space 4}18
Send, {Enter}
Send, {asc 19}{Space 4}19
Send, {Enter}
Send, {asc 20}{Space 4}20
Send, {Enter}
Send, {asc 21}{Space 4}21
Send, {Enter}
Send, {asc 22}{Space 4}22
Send, {Enter}
Send, {asc 23}{Space 4}23
Send, {Enter}
Send, {asc 24}{Space 4}24
Send, {Enter}
Send, {asc 25}{Space 4}25
Send, {Enter}
Send, {asc 26}{Space 4}26
Send, {Enter}
Send, {asc 27}{Space 4}27
Send, {Enter}
Send, {asc 28}{Space 4}28
Send, {Enter}
Send, {asc 29}{Space 4}29
Send, {Enter}
Send, {asc 30}{Space 4}30
Send, {Enter}
Send, {asc 31}{Space 4}31
Send, {Enter}
Send, {asc 32}{Space 4}32
Send, {Enter}
Send, {asc 33}{Space 4}33
Send, {Enter}
Send, {asc 34}{Space 4}34
Send, {Enter}
Send, {asc 35}{Space 4}35
Send, {Enter}
Send, {asc 36}{Space 4}36
Send, {Enter}
Send, {asc 37}{Space 4}37
Send, {Enter}
Send, {asc 38}{Space 4}38
Send, {Enter}
Send, {asc 39}{Space 4}39
Send, {Enter}
Send, {asc 40}{Space 4}40
Send, {Enter}
Send, {asc 41}{Space 4}41
Send, {Enter}
Send, {asc 42}{Space 4}42
Send, {Enter}
Send, {asc 43}{Space 4}43
Send, {Enter}
Send, {asc 44}{Space 4}44
Send, {Enter}
Send, {asc 45}{Space 4}45
Send, {Enter}
Send, {asc 46}{Space 4}46
Send, {Enter}
Send, {asc 47}{Space 4}47
Send, {Enter}
Send, {asc 48}{Space 4}48
Send, {Enter}
Send, {asc 49}{Space 4}49
Send, {Enter}
Send, {asc 50}{Space 4}50
Send, {Enter}
Send, {asc 51}{Space 4}51
Send, {Enter}
Send, {asc 52}{Space 4}52
Send, {Enter}
Send, {asc 53}{Space 4}53
Send, {Enter}
Send, {asc 54}{Space 4}54
Send, {Enter}
Send, {asc 55}{Space 4}55
Send, {Enter}
Send, {asc 56}{Space 4}56
Send, {Enter}
Send, {asc 57}{Space 4}57
Send, {Enter}
Send, {asc 58}{Space 4}58
Send, {Enter}
Send, {asc 59}{Space 4}59
Send, {Enter}
Send, {asc 60}{Space 4}60
Send, {Enter}
Send, {asc 61}{Space 4}61
Send, {Enter}
Send, {asc 62}{Space 4}62
Send, {Enter}
Send, {asc 63}{Space 4}63
Send, {Enter}
Send, {asc 64}{Space 4}64
Send, {Enter}
Send, {asc 65}{Space 4}65
Send, {Enter}
Send, {asc 66}{Space 4}66
Send, {Enter}
Send, {asc 67}{Space 4}67
Send, {Enter}
Send, {asc 68}{Space 4}68
Send, {Enter}
Send, {asc 69}{Space 4}69
Send, {Enter}
Send, {asc 70}{Space 4}70
Send, {Enter}
Send, {asc 71}{Space 4}71
Send, {Enter}
Send, {asc 72}{Space 4}72
Send, {Enter}
Send, {asc 73}{Space 4}73
Send, {Enter}
Send, {asc 74}{Space 4}74
Send, {Enter}
Send, {asc 75}{Space 4}75
Send, {Enter}
Send, {asc 76}{Space 4}76
Send, {Enter}
Send, {asc 77}{Space 4}77
Send, {Enter}
Send, {asc 78}{Space 4}78
Send, {Enter}
Send, {asc 79}{Space 4}79
Send, {Enter}
Send, {asc 80}{Space 4}80
Send, {Enter}
Send, {asc 81}{Space 4}81
Send, {Enter}
Send, {asc 82}{Space 4}82
Send, {Enter}
Send, {asc 83}{Space 4}83
Send, {Enter}
Send, {asc 84}{Space 4}84
Send, {Enter}
Send, {asc 85}{Space 4}85
Send, {Enter}
Send, {asc 86}{Space 4}86
Send, {Enter}
Send, {asc 87}{Space 4}87
Send, {Enter}
Send, {asc 88}{Space 4}88
Send, {Enter}
Send, {asc 89}{Space 4}89
Send, {Enter}
Send, {asc 90}{Space 4}90
Send, {Enter}
Send, {asc 91}{Space 4}91
Send, {Enter}
Send, {asc 92}{Space 4}92
Send, {Enter}
Send, {asc 93}{Space 4}93
Send, {Enter}
Send, {asc 94}{Space 4}94
Send, {Enter}
Send, {asc 95}{Space 4}95
Send, {Enter}
Send, {asc 96}{Space 4}96
Send, {Enter}
Send, {asc 97}{Space 4}97
Send, {Enter}
Send, {asc 98}{Space 4}98
Send, {Enter}
Send, {asc 99}{Space 4}99
Send, {Enter}
Send, {asc 100}{Space 4}100
Send, {Enter}
Send, {asc 101}{Space 4}101
Send, {Enter}
Send, {asc 102}{Space 4}102
Send, {Enter}
Send, {asc 103}{Space 4}103
Send, {Enter}
Send, {asc 104}{Space 4}104
Send, {Enter}
Send, {asc 105}{Space 4}105
Send, {Enter}
Send, {asc 106}{Space 4}106
Send, {Enter}
Send, {asc 107}{Space 4}107
Send, {Enter}
Send, {asc 108}{Space 4}108
Send, {Enter}
Send, {asc 109}{Space 4}109
Send, {Enter}
Send, {asc 110}{Space 4}110
Send, {Enter}
Send, {asc 111}{Space 4}111
Send, {Enter}
Send, {asc 112}{Space 4}112
Send, {Enter}
Send, {asc 113}{Space 4}113
Send, {Enter}
Send, {asc 114}{Space 4}114
Send, {Enter}
Send, {asc 115}{Space 4}115
Send, {Enter}
Send, {asc 116}{Space 4}116
Send, {Enter}
Send, {asc 117}{Space 4}117
Send, {Enter}
Send, {asc 118}{Space 4}118
Send, {Enter}
Send, {asc 119}{Space 4}119
Send, {Enter}
Send, {asc 120}{Space 4}120
Send, {Enter}
Send, {asc 121}{Space 4}121
Send, {Enter}
Send, {asc 122}{Space 4}122
Send, {Enter}
Send, {asc 123}{Space 4}123
Send, {Enter}
Send, {asc 124}{Space 4}124
Send, {Enter}
Send, {asc 125}{Space 4}125
Send, {Enter}
Send, {asc 126}{Space 4}126
Send, {Enter}
Send, {asc 127}{Space 4}127
Send, {Enter}
Send, {asc 128}{Space 4}128
Send, {Enter}
Send, {asc 129}{Space 4}129
Send, {Enter}
Send, {asc 130}{Space 4}130
Send, {Enter}
Send, {asc 131}{Space 4}131
Send, {Enter}
Send, {asc 132}{Space 4}132
Send, {Enter}
Send, {asc 133}{Space 4}133
Send, {Enter}
Send, {asc 134}{Space 4}134
Send, {Enter}
Send, {asc 135}{Space 4}135
Send, {Enter}
Send, {asc 136}{Space 4}136
Send, {Enter}
Send, {asc 137}{Space 4}137
Send, {Enter}
Send, {asc 138}{Space 4}138
Send, {Enter}
Send, {asc 139}{Space 4}139
Send, {Enter}
Send, {asc 140}{Space 4}140
Send, {Enter}
Send, {asc 141}{Space 4}141
Send, {Enter}
Send, {asc 142}{Space 4}142
Send, {Enter}
Send, {asc 143}{Space 4}143
Send, {Enter}
Send, {asc 144}{Space 4}144
Send, {Enter}
Send, {asc 145}{Space 4}145
Send, {Enter}
Send, {asc 146}{Space 4}146
Send, {Enter}
Send, {asc 147}{Space 4}147
Send, {Enter}
Send, {asc 148}{Space 4}148
Send, {Enter}
Send, {asc 149}{Space 4}149
Send, {Enter}
Send, {asc 150}{Space 4}150
Send, {Enter}
Send, {asc 151}{Space 4}151
Send, {Enter}
Send, {asc 152}{Space 4}152
Send, {Enter}
Send, {asc 153}{Space 4}153
Send, {Enter}
Send, {asc 154}{Space 4}154
Send, {Enter}
Send, {asc 155}{Space 4}155
Send, {Enter}
Send, {asc 156}{Space 4}156
Send, {Enter}
Send, {asc 157}{Space 4}157
Send, {Enter}
Send, {asc 158}{Space 4}158
Send, {Enter}
Send, {asc 159}{Space 4}159
Send, {Enter}
Send, {asc 160}{Space 4}160
Send, {Enter}
Send, {asc 161}{Space 4}161
Send, {Enter}
Send, {asc 162}{Space 4}162
Send, {Enter}
Send, {asc 163}{Space 4}163
Send, {Enter}
Send, {asc 164}{Space 4}164
Send, {Enter}
Send, {asc 165}{Space 4}165
Send, {Enter}
Send, {asc 166}{Space 4}166
Send, {Enter}
Send, {asc 167}{Space 4}167
Send, {Enter}
Send, {asc 168}{Space 4}168
Send, {Enter}
Send, {asc 169}{Space 4}169
Send, {Enter}
Send, {asc 170}{Space 4}170
Send, {Enter}
Send, {asc 171}{Space 4}171
Send, {Enter}
Send, {asc 172}{Space 4}172
Send, {Enter}
Send, {asc 173}{Space 4}173
Send, {Enter}
Send, {asc 174}{Space 4}174
Send, {Enter}
Send, {asc 175}{Space 4}175
Send, {Enter}
Send, {asc 176}{Space 4}176
Send, {Enter}
Send, {asc 177}{Space 4}177
Send, {Enter}
Send, {asc 178}{Space 4}178
Send, {Enter}
Send, {asc 179}{Space 4}179
Send, {Enter}
Send, {asc 180}{Space 4}180
Send, {Enter}
Send, {asc 181}{Space 4}181
Send, {Enter}
Send, {asc 182}{Space 4}182
Send, {Enter}
Send, {asc 183}{Space 4}183
Send, {Enter}
Send, {asc 184}{Space 4}184
Send, {Enter}
Send, {asc 185}{Space 4}185
Send, {Enter}
Send, {asc 186}{Space 4}186
Send, {Enter}
Send, {asc 187}{Space 4}187
Send, {Enter}
Send, {asc 188}{Space 4}188
Send, {Enter}
Send, {asc 189}{Space 4}189
Send, {Enter}
Send, {asc 190}{Space 4}190
Send, {Enter}
Send, {asc 191}{Space 4}191
Send, {Enter}
Send, {asc 192}{Space 4}192
Send, {Enter}
Send, {asc 193}{Space 4}193
Send, {Enter}
Send, {asc 194}{Space 4}194
Send, {Enter}
Send, {asc 195}{Space 4}195
Send, {Enter}
Send, {asc 196}{Space 4}196
Send, {Enter}
Send, {asc 197}{Space 4}197
Send, {Enter}
Send, {asc 198}{Space 4}198
Send, {Enter}
Send, {asc 199}{Space 4}199
Send, {Enter}
Send, {asc 200}{Space 4}200
Send, {Enter}
Send, {asc 201}{Space 4}201
Send, {Enter}
Send, {asc 202}{Space 4}202
Send, {Enter}
Send, {asc 203}{Space 4}203
Send, {Enter}
Send, {asc 204}{Space 4}204
Send, {Enter}
Send, {asc 205}{Space 4}205
Send, {Enter}
Send, {asc 206}{Space 4}206
Send, {Enter}
Send, {asc 207}{Space 4}207
Send, {Enter}
Send, {asc 208}{Space 4}208
Send, {Enter}
Send, {asc 209}{Space 4}209
Send, {Enter}
Send, {asc 210}{Space 4}210
Send, {Enter}
Send, {asc 211}{Space 4}211
Send, {Enter}
Send, {asc 212}{Space 4}212
Send, {Enter}
Send, {asc 213}{Space 4}213
Send, {Enter}
Send, {asc 214}{Space 4}214
Send, {Enter}
Send, {asc 215}{Space 4}215
Send, {Enter}
Send, {asc 216}{Space 4}216
Send, {Enter}
Send, {asc 217}{Space 4}217
Send, {Enter}
Send, {asc 218}{Space 4}218
Send, {Enter}
Send, {asc 219}{Space 4}219
Send, {Enter}
Send, {asc 220}{Space 4}220
Send, {Enter}
Send, {asc 221}{Space 4}221
Send, {Enter}
Send, {asc 222}{Space 4}222
Send, {Enter}
Send, {asc 223}{Space 4}223
Send, {Enter}
Send, {asc 224}{Space 4}224
Send, {Enter}
Send, {asc 225}{Space 4}225
Send, {Enter}
Send, {asc 226}{Space 4}226
Send, {Enter}
Send, {asc 227}{Space 4}227
Send, {Enter}
Send, {asc 228}{Space 4}228
Send, {Enter}
Send, {asc 229}{Space 4}229
Send, {Enter}
Send, {asc 230}{Space 4}230
Send, {Enter}
Send, {asc 231}{Space 4}231
Send, {Enter}
Send, {asc 232}{Space 4}232
Send, {Enter}
Send, {asc 233}{Space 4}233
Send, {Enter}
Send, {asc 234}{Space 4}234
Send, {Enter}
Send, {asc 235}{Space 4}235
Send, {Enter}
Send, {asc 236}{Space 4}236
Send, {Enter}
Send, {asc 237}{Space 4}237
Send, {Enter}
Send, {asc 238}{Space 4}238
Send, {Enter}
Send, {asc 239}{Space 4}239
Send, {Enter}
Send, {asc 240}{Space 4}240
Send, {Enter}
Send, {asc 241}{Space 4}241
Send, {Enter}
Send, {asc 242}{Space 4}242
Send, {Enter}
Send, {asc 243}{Space 4}243
Send, {Enter}
Send, {asc 244}{Space 4}244
Send, {Enter}
Send, {asc 245}{Space 4}245
Send, {Enter}
Send, {asc 246}{Space 4}246
Send, {Enter}
Send, {asc 247}{Space 4}247
Send, {Enter}
Send, {asc 248}{Space 4}248
Send, {Enter}
Send, {asc 249}{Space 4}249
Send, {Enter}
Send, {asc 250}{Space 4}250
Send, {Enter}
Send, {asc 251}{Space 4}251
Send, {Enter}
Send, {asc 252}{Space 4}252
Send, {Enter}
Send, {asc 253}{Space 4}253
Send, {Enter}
Send, {asc 254}{Space 4}254
Send, {Enter}
Send, {asc 255}{Space 4}255

;;;;;;;;;;;;;;;;;;;;;;;;;;
         Sleep 1000
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
;;
return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;