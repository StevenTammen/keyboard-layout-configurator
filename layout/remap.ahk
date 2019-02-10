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

global numLeader := "VK89"
global shiftLeader := "VK8A"
global ctrlLeader := "VK8B"
global altLeader := "VK8C"
global winLeader := "VK8D"

global numLeaderDn := "VK89 Down"
global shiftLeaderDn := "VK8A Down"
global ctrlLeaderDn := "VK8B Down"
global altLeaderDn := "VK8C Down"
global winLeaderDn := "VK8D Down"

global numLeaderUp := "VK89 Up"
global shiftLeaderUp := "VK8A Up"
global ctrlLeaderUp := "VK8B Up"
global altLeaderUp := "VK8C Up"
global winLeaderUp := "VK8D Up"

global numModifier := false
global shiftModifier := false
global ctrlModifier := false
global altModifier := false
global winModifier := false

; Initalize objects -----------------------------------------

dual := new Dual


; Function -----------------------------------------

*Esc::
	if(Modifiers("Esc", "{Esc}", "{Esc}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		Esc_numLeader()
	}
	else if(numModifier)
	{
		Esc_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		Esc_shiftLeader()
	}
	else if(shiftModifier)
	{
		Esc_shiftModifier()
	}
	else
	{
		Esc_base()
	}
	return

*F1::
	if(Modifiers("F1", "{F1}", "{F1}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		F1_numLeader()
	}
	else if(numModifier)
	{
		F1_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		F1_shiftLeader()
	}
	else if(shiftModifier)
	{
		F1_shiftModifier()
	}
	else
	{
		F1_base()
	}
	return

*F2::
	if(Modifiers("F2", "{F2}", "{F2}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		F2_numLeader()
	}
	else if(numModifier)
	{
		F2_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		F2_shiftLeader()
	}
	else if(shiftModifier)
	{
		F2_shiftModifier()
	}
	else
	{
		F2_base()
	}
	return

*F3::
	if(Modifiers("F3", "{F3}", "{F3}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		F3_numLeader()
	}
	else if(numModifier)
	{
		F3_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		F3_shiftLeader()
	}
	else if(shiftModifier)
	{
		F3_shiftModifier()
	}
	else
	{
		F3_base()
	}
	return

*F4::
	if(Modifiers("F4", "{F4}", "{F4}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		F4_numLeader()
	}
	else if(numModifier)
	{
		F4_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		F4_shiftLeader()
	}
	else if(shiftModifier)
	{
		F4_shiftModifier()
	}
	else
	{
		F4_base()
	}
	return

*F5::
	if(Modifiers("F5", "{F5}", "{F5}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		F5_numLeader()
	}
	else if(numModifier)
	{
		F5_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		F5_shiftLeader()
	}
	else if(shiftModifier)
	{
		F5_shiftModifier()
	}
	else
	{
		F5_base()
	}
	return

*F6::
	if(Modifiers("F6", "{F6}", "{F6}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		F6_numLeader()
	}
	else if(numModifier)
	{
		F6_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		F6_shiftLeader()
	}
	else if(shiftModifier)
	{
		F6_shiftModifier()
	}
	else
	{
		F6_base()
	}
	return

*F7::
	if(Modifiers("F7", "{F7}", "{F7}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		F7_numLeader()
	}
	else if(numModifier)
	{
		F7_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		F7_shiftLeader()
	}
	else if(shiftModifier)
	{
		F7_shiftModifier()
	}
	else
	{
		F7_base()
	}
	return

*F8::
	if(Modifiers("F8", "{F8}", "{F8}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		F8_numLeader()
	}
	else if(numModifier)
	{
		F8_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		F8_shiftLeader()
	}
	else if(shiftModifier)
	{
		F8_shiftModifier()
	}
	else
	{
		F8_base()
	}
	return

*F9::
	if(Modifiers("F9", "{F9}", "{F9}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		F9_numLeader()
	}
	else if(numModifier)
	{
		F9_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		F9_shiftLeader()
	}
	else if(shiftModifier)
	{
		F9_shiftModifier()
	}
	else
	{
		F9_base()
	}
	return

*F10::
	if(Modifiers("F10", "{F10}", "{F10}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		F10_numLeader()
	}
	else if(numModifier)
	{
		F10_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		F10_shiftLeader()
	}
	else if(shiftModifier)
	{
		F10_shiftModifier()
	}
	else
	{
		F10_base()
	}
	return

*F11::
	if(Modifiers("F11", "{F11}", "{F11}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		F11_numLeader()
	}
	else if(numModifier)
	{
		F11_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		F11_shiftLeader()
	}
	else if(shiftModifier)
	{
		F11_shiftModifier()
	}
	else
	{
		F11_base()
	}
	return

*F12::
	if(Modifiers("F12", "{F12}", "{F12}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		F12_numLeader()
	}
	else if(numModifier)
	{
		F12_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		F12_shiftLeader()
	}
	else if(shiftModifier)
	{
		F12_shiftModifier()
	}
	else
	{
		F12_base()
	}
	return

*PrintScreen::
	if(Modifiers("PrintScreen", "{PrintScreen}", "{PrintScreen}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		PrintScreen_numLeader()
	}
	else if(numModifier)
	{
		PrintScreen_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		PrintScreen_shiftLeader()
	}
	else if(shiftModifier)
	{
		PrintScreen_shiftModifier()
	}
	else
	{
		PrintScreen_base()
	}
	return

*ScrollLock::
	if(Modifiers("ScrollLock", "{ScrollLock}", "{ScrollLock}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		ScrollLock_numLeader()
	}
	else if(numModifier)
	{
		ScrollLock_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		ScrollLock_shiftLeader()
	}
	else if(shiftModifier)
	{
		ScrollLock_shiftModifier()
	}
	else
	{
		ScrollLock_base()
	}
	return

*Pause::
	if(Modifiers("Pause", "{Pause}", "{Pause}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		Pause_numLeader()
	}
	else if(numModifier)
	{
		Pause_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		Pause_shiftLeader()
	}
	else if(shiftModifier)
	{
		Pause_shiftModifier()
	}
	else
	{
		Pause_base()
	}
	return




; Number -----------------------------------------

*`::
	if(Modifiers("backtick", "{`}", "{}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		backtick_numLeader()
	}
	else if(numModifier)
	{
		backtick_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		backtick_shiftLeader()
	}
	else if(shiftModifier)
	{
		backtick_shiftModifier()
	}
	else
	{
		backtick_base()
	}
	return

*1::
	if(Modifiers("one", "{1}", "{}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		one_numLeader()
	}
	else if(numModifier)
	{
		one_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		one_shiftLeader()
	}
	else if(shiftModifier)
	{
		one_shiftModifier()
	}
	else
	{
		one_base()
	}
	return

*2::
	if(Modifiers("two", "{2}", "{}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		two_numLeader()
	}
	else if(numModifier)
	{
		two_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		two_shiftLeader()
	}
	else if(shiftModifier)
	{
		two_shiftModifier()
	}
	else
	{
		two_base()
	}
	return

*3::
	if(Modifiers("three", "{3}", "{}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		three_numLeader()
	}
	else if(numModifier)
	{
		three_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		three_shiftLeader()
	}
	else if(shiftModifier)
	{
		three_shiftModifier()
	}
	else
	{
		three_base()
	}
	return

*4::
	if(Modifiers("four", "{4}", "{}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		four_numLeader()
	}
	else if(numModifier)
	{
		four_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		four_shiftLeader()
	}
	else if(shiftModifier)
	{
		four_shiftModifier()
	}
	else
	{
		four_base()
	}
	return

*5::
	if(Modifiers("five", "{5}", "{}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		five_numLeader()
	}
	else if(numModifier)
	{
		five_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		five_shiftLeader()
	}
	else if(shiftModifier)
	{
		five_shiftModifier()
	}
	else
	{
		five_base()
	}
	return

*6::
	if(Modifiers("six", "{6}", "{}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		six_numLeader()
	}
	else if(numModifier)
	{
		six_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		six_shiftLeader()
	}
	else if(shiftModifier)
	{
		six_shiftModifier()
	}
	else
	{
		six_base()
	}
	return

*7::
	if(Modifiers("seven", "{7}", "{}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		seven_numLeader()
	}
	else if(numModifier)
	{
		seven_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		seven_shiftLeader()
	}
	else if(shiftModifier)
	{
		seven_shiftModifier()
	}
	else
	{
		seven_base()
	}
	return

*8::
	if(Modifiers("eight", "{8}", "{}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		eight_numLeader()
	}
	else if(numModifier)
	{
		eight_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		eight_shiftLeader()
	}
	else if(shiftModifier)
	{
		eight_shiftModifier()
	}
	else
	{
		eight_base()
	}
	return

*9::
	if(Modifiers("nine", "{9}", "{}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		nine_numLeader()
	}
	else if(numModifier)
	{
		nine_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		nine_shiftLeader()
	}
	else if(shiftModifier)
	{
		nine_shiftModifier()
	}
	else
	{
		nine_base()
	}
	return

*0::
	if(Modifiers("zero", "{0}", "{}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		zero_numLeader()
	}
	else if(numModifier)
	{
		zero_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		zero_shiftLeader()
	}
	else if(shiftModifier)
	{
		zero_shiftModifier()
	}
	else
	{
		zero_base()
	}
	return

*-::
	if(Modifiers("hyphen", "{-}", "{}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		hyphen_numLeader()
	}
	else if(numModifier)
	{
		hyphen_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		hyphen_shiftLeader()
	}
	else if(shiftModifier)
	{
		hyphen_shiftModifier()
	}
	else
	{
		hyphen_base()
	}
	return

*=::
	if(Modifiers("equals", "{=}", "{}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		equals_numLeader()
	}
	else if(numModifier)
	{
		equals_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		equals_shiftLeader()
	}
	else if(shiftModifier)
	{
		equals_shiftModifier()
	}
	else
	{
		equals_base()
	}
	return

*Backspace::
	if(Modifiers("Backspace", "{Backspace}", "{Backspace}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		Backspace_numLeader()
	}
	else if(numModifier)
	{
		Backspace_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		Backspace_shiftLeader()
	}
	else if(shiftModifier)
	{
		Backspace_shiftModifier()
	}
	else
	{
		Backspace_base()
	}
	return

*Insert::
	if(Modifiers("Insert", "{Insert}", "{Insert}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		Insert_numLeader()
	}
	else if(numModifier)
	{
		Insert_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		Insert_shiftLeader()
	}
	else if(shiftModifier)
	{
		Insert_shiftModifier()
	}
	else
	{
		Insert_base()
	}
	return

*Home::
	if(Modifiers("Home", "{Home}", "{Home}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		Home_numLeader()
	}
	else if(numModifier)
	{
		Home_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		Home_shiftLeader()
	}
	else if(shiftModifier)
	{
		Home_shiftModifier()
	}
	else
	{
		Home_base()
	}
	return

*PgUp::
	if(Modifiers("PgUp", "{PgUp}", "{PgUp}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		PgUp_numLeader()
	}
	else if(numModifier)
	{
		PgUp_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		PgUp_shiftLeader()
	}
	else if(shiftModifier)
	{
		PgUp_shiftModifier()
	}
	else
	{
		PgUp_base()
	}
	return




; Top -----------------------------------------

*Tab::
	if(Modifiers("Tab", "{Tab}", "{Tab}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		Tab_numLeader()
	}
	else if(numModifier)
	{
		Tab_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		Tab_shiftLeader()
	}
	else if(shiftModifier)
	{
		Tab_shiftModifier()
	}
	else
	{
		Tab_base()
	}
	return

*q::
	if(Modifiers("q", "{q}", "{!}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		q_numLeader()
	}
	else if(numModifier)
	{
		q_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		q_shiftLeader()
	}
	else if(shiftModifier)
	{
		q_shiftModifier()
	}
	else
	{
		q_base()
	}
	return

*w::
	if(Modifiers("w", "{w}", "{@}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		w_numLeader()
	}
	else if(numModifier)
	{
		w_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		w_shiftLeader()
	}
	else if(shiftModifier)
	{
		w_shiftModifier()
	}
	else
	{
		w_base()
	}
	return

*e::
	if(Modifiers("e", "{e}", "{#}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		e_numLeader()
	}
	else if(numModifier)
	{
		e_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		e_shiftLeader()
	}
	else if(shiftModifier)
	{
		e_shiftModifier()
	}
	else
	{
		e_base()
	}
	return

*r::
	if(Modifiers("r", "{r}", "{$}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		r_numLeader()
	}
	else if(numModifier)
	{
		r_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		r_shiftLeader()
	}
	else if(shiftModifier)
	{
		r_shiftModifier()
	}
	else
	{
		r_base()
	}
	return

*t::
	if(Modifiers("t", "{t}", "{`%}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		t_numLeader()
	}
	else if(numModifier)
	{
		t_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		t_shiftLeader()
	}
	else if(shiftModifier)
	{
		t_shiftModifier()
	}
	else
	{
		t_base()
	}
	return

*y::
	if(Modifiers("y", "{y}", "{^}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		y_numLeader()
	}
	else if(numModifier)
	{
		y_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		y_shiftLeader()
	}
	else if(shiftModifier)
	{
		y_shiftModifier()
	}
	else
	{
		y_base()
	}
	return

*u::
	if(Modifiers("u", "{u}", "{&}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		u_numLeader()
	}
	else if(numModifier)
	{
		u_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		u_shiftLeader()
	}
	else if(shiftModifier)
	{
		u_shiftModifier()
	}
	else
	{
		u_base()
	}
	return

*i::
	if(Modifiers("i", "{i}", "{*}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		i_numLeader()
	}
	else if(numModifier)
	{
		i_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		i_shiftLeader()
	}
	else if(shiftModifier)
	{
		i_shiftModifier()
	}
	else
	{
		i_base()
	}
	return

*o::
	if(Modifiers("o", "{o}", "{(}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		o_numLeader()
	}
	else if(numModifier)
	{
		o_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		o_shiftLeader()
	}
	else if(shiftModifier)
	{
		o_shiftModifier()
	}
	else
	{
		o_base()
	}
	return

*p::
	if(Modifiers("p", "{p}", "{)}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		p_numLeader()
	}
	else if(numModifier)
	{
		p_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		p_shiftLeader()
	}
	else if(shiftModifier)
	{
		p_shiftModifier()
	}
	else
	{
		p_base()
	}
	return

*[::
	if(Modifiers("opening_bracket", "{[}", "{-}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		opening_bracket_numLeader()
	}
	else if(numModifier)
	{
		opening_bracket_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		opening_bracket_shiftLeader()
	}
	else if(shiftModifier)
	{
		opening_bracket_shiftModifier()
	}
	else
	{
		opening_bracket_base()
	}
	return

*]::
	if(Modifiers("closing_bracket", "{]}", "{=}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		closing_bracket_numLeader()
	}
	else if(numModifier)
	{
		closing_bracket_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		closing_bracket_shiftLeader()
	}
	else if(shiftModifier)
	{
		closing_bracket_shiftModifier()
	}
	else
	{
		closing_bracket_base()
	}
	return

*\::
	if(Modifiers("backslash", "{\}", "{}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		backslash_numLeader()
	}
	else if(numModifier)
	{
		backslash_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		backslash_shiftLeader()
	}
	else if(shiftModifier)
	{
		backslash_shiftModifier()
	}
	else
	{
		backslash_base()
	}
	return

*Delete::
	if(Modifiers("Delete", "{Delete}", "{Delete}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		Delete_numLeader()
	}
	else if(numModifier)
	{
		Delete_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		Delete_shiftLeader()
	}
	else if(shiftModifier)
	{
		Delete_shiftModifier()
	}
	else
	{
		Delete_base()
	}
	return

*End::
	if(Modifiers("End", "{End}", "{End}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		End_numLeader()
	}
	else if(numModifier)
	{
		End_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		End_shiftLeader()
	}
	else if(shiftModifier)
	{
		End_shiftModifier()
	}
	else
	{
		End_base()
	}
	return

*PgDn::
	if(Modifiers("PgDn", "{PgDn}", "{PgDn}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		PgDn_numLeader()
	}
	else if(numModifier)
	{
		PgDn_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		PgDn_shiftLeader()
	}
	else if(shiftModifier)
	{
		PgDn_shiftModifier()
	}
	else
	{
		PgDn_base()
	}
	return




; Home -----------------------------------------

*CapsLock::
	dual.combine([], numLeaderDn, settings = false, {(numLeader): numLeaderUp})
	numModifier := true
	return
*CapsLock Up::
	dual.combine([], numLeaderDn, settings = false, {(numLeader): numLeaderUp})
	numModifier := false
	return

*a::
	if(Modifiers("aa", "{a}", "{1}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		aa_numLeader()
	}
	else if(numModifier)
	{
		aa_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		aa_shiftLeader()
	}
	else if(shiftModifier)
	{
		aa_shiftModifier()
	}
	else
	{
		aa_base()
	}
	return

*s::
	if(Modifiers("s", "{s}", "{2}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		s_numLeader()
	}
	else if(numModifier)
	{
		s_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		s_shiftLeader()
	}
	else if(shiftModifier)
	{
		s_shiftModifier()
	}
	else
	{
		s_base()
	}
	return

*d::
	if(Modifiers("d", "{d}", "{3}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		d_numLeader()
	}
	else if(numModifier)
	{
		d_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		d_shiftLeader()
	}
	else if(shiftModifier)
	{
		d_shiftModifier()
	}
	else
	{
		d_base()
	}
	return

*f::
	if(Modifiers("f", "{f}", "{4}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		f_numLeader()
	}
	else if(numModifier)
	{
		f_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		f_shiftLeader()
	}
	else if(shiftModifier)
	{
		f_shiftModifier()
	}
	else
	{
		f_base()
	}
	return

*g::
	if(Modifiers("g", "{g}", "{5}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		g_numLeader()
	}
	else if(numModifier)
	{
		g_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		g_shiftLeader()
	}
	else if(shiftModifier)
	{
		g_shiftModifier()
	}
	else
	{
		g_base()
	}
	return

*h::
	if(Modifiers("h", "{h}", "{6}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		h_numLeader()
	}
	else if(numModifier)
	{
		h_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		h_shiftLeader()
	}
	else if(shiftModifier)
	{
		h_shiftModifier()
	}
	else
	{
		h_base()
	}
	return

*j::
	if(Modifiers("j", "{j}", "{7}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		j_numLeader()
	}
	else if(numModifier)
	{
		j_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		j_shiftLeader()
	}
	else if(shiftModifier)
	{
		j_shiftModifier()
	}
	else
	{
		j_base()
	}
	return

*k::
	if(Modifiers("k", "{k}", "{8}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		k_numLeader()
	}
	else if(numModifier)
	{
		k_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		k_shiftLeader()
	}
	else if(shiftModifier)
	{
		k_shiftModifier()
	}
	else
	{
		k_base()
	}
	return

*l::
	if(Modifiers("l", "{l}", "{9}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		l_numLeader()
	}
	else if(numModifier)
	{
		l_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		l_shiftLeader()
	}
	else if(shiftModifier)
	{
		l_shiftModifier()
	}
	else
	{
		l_base()
	}
	return

*`;::
	if(Modifiers("semicolon", "{`;}", "{0}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		semicolon_numLeader()
	}
	else if(numModifier)
	{
		semicolon_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		semicolon_shiftLeader()
	}
	else if(shiftModifier)
	{
		semicolon_shiftModifier()
	}
	else
	{
		semicolon_base()
	}
	return

*'::
	if(Modifiers("apostrophe", "{'}", "{`}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		apostrophe_numLeader()
	}
	else if(numModifier)
	{
		apostrophe_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		apostrophe_shiftLeader()
	}
	else if(shiftModifier)
	{
		apostrophe_shiftModifier()
	}
	else
	{
		apostrophe_base()
	}
	return

*Enter::
	if(Modifiers("Enter", "{Enter}", "{Enter}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		Enter_numLeader()
	}
	else if(numModifier)
	{
		Enter_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		Enter_shiftLeader()
	}
	else if(shiftModifier)
	{
		Enter_shiftModifier()
	}
	else
	{
		Enter_base()
	}
	return




; Bottom -----------------------------------------

*LShift::
	dual.combine([], shiftLeaderDn, settings = false, {(shiftLeader): shiftLeaderUp})
	shiftModifier := true
	return
*LShift Up::
	dual.combine([], shiftLeaderDn, settings = false, {(shiftLeader): shiftLeaderUp})
	shiftModifier := false
	return

*z::
	if(Modifiers("z", "{z}", "{}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		z_numLeader()
	}
	else if(numModifier)
	{
		z_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		z_shiftLeader()
	}
	else if(shiftModifier)
	{
		z_shiftModifier()
	}
	else
	{
		z_base()
	}
	return

*x::
	if(Modifiers("x", "{x}", "{}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		x_numLeader()
	}
	else if(numModifier)
	{
		x_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		x_shiftLeader()
	}
	else if(shiftModifier)
	{
		x_shiftModifier()
	}
	else
	{
		x_base()
	}
	return

*c::
	if(Modifiers("c", "{c}", "{}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		c_numLeader()
	}
	else if(numModifier)
	{
		c_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		c_shiftLeader()
	}
	else if(shiftModifier)
	{
		c_shiftModifier()
	}
	else
	{
		c_base()
	}
	return

*v::
	if(Modifiers("v", "{v}", "{}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		v_numLeader()
	}
	else if(numModifier)
	{
		v_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		v_shiftLeader()
	}
	else if(shiftModifier)
	{
		v_shiftModifier()
	}
	else
	{
		v_base()
	}
	return

*b::
	if(Modifiers("b", "{b}", "{}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		b_numLeader()
	}
	else if(numModifier)
	{
		b_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		b_shiftLeader()
	}
	else if(shiftModifier)
	{
		b_shiftModifier()
	}
	else
	{
		b_base()
	}
	return

*n::
	if(Modifiers("n", "{n}", "{}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		n_numLeader()
	}
	else if(numModifier)
	{
		n_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		n_shiftLeader()
	}
	else if(shiftModifier)
	{
		n_shiftModifier()
	}
	else
	{
		n_base()
	}
	return

*m::
	if(Modifiers("m", "{m}", "{}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		m_numLeader()
	}
	else if(numModifier)
	{
		m_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		m_shiftLeader()
	}
	else if(shiftModifier)
	{
		m_shiftModifier()
	}
	else
	{
		m_base()
	}
	return

*,::
	if(Modifiers("comma", "{,}", "{}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		comma_numLeader()
	}
	else if(numModifier)
	{
		comma_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		comma_shiftLeader()
	}
	else if(shiftModifier)
	{
		comma_shiftModifier()
	}
	else
	{
		comma_base()
	}
	return

*.::
	if(Modifiers("period", "{.}", "{}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		period_numLeader()
	}
	else if(numModifier)
	{
		period_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		period_shiftLeader()
	}
	else if(shiftModifier)
	{
		period_shiftModifier()
	}
	else
	{
		period_base()
	}
	return

*/::
	if(Modifiers("slash", "{/}", "{}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		slash_numLeader()
	}
	else if(numModifier)
	{
		slash_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		slash_shiftLeader()
	}
	else if(shiftModifier)
	{
		slash_shiftModifier()
	}
	else
	{
		slash_base()
	}
	return

*RShift::
	dual.combine([], shiftLeaderDn, settings = false, {(shiftLeader): shiftLeaderUp})
	shiftModifier := true
	return
*RShift Up::
	dual.combine([], shiftLeaderDn, settings = false, {(shiftLeader): shiftLeaderUp})
	shiftModifier := false
	return

*Up::
	if(Modifiers("Up", "{Up}", "{Up}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		Up_numLeader()
	}
	else if(numModifier)
	{
		Up_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		Up_shiftLeader()
	}
	else if(shiftModifier)
	{
		Up_shiftModifier()
	}
	else
	{
		Up_base()
	}
	return




; Modifier -----------------------------------------

*LCtrl::
	dual.combine([], ctrlLeaderDn, settings = false, {(ctrlLeader): ctrlLeaderUp})
	ctrlModifier := true
	return
*LCtrl Up::
	dual.combine([], ctrlLeaderDn, settings = false, {(ctrlLeader): ctrlLeaderUp})
	ctrlModifier := false
	return

*LWin::
	dual.combine([], winLeaderDn, settings = false, {(winLeader): winLeaderUp})
	winModifier := true
	return
*LWin Up::
	dual.combine([], winLeaderDn, settings = false, {(winLeader): winLeaderUp})
	winModifier := false
	return

*LAlt::
	dual.combine([], altLeaderDn, settings = false, {(altLeader): altLeaderUp})
	altModifier := true
	return
*LAlt Up::
	dual.combine([], altLeaderDn, settings = false, {(altLeader): altLeaderUp})
	altModifier := false
	return

*Space::
	if(Modifiers("Space", "{Space}", "{Space}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		Space_numLeader()
	}
	else if(numModifier)
	{
		Space_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		Space_shiftLeader()
	}
	else if(shiftModifier)
	{
		Space_shiftModifier()
	}
	else
	{
		Space_base()
	}
	return

*RAlt::
	dual.combine([], altLeaderDn, settings = false, {(altLeader): altLeaderUp})
	altModifier := true
	return
*RAlt Up::
	dual.combine([], altLeaderDn, settings = false, {(altLeader): altLeaderUp})
	altModifier := false
	return

*RWin::
	dual.combine([], winLeaderDn, settings = false, {(winLeader): winLeaderUp})
	winModifier := true
	return
*RWin Up::
	dual.combine([], winLeaderDn, settings = false, {(winLeader): winLeaderUp})
	winModifier := false
	return

*AppsKey::
	if(Modifiers("AppsKey", "{AppsKey}", "{AppsKey}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		AppsKey_numLeader()
	}
	else if(numModifier)
	{
		AppsKey_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		AppsKey_shiftLeader()
	}
	else if(shiftModifier)
	{
		AppsKey_shiftModifier()
	}
	else
	{
		AppsKey_base()
	}
	return

*RCtrl::
	dual.combine([], ctrlLeaderDn, settings = false, {(ctrlLeader): ctrlLeaderUp})
	ctrlModifier := true
	return
*RCtrl Up::
	dual.combine([], ctrlLeaderDn, settings = false, {(ctrlLeader): ctrlLeaderUp})
	ctrlModifier := false
	return

*Left::
	if(Modifiers("Left", "{Left}", "{Left}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		Left_numLeader()
	}
	else if(numModifier)
	{
		Left_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		Left_shiftLeader()
	}
	else if(shiftModifier)
	{
		Left_shiftModifier()
	}
	else
	{
		Left_base()
	}
	return

*Down::
	if(Modifiers("Down", "{Down}", "{Down}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		Down_numLeader()
	}
	else if(numModifier)
	{
		Down_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		Down_shiftLeader()
	}
	else if(shiftModifier)
	{
		Down_shiftModifier()
	}
	else
	{
		Down_base()
	}
	return

*Right::
	if(Modifiers("Right", "{Right}", "{Right}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		Right_numLeader()
	}
	else if(numModifier)
	{
		Right_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		Right_shiftLeader()
	}
	else if(shiftModifier)
	{
		Right_shiftModifier()
	}
	else
	{
		Right_base()
	}
	return




