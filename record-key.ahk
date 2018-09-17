;functions by Sean from http://www.autohotkey.com/board/topic/17633-retrieve-addressbar-of-firefox-through-dde-message/
;retrieve URL in iexplore, firefox and opera - 

;Chrome uses ControlGetText

^space::
URL = 
WinGetClass,class, A

If (Class = "Chrome_WidgetWin_0" or Class = "Chrome_WidgetWin_1")
 {
  WinGetTitle, title, A
  ControlGetText, url, Chrome_OmniboxView1, %title%
  MsgBox % URL
  return
 }

if Class = IEFrame
 sServer := "Iexplore"
 
If Class =  OperaWindowClass 
 sServer := "Opera"   
 
If ( Class = "MozillaUIWindowClass" or Class = "MozillaWindowClass" ) 
 sServer := "FireFox"

gosub GetURL  ;used for IE, Opera and Firefox
 
MsgBox % URL
return


;Seans code below
GetURL: 
sTopic  := "WWW_GetWindowInfo"
sItem   := "0xFFFFFFFF"
idInst  := DdeInitialize()
hServer := DdeCreateStringHandle(idInst, sServer)
hTopic  := DdeCreateStringHandle(idInst, sTopic )
hItem   := DdeCreateStringHandle(idInst, sItem  )
hConv := DdeConnect(idInst, hServer, hTopic)
hData := DdeClientTransaction(0x20B0, hConv, hItem)   ; XTYP_REQUEST
sData := DdeAccessData(hData)
DdeFreeStringHandle(idInst, hServer)
DdeFreeStringHandle(idInst, hTopic )
DdeFreeStringHandle(idInst, hItem  )
DdeUnaccessData(hData)
DdeFreeDataHandle(hData)
DdeDisconnect(hConv)
DdeUninitialize(idInst)
Loop,	Parse,	sData, CSV
If	A_Index = 1
 URL	:= A_LoopField
return
DdeInitialize(pCallback = 0, nFlags = 0){
   DllCall("DdeInitialize", "UintP", idInst, "Uint", pCallback, "Uint", nFlags, "Uint", 0)
   Return idInst
}
DdeUninitialize(idInst){
   Return DllCall("DdeUninitialize", "Uint", idInst)
}
DdeConnect(idInst, hServer, hTopic, pCC = 0){
   Return DllCall("DdeConnect", "Uint", idInst, "Uint", hServer, "Uint", hTopic, "Uint", pCC)
}
DdeDisconnect(hConv){
   Return DllCall("DdeDisconnect", "Uint", hConv)
}
DdeAccessData(hData){
   Return DllCall("DdeAccessData", "Uint", hData, "Uint", 0, "str")
}
DdeUnaccessData(hData){
   Return DllCall("DdeUnaccessData", "Uint", hData)
}
DdeFreeDataHandle(hData){
   Return DllCall("DdeFreeDataHandle", "Uint", hData)
}
DdeCreateStringHandle(idInst, sString, nCodePage = 1004){    
   Return DllCall("DdeCreateStringHandle", "Uint", idInst, "Uint", &sString, "int", nCodePage)
}
DdeFreeStringHandle(idInst, hString){
   Return DllCall("DdeFreeStringHandle", "Uint", idInst, "Uint", hString)
}
DdeClientTransaction(nType, hConv, hItem, sData = "", nFormat = 1, nTimeOut = 10000){
   Return DllCall("DdeClientTransaction", "Uint", sData = "" ? 0 : &sData, "Uint", sData = "" ? 0 : StrLen(sData)+1, "Uint", hConv, "Uint", hItem, "Uint", nFormat, "Uint", nType, "Uint", nTimeOut, "UintP", nResult)
}