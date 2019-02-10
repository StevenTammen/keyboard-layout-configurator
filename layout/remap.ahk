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




; Home -----------------------------------------

*CapsLock::
	if(Modifiers("CapsLock", "{CapsLock}", "{CapsLock}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		CapsLock_numLeader()
	}
	else if(numModifier)
	{
		CapsLock_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		CapsLock_shiftLeader()
	}
	else if(shiftModifier)
	{
		CapsLock_shiftModifier()
	}
	else
	{
		CapsLock_base()
	}

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




