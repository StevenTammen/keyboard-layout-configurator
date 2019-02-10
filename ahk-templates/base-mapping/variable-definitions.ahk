#NoEnv
SendMode Input
#SingleInstance force

#Include <dual/dual>
#Include <layers/numLeader>
#Include <layers/numModifier>
#Include <layers/shiftLeader>
#Include <layers/shiftModifier>
#Include <layers/base>

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

; Make dual object
dual := new Dual

