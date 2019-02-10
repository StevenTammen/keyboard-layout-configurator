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

; Function -----------------------------------------

*Esc::
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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

*;::
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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

LShift::
	dual.combine([], shiftLeaderDn, settings = false, {(shiftLeader): shiftLeaderUp})
	shiftModifier := true
	return
LShift Up::
	dual.combine([], shiftLeaderDn, settings = false, {(shiftLeader): shiftLeaderUp})
	shiftModifier := false
	return

*z::
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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
	if(GetKeyState(numLeader))
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

RShift::
	dual.combine([], shiftLeaderDn, settings = false, {(shiftLeader): shiftLeaderUp})
	shiftModifier := true
	return
RShift Up::
	dual.combine([], shiftLeaderDn, settings = false, {(shiftLeader): shiftLeaderUp})
	shiftModifier := false
	return

*Up::
	if(GetKeyState(numLeader))
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




