﻿#Include Config
#Include Coordinates.ahk
#Include Settings.ahk

#MaxThreadsPerHotkey 2
F7::
IfWinActive, Path of Exile
Clipboard := ""
Sleep, 10
Send, {LShift Down}
Sleep, 10
outer:
	Loop 1000
    {
		inner:
		Loop 10
		{
			Send ^c
			Sleep, 20
			if(Clipboard!=oldclip)
			break inner
		}
		If RegExMatch(Clipboard, Regex_AltSpam)
		{
		break outer
		}
		Click, Left, 1
		Sleep, rand_AltSpam
		oldclip:=Clipboard
		if GetKeyState("F7", "P") 
        break outer
    }
Send, {LShift Up}
Sleep, 10
Return