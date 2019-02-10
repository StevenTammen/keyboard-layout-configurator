Modifiers(position, regKey, numKey)
{
	
	; Always arrange modifiers in the order of Ctrl > Alt > Shift > Win
	; Will allow for a dynamic function call below
	
	mods := ""
	
	if(GetKeyState(ctrlLeader))
	{
		mods := mods . "Ctrl"
		SendInput {%ctrlLeaderUp%}
	}
	else if(ctrlModifier)
	{
		mods := mods . "Ctrl"
	}
	
	if(GetKeyState(altLeader))
	{
		mods := mods . "Alt"
		SendInput {%altLeaderUp%}
	}
	else if(altModifier)
	{
		mods := mods . "Alt"
	}
	
	sendLeaderUp := false
	if(GetKeyState(shiftLeader))
	{
		mods := mods . "Shift"
		sendLeaderUp := true
	}
	else if(shiftModifier)
	{
		mods := mods . "Shift"
	}
	
	if(GetKeyState(winLeader))
	{
		mods := mods . "Win"
		SendInput {%winLeaderUp%}
	}
	else if(winModifier)
	{
		mods := mods . "Win"
	}
	
	; This function should not do things if shift is the only modifier. Only when shift is combined
	; with other modifiers, or when other modifiers are used without shift.
	if(mods = "Shift")
	{
		return false
	}
	else if(mods = "")
	{
		return false
	}
	else
	{
	
		if(GetKeyState(numLeader))
		{
			key := numKey
			SendInput {%numLeaderUp%}		
		}
		else if(numModifier)
		{
			key := numKey	
		}
		else
		{
			key := regKey
		}
		
		if(sendLeaderUp)
		{
			SendInput {%shiftLeaderUp%}
		}
		
		; Dynamic function call. Pretty neat!
		%position%_%mods%(key)
		return true
	}
}