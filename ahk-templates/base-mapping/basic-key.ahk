${key}::
	if(GetKeyState(numLeader))
	{
		${key}_numLeader()
	}
	else if(numModifier)
	{
		${key}_numModifier()
	}
	else if(GetKeyState(shiftLeader))
	{
		${key}_shiftLeader()
	}
	else if(shiftModifier)
	{
		${key}_shiftModifier()
	}
	else
	{
		${key}_base()
	}

