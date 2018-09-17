;;;;;;;;;;;;;
;; [website][https://blog.csdn.net/samdy1990/article/details/50285091]
;; date: 11:29 PM 8/14/2018
;; usage: 配合四角号码输入法全小键盘版很好用
;; 改建功能的实现
;;
;; 在这里设置快捷键 比如讲小键盘Numpad7 修改成Alt键可以添加：Numpad7::Alt
;; 
;; Numpad7::Alt
;; Numpad8::Control
;; Numpad9::Del
NumpadDiv::Up
NumpadMult::Down
NumpadAdd::Backspace
NumpadSub::Escape
NumpadEnter::Space
NumpadDot::PgDn
;; 改键开关功能实现
 
#NoTrayIcon ; 隐藏托盘图标
 
;替换F2为对应的打开快捷键
F2:: ;快捷取消改建
Process,Exist,alterKeys.exe   ;获取alterKeys.exe的PID
if (ErrorLevel !=0)   ;等于0， 说明A进程不存在 
{
      Process,Close,alterKeys.exe   
}
Return