${modifier}::
	dual.combine([], ${prefix}LeaderDn, settings = false, {(${prefix}Leader): ${prefix}LeaderUp})
	${prefix}Modifier := true
	return
${modifier} Up::
	dual.combine([], ${prefix}LeaderDn, settings = false, {(${prefix}Leader): ${prefix}LeaderUp})
	${prefix}Modifier := false
	return

