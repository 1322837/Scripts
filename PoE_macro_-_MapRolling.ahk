﻿#Include Config
#Include Coordinates.ahk
#Include Settings.ahk


#MaxThreadsPerHotkey 1
~*F7::   ;   Map Rolling
IfWinActive, Path of Exile
SetDefaultMouseSpeed, 0
SetMouseDelay, 0
buf_x:= 0
buf_x2:= 0
buf_x3:=0
buf_y:= 0
buf_y2:= 0
buf_y3:=0
x_coord:= 0
x_coord2:= 0
x_coord3:=0
y_coord:= 0
y_coord2:= 0
y_coord3:=0
base_X:= 0
base_Y:= 0
{
SendEvent {LControl down}
Loop
{
    PixelSearch, Px, Py, Stash_coord_x1, Stash_coord_y2, Stash_coord_x2, Stash_coord_y1, 0x77b4e7, 2, Fast
        if (ErrorLevel) {
            Break
        }
    Sleep rand_MapRolling
    MouseMove, Px+4, Py-4
    Sleep rand_MapRolling
    Click, Up
    Sleep rand_MapRolling
}
Send, {Left}
MouseMove, Scour_x, Scour_y
Sleep, 50
Click, right
Sleep, 150
Sleep, 50
SendEvent {LShift down}
Loop
{   
    Clipboard:=
    x_coord:= Inv_x + buf_x * Inv_space
    y_coord:= Inv_y + buf_y * Inv_space
    Sleep rand_MapRolling
    MouseMove x_coord, y_coord
    Sleep rand_MapRolling
    Send c
    Sleep rand_MapRolling
    Click, left
    Sleep rand_MapRolling
        if clipboard = 
        break
    Sleep rand_MapRolling
    buf_y:=buf_y+1
    if (buf_y = 5) {
        buf_x:=buf_x+1
        buf_y:=0
        if (buf_x = 12)
        break
        }
}
SendEvent {LShift up}
MouseMove, Alch_x, Alch_y
Sleep, 50
Click, right
Sleep, 150
Send, {Right}
Sleep, 50
SendEvent {LShift down}
Loop
{
    Clipboard:=
    x_coord2:= Inv_x + buf_x2 * Inv_space
    y_coord2:= Inv_y + buf_y2 * Inv_space
    Sleep rand_MapRolling
    MouseMove x_coord2, y_coord2
    Sleep rand_MapRolling
    Send c
    Sleep rand_MapRolling
    Click, left
    Sleep rand_MapRolling
        if clipboard = 
        break
    Sleep rand_MapRolling
    buf_y2:=buf_y2+1
    if (buf_y2 = 5) {
        buf_x2:=buf_x2+1
        buf_y2:=0
        if (buf_x2 = 12)
        break
        }
}
SendEvent {LShift up}
Sleep, 150
SendEvent {LShift down}
Loop
{
    Clipboard:=
    x_coord3:= Inv_x + buf_x3 * Inv_space
    y_coord3:= Inv_y + buf_y3 * Inv_space
    Sleep rand_MapRolling
    MouseMove x_coord3, y_coord3
    Sleep rand_MapRolling
    Send c
    Sleep rand_MapRolling
    Click, left
    Sleep rand_MapRolling
        if clipboard = 
        break
    Sleep rand_MapRolling
    buf_y3:=buf_y3+1
    if (buf_y3 = 5) {
        buf_x3:=buf_x3+1
        buf_y3:=0
        if (buf_x3 = 12)
        break
        }
}
SendEvent {LShift up}
SendEvent {LControl up}
}
Return