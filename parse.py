import json
from mako.template import Template


def create_mapping(keymap):
	"""
		Creates a remapping script based on the JSON layouts parsed into a keymap object
	"""

	remap = open("layout/remap.ahk", "w")

	num_leader = open("layout/Lib/layers/numLeader.ahk", "w")
	num_modifier = open("layout/Lib/layers/numModifier.ahk", "w")
	shift_leader = open("layout/Lib/layers/shiftLeader.ahk", "w")
	shift_modifier = open("layout/Lib/layers/shiftModifier.ahk", "w")
	base = open("layout/Lib/layers/base.ahk", "w")

	alt = open("layout/Lib/layers/modifiers/Alt.ahk", "w")
	alt_shift = open("layout/Lib/layers/modifiers/AltShift.ahk", "w")
	alt_shift_win = open("layout/Lib/layers/modifiers/AltShiftWin.ahk", "w")
	alt_win = open("layout/Lib/layers/modifiers/AltWin.ahk", "w")

	ctrl = open("layout/Lib/layers/modifiers/Ctrl.ahk", "w")
	ctrl_alt = open("layout/Lib/layers/modifiers/CtrlAlt.ahk", "w")
	ctrl_alt_shift = open("layout/Lib/layers/modifiers/CtrlAltShift.ahk", "w")
	ctrl_alt_shift_win = open("layout/Lib/layers/modifiers/CtrlAltShiftWin.ahk", "w")
	ctrl_alt_win = open("layout/Lib/layers/modifiers/CtrlAltWin.ahk", "w")
	ctrl_shift = open("layout/Lib/layers/modifiers/CtrlShift.ahk", "w")
	ctrl_shift_win = open("layout/Lib/layers/modifiers/CtrlShiftWin.ahk", "w")
	ctrl_win = open("layout/Lib/layers/modifiers/CtrlWin.ahk", "w")

	shift_win = open("layout/Lib/layers/modifiers/ShiftWin.ahk", "w")
	win = open("layout/Lib/layers/modifiers/Win.ahk", "w")

	files = \
		[
			remap,
			num_leader, num_modifier, shift_leader, shift_modifier, base,
			alt, alt_shift, alt_shift_win, alt_win,
			ctrl, ctrl_alt, ctrl_alt_shift, ctrl_alt_shift_win,
			ctrl_alt_win, ctrl_shift, ctrl_shift_win, ctrl_win,
			shift_win, win
		]

	modifier_files = \
		{
			"Alt": alt,
			"AltShift": alt_shift,
			"AltShiftWin": alt_shift_win,
			"AltWin": alt_win,
			"Ctrl": ctrl,
			"CtrlAlt": ctrl_alt,
			"CtrlAltShift": ctrl_alt_shift,
			"CtrlAltShiftWin": ctrl_alt_shift_win,
			"CtrlAltWin": ctrl_alt_win,
			"CtrlShift": ctrl_shift,
			"CtrlShiftWin": ctrl_shift_win,
			"CtrlWin": ctrl_win,
			"ShiftWin": shift_win,
			"Win": win
	}

	add_script_setup(remap)

	row_names = ["Function", "Number", "Top", "Home", "Bottom", "Modifier"]
	for row_name in row_names:
		add_row_labels(files, row_name)
		row = keymap[row_name]
		for position in row:

			key = escape_for_autohotkey(position['key'])
			cleaned_key = to_text(position['key'])
			num_key = escape_for_autohotkey(position['num'])
			shift_key = escape_for_autohotkey(position['shift'])
			base_key = escape_for_autohotkey(position['base'])

			add_to_remap(remap, key, cleaned_key, num_key)
			add_to_num(num_leader, num_modifier, cleaned_key, num_key)
			add_to_shift(shift_leader, shift_modifier, cleaned_key, shift_key)
			add_to_base(base, cleaned_key, base_key)
			add_to_modifiers(modifier_files, cleaned_key)

		add_space_between_rows(files)

	close_files(files)


def add_script_setup(remap):
	variable_definitions_template = Template(filename='ahk-templates/base-mapping/variable-definitions.ahk')
	variable_definitions = variable_definitions_template.render()
	remap.write(variable_definitions)


def add_row_labels(files, row_name):
	for file in files:
		file.write("; " + row_name + " -----------------------------------------\n\n")


def add_space_between_rows(files):
	for file in files:
		file.write("\n\n\n")


def close_files(files):
	for file in files:
		file.close()


def add_to_remap(remap, key, cleaned_key, num_key):
	"""
	Adds a key to the remapping script

	:param remap:
	:param key:
	:param cleaned_key:
	:return:
	"""

	basic_key_template = Template(filename='ahk-templates/base-mapping/basic-key.ahk')
	modifier_key_template = Template(filename='ahk-templates/base-mapping/modifier-key.ahk')

	if is_modifier(key):
		# Remove left/right designation and make lowercase to
		# use modifier as a prefix
		if(key == "CapsLock"):
			prefix = "num"
		else:
			prefix = (key[1:]).lower()
		modifier_key_vars = {
			'modifier': key,
			'prefix'  : prefix
		}
		modifier_key = modifier_key_template.render(**modifier_key_vars)
		remap.write(modifier_key)

	else:
		basic_key_vars = {
			'key': key,
			'cleaned_key': cleaned_key,
			'num_key': num_key
		}
		basic_key = basic_key_template.render(**basic_key_vars)
		remap.write(basic_key)


def add_to_num(num_leader, num_modifier, cleaned_key, num_key):
	"""
	Adds functions to the numLeader and numModifier scripts to implement
	number layer functionality.

	:param num_leader:
	:param num_modifier:
	:param cleaned_key:
	:param num_key:
	:return:
	"""

	# num_leader layer
	num_leader_key_template = Template(filename='ahk-templates/layers/numLeader.ahk')
	num_leader_key_vars = {
		'cleaned_key': cleaned_key,
		'num_key': num_key
	}
	num_leader_key = num_leader_key_template.render(**num_leader_key_vars)
	num_leader.write(num_leader_key)

	# num_modifier layer
	num_modifier_key_template = Template(filename='ahk-templates/layers/numModifier.ahk')
	num_modifier_key_vars = {
		'cleaned_key': cleaned_key,
		'num_key': num_key
	}
	num_modifier_key = num_modifier_key_template.render(**num_modifier_key_vars)
	num_modifier.write(num_modifier_key)


def add_to_shift(shift_leader, shift_modifier, cleaned_key, shift_key):
	"""
	Adds functions to the shiftLeader and shiftModifier scripts to implement
	shift layer functionality.

	:param shift_leader:
	:param shift_modifier:
	:param cleaned_key:
	:param shift_key:
	:return:
	"""

	# shift_leader layer
	shift_leader_key_template = Template(filename='ahk-templates/layers/shiftLeader.ahk')
	shift_leader_key_vars = {
		'cleaned_key': cleaned_key,
		'shift_key': shift_key
	}
	shift_leader_key = shift_leader_key_template.render(**shift_leader_key_vars)
	shift_leader.write(shift_leader_key)

	# shift_modifier layer
	shift_modifier_key_template = Template(filename='ahk-templates/layers/shiftModifier.ahk')
	shift_modifier_key_vars = {
		'cleaned_key': cleaned_key,
		'shift_key': shift_key
	}
	shift_modifier_key = shift_modifier_key_template.render(**shift_modifier_key_vars)
	shift_modifier.write(shift_modifier_key)


def add_to_base(base, cleaned_key, base_key):
	"""
	Adds functions to the base layer script to implement
	base layer functionality.

	:param base:
	:param cleaned_key:
	:param base_key:
	:return:
	"""
	base_key_template = Template(filename='ahk-templates/layers/base.ahk')
	base_key_vars = {
		'cleaned_key': cleaned_key,
		'base_key': base_key
	}
	base_key = base_key_template.render(**base_key_vars)
	base.write(base_key)


def add_to_modifiers(modifier_files, cleaned_key):
	for modifier_combo in modifier_files:
		file = 'ahk-templates/layers/modifiers/' + modifier_combo + '.ahk'
		modifier_key_template = Template(filename=file)
		modifier_key_vars = {
			'cleaned_key': cleaned_key
		}
		modifier_key = modifier_key_template.render(**modifier_key_vars)
		modifier_files[modifier_combo].write(modifier_key)


def escape_for_autohotkey(key):
	"""
	Uses ` to escape the input key, as necessary, for use in AutoHotkey.
	Keys that need to be escaped can be found at the following link:

	https://autohotkey.com/docs/commands/_EscapeChar.htm

	:param key:
	:return:
	"""
	if key == "%":
		return "`%"
	elif key == ";":
		return "`;"
	else:
		return key


def to_text(key):
	"""
	Cleans up the input key to allow it to be used as a function prefix.

	:param key:
	:return:
	"""

	# AutoHotkey has reserved variables beginning with a_, such as A_PriorHotkey.
	# To prevent any possible conflicts, we'll just use "aa" as a prefix for the a key.
	if key == "a":
		return "aa"

	# To allow for smooth calling of functions, we need to clean up number and symbol
	# keys, to turn them into text representations. This is to prevent calling a
	# function like @_doStuff().
	elif key == "`":
		return "backtick"
	elif key == "1":
		return "one"
	elif key == "2":
		return "two"
	elif key == "3":
		return "three"
	elif key == "4":
		return "four"
	elif key == "5":
		return "five"
	elif key == "6":
		return "six"
	elif key == "7":
		return "seven"
	elif key == "8":
		return "eight"
	elif key == "9":
		return "nine"
	elif key == "0":
		return "zero"
	elif key == "-":
		return "hyphen"
	elif key == "=":
		return "equals"
	elif key == "~":
		return "tilde"
	elif key == "!":
		return "exclamation_point"
	elif key == "@":
		return "at_symbol"
	elif key == "#":
		return "pound_sign"
	elif key == "%":
		return "percent_sign"
	elif key == "^":
		return "caret"
	elif key == "&":
		return 'ampersand'
	elif key == "*":
		return "asterisk"
	elif key == "(":
		return "opening_parenthesis"
	elif key == ")":
		return "closing_parenthesis"
	elif key == "+":
		return "plus"
	elif key == "\\":
		return "backslash"
	elif key == "[":
		return "opening_bracket"
	elif key == "]":
		return "closing_bracket"
	elif key == "{":
		return "opening_curly_brace"
	elif key == "}":
		return "closing_curly_brace"
	elif key == "|":
		return "pipe"
	elif key == ";":
		return "semicolon"
	elif key == "'":
		return "apostrophe"
	elif key == ":":
		return "colon"
	elif key == "\"":
		return "quotes"
	elif key == ",":
		return "comma"
	elif key == ".":
		return "period"
	elif key == "/":
		return "slash"
	elif key == "<":
		return "less_than"
	elif key == ">":
		return "greater_than"
	elif key == "?":
		return "question_mark"
	else:
		return key

def is_modifier(key):
	modifiers = ["CapsLock", "LShift", "LCtrl", "LAlt", "LWin", "RShift", "RCtrl", "RAlt", "RWin"]
	return (key in modifiers)


def create_keymap(physical_file, num_file, shift_file, base_file):
	"""

	:param physical_file:
	:return:
	"""

	keymap = {"Function": [], "Number": [], "Top": [], "Home": [],
			  "Bottom": [], "Modifier": []}  # The dictionary containing the kay mappings for the hotkeys

	physical_data = json.load(physical_file)  # Parse the .json file into a Python JSON object
	num_data = json.load(num_file)
	shift_data = json.load(shift_file)
	base_data = json.load(base_file)

	physical_data = sanitize_json(physical_data)
	num_data = sanitize_json(num_data)
	shift_data = sanitize_json(shift_data)
	base_data = sanitize_json(base_data)

	# Iterate through the json object and create appropriate mappings
	for i in range(0, len(physical_data)):

		for j in range(0, len(physical_data[i])):

			if (isinstance(physical_data[i][j], str)):
				if (i == 0):
					function_row = keymap["Function"]
					sub_dict = {'key' : physical_data[i][j], 'shift': shift_data[i][j], 'num': num_data[i][j],
								'base': base_data[i][j]}
					function_row.append(sub_dict)
				elif (i == 1):
					num_row = keymap["Number"]
					sub_dict = {'key' : physical_data[i][j], 'shift': shift_data[i][j], 'num': num_data[i][j],
								'base': base_data[i][j]}
					num_row.append(sub_dict)
				elif (i == 2):
					top_row = keymap["Top"]
					sub_dict = {'key' : physical_data[i][j], 'shift': shift_data[i][j], 'num': num_data[i][j],
								'base': base_data[i][j]}
					top_row.append(sub_dict)

				elif (i == 3):
					home_row = keymap["Home"]
					sub_dict = {'key' : physical_data[i][j], 'shift': shift_data[i][j], 'num': num_data[i][j],
								'base': base_data[i][j]}
					home_row.append(sub_dict)

				elif (i == 4):
					bot_row = keymap["Bottom"]
					sub_dict = {'key' : physical_data[i][j], 'shift': shift_data[i][j], 'num': num_data[i][j],
								'base': base_data[i][j]}
					bot_row.append(sub_dict)

				elif (i == 5):
					bot_row = keymap["Modifier"]
					sub_dict = {'key' : physical_data[i][j], 'shift': shift_data[i][j], 'num': num_data[i][j],
								'base': base_data[i][j]}
					bot_row.append(sub_dict)

	# pretty(keymap)

	with open('data.json', 'w') as outfile:
		json.dump(keymap, outfile, indent=4)
	return keymap


def pretty(d, indent=0):
	for key, value in d.items():
		print('\t' * indent + str(key))
		if isinstance(value, dict):
			pretty(value, indent + 1)
		else:
			print('\t' * (indent + 1) + str(value))


def sanitize_json(json_data):
	for i in range(0, len(json_data)):
		newlist = []
		for j in range(0, len(json_data[i])):
			if (isinstance(json_data[i][j], str)):
				newlist.append(json_data[i][j])
		json_data[i] = newlist
	return json_data


def main():
	keymap = create_keymap(open("layout-json/physical.json"), open("layout-json/num.json"),
					open("layout-json/shift.json"), open("layout-json/base.json"))
	create_mapping(keymap)


# base = parse("layout-json/base.json")
# shift = parse("layout-json/shift.json")
# num = parse("layout-json/num.json")

# keymap = {"physical": physical, "base": base, "shift": shift, "num": num}


if __name__ == '__main__':
	main()
