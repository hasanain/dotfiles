#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
LControl & Tab::AltTab

LControl & `::
Send, {Ctrl down}{Tab}
return
^!q::
return

^q::
Send {Alt down}{F4}
return

#IfWinActive, ahk_exe WindowsTerminal.exe
!c::
Send, {Ctrl down}c{Ctrl up}
return

#IfWinActive, ahk_exe WindowsTerminal.exe
!d::
Send, {Ctrl down}d{Ctrl up}
return

#IfWinActive, ahk_exe WindowsTerminal.exe
!f::
Send, {Ctrl down}f{Ctrl up}
return

#IfWinActive, ahk_exe WindowsTerminal.exe
!a::
Send, {Ctrl down}a{Ctrl up}
return

#IfWinActive, ahk_exe WindowsTerminal.exe
!u::
Send, {Ctrl down}u{Ctrl up}
return

#IfWinActive, ahk_exe WindowsTerminal.exe
!w::
Send, {Ctrl down}w{Ctrl up}
return

#IfWinActive, ahk_exe WindowsTerminal.exe
!e::
Send, {Ctrl down}e{Ctrl up}
return

#IfWinActive, ahk_exe WindowsTerminal.exe
!b::
Send, {Ctrl down}b{Ctrl up}
return

#IfWinActive, ahk_exe WindowsTerminal.exe
!p::
Send, {Ctrl down}p{Ctrl up}
return
