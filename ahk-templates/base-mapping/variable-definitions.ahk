#NoEnv
SendMode Input
#SingleInstance force

; Import classes and functions -----------------------------------------

#Include <dual/dual>
#Include <modifiers>

#Include <layers/numLeader>
#Include <layers/numModifier>
#Include <layers/shiftLeader>
#Include <layers/shiftModifier>
#Include <layers/base>

#Include <layers/modifiers/Alt>
#Include <layers/modifiers/AltShift>
#Include <layers/modifiers/AltShiftWin>
#Include <layers/modifiers/AltWin>
#Include <layers/modifiers/Ctrl>
#Include <layers/modifiers/CtrlAlt>
#Include <layers/modifiers/CtrlAltShift>
#Include <layers/modifiers/CtrlAltShiftWin>
#Include <layers/modifiers/CtrlAltWin>
#Include <layers/modifiers/CtrlShift>
#Include <layers/modifiers/CtrlShiftWin>
#Include <layers/modifiers/CtrlWin>
#Include <layers/modifiers/ShiftWin>
#Include <layers/modifiers/Win>

; Create key aliases -----------------------------------------

global shiftLeader := "VK8A"
global ctrlLeader := "VK8B"
global altLeader := "VK8C"
global winLeader := "VK8D"

global shiftLeaderDn := "VK8A Down"
global ctrlLeaderDn := "VK8B Down"
global altLeaderDn := "VK8C Down"
global winLeaderDn := "VK8D Down"

global shiftLeaderUp := "VK8A Up"
global ctrlLeaderUp := "VK8B Up"
global altLeaderUp := "VK8C Up"
global winLeaderUp := "VK8D Up"

global shiftModifier := false
global ctrlModifier := false
global altModifier := false
global winModifier := false

; Initalize objects -----------------------------------------

dual := new Dual


