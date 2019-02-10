*${key}::
	if(Modifiers("${cleaned_key}", "{${key}}", "{${num_key}}"))
	{
		return
	}
	else if(GetKeyState(numLeader))
	{
		${cleaned_key}_numLeader()
	}
	else if(numModifier)
	{
		${cleaned_key}_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		${cleaned_key}_shiftLeader()
	}
	else if(shiftModifier)
	{
		${cleaned_key}_shiftModifier()
	}
	else
	{
		${cleaned_key}_base()
	}

