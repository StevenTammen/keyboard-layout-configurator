import json
from mako.template import Template


def create_mapping(keymap):
	"""
		Creates a remapping script based on the JSON layouts parsed into a keymap object
	"""

	remap = open("layout/remap.ahk", "w")

	variable_definitions_template = Template(filename='ahk-templates/base-mapping/variable-definitions.ahk')
	variable_definitions = variable_definitions_template.render()
	remap.write(variable_definitions)

	row_names = ["Function", "Number", "Top", "Home", "Bottom"]
	basic_key_template = Template(filename='ahk-templates/base-mapping/basic-key.ahk')
	modifier_key_template = Template(filename='ahk-templates/base-mapping/modifier-key.ahk')

	for row_name in row_names:

		remap.write("; " + row_name + " -----------------------------------------\n\n")
		row = keymap[row_name]

		for position in row:

			key = clean(position['key'])
			base_key = position['base']

			if is_modifier(key):
				# Remove left/right designation and make lowercase to
				# use modifier as a prefix
				prefix = (key[1:]).lower()
				modifier_key_vars = {
					'modifier': key,
					'prefix'  : prefix
				}
				modifier_key = modifier_key_template.render(**modifier_key_vars)
				remap.write(modifier_key)

			else:
				basic_key_vars = {
					'key': key
				}
				basic_key = basic_key_template.render(**basic_key_vars)
				remap.write(basic_key)

		remap.write("\n\n\n")

	remap.close()


def clean(key):
	if key == "`":
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
	modifiers = ["LShift", "LCtrl", "LAlt", "LWin", "RShift", "RCtrl", "RAlt", "RWin"]
	return (key in modifiers)


def create_keymap(physical_file, shift_file, num_file):
	"""

	:param physical_file:
	:return:
	"""

	keymap = {"Function": [], "Number": [], "Top": [], "Home": [],
			  "Bottom"  : []}  # The dictionary containing the kay mappings for the hotkeys

	physical_data = json.load(physical_file)  # Parse the .json file into a Python JSON object
	shift_data = json.load(shift_file)
	num_data = json.load(num_file)
	physical_data = sanitize_json(physical_data)
	shift_data = sanitize_json(shift_data)
	num_data = sanitize_json(num_data)

	# Iterate through the json object and create appropriate mappings
	for i in range(0, len(physical_data)):

		for j in range(0, len(physical_data[i])):

			if (isinstance(physical_data[i][j], str)):
				if (i == 0):
					function_row = keymap["Function"]
					sub_dict = {'key' : physical_data[i][j], 'shift': shift_data[i][j], 'num': num_data[i][j],
								'base': ' '}
					function_row.append(sub_dict)
				elif (i == 1):
					num_row = keymap["Number"]
					sub_dict = {'key' : physical_data[i][j], 'shift': shift_data[i][j], 'num': num_data[i][j],
								'base': ' '}
					num_row.append(sub_dict)
				elif (i == 2):
					top_row = keymap["Top"]
					sub_dict = {'key' : physical_data[i][j], 'shift': shift_data[i][j], 'num': num_data[i][j],
								'base': ' '}
					top_row.append(sub_dict)

				elif (i == 3):
					home_row = keymap["Home"]
					sub_dict = {'key' : physical_data[i][j], 'shift': shift_data[i][j], 'num': num_data[i][j],
								'base': ' '}
					home_row.append(sub_dict)

				elif (i == 4):
					bot_row = keymap["Bottom"]
					sub_dict = {'key' : physical_data[i][j], 'shift': shift_data[i][j], 'num': num_data[i][j],
								'base': ' '}
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
	keymap = create_keymap(open("layout-json/physical.json"), open("layout-json/shift.json"),
						   open("layout-json/num.json"))
	create_mapping(keymap)


# base = parse("layout-json/base.json")
# shift = parse("layout-json/shift.json")
# num = parse("layout-json/num.json")

# keymap = {"physical": physical, "base": base, "shift": shift, "num": num}


if __name__ == '__main__':
	main()
