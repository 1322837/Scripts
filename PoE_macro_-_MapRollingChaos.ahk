#Include Config
#Include Coordinates.ahk
#Include Settings.ahk


F7::  ;   Map Rolling Chaos
IfWinActive, Path of Exile
{
SetDefaultMouseSpeed, 0
SetMouseDelay, 0
Clipboard:=
MouseGetPos, base_X,base_Y
BlockInput On
SendInput {LShift down}
Loop
{
	MouseMove, A_ScreenWidth,A_ScreenHeight
	Sleep rand_MapRolling
    PixelSearch, Px, Py, Stash_coord_x1, Stash_coord_y2, Stash_coord_x2, Stash_coord_y1, 0x77b4e7, 2, Fast
    if (ErrorLevel) 
    {
        Break
    }	
    Sleep rand_MapRolling
    MouseMove, Px+4, Py-4
    Sleep rand_MapRolling
    Send ^c
    Sleep rand_MapRolling
    Oldclip:=Clipboard
    Sleep rand_MapRolling
    Click, Up
    Sleep rand_MapRolling
    Loop 500 
    {
		Send ^c
		Sleep, rand_MapRolling
		if(Clipboard!=Oldclip)
		break 
	}
}
Sleep 30
SendInput {LShift up}
MouseMove, base_X,base_Y
BlockInput Off
}
Return