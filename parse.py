import json
from mako.template import Template


def create_mapping(keymap):
	remap = open("layout/remap.ahk", "w")
	keymap = [{"key": "a", "base": "x", "shift": "X", "num": "5"}, {"key": "s", "base": "z", "shift": "Z", "num": "6"}]

	basic_key_template = Template(filename='base-mapping/basic-key.ahk')
	for position in keymap:
		key_values = {
			'key'  : position['key'],
			'base' : position['base'],
			'shift': position['shift'],
			'num'  : position['num']
		}  # key_values
		basic_key = basic_key_template.render(**key_values)
		remap.write(basic_key)

	remap.close()


def parse(json_file):

	"""

	:param json_file:
	:return:
	"""


	keymap = {"Function": [], "Number" : [] , "Top" : []} #The dictionary containing the kay mappings for the hotkeys

	json_data = json.load(json_file) #Parse the .json file into a Python JSON object

	#Iterate through the json object and create appropriate mappings
	for i in range(0, len(json_data)):

		for j in range(0, len(json_data[i])):

			if(isinstance(json_data[i][j], str)):
				if(i == 0):
					function_row = keymap["Function"]
					sub_dict = {'key':json_data[i][j], 'shift':' ', 'num':' ', 'base':' '}
					function_row.append(sub_dict)
				elif(i == 1):
					num_row = keymap["Number"]
					sub_dict = {'key': json_data[i][j], 'shift': ' ', 'num': ' ', 'base':' '}
					num_row.append(sub_dict)
				elif(i==2):
					top_row = keymap["Top"]
					sub_dict = {'key': json_data[i][j], 'shift': ' ', 'num': ' ', 'base':' '}
					top_row.append(sub_dict)


	pretty(keymap)
	return keymap

def pretty(d, indent=0):
	for key, value in d.items():
		print('\t' * indent + str(key))
		if isinstance(value, dict):
			pretty(value, indent + 1)
		else:
			print('\t' * (indent + 1) + str(value))




	layout = {}
	return layout


def main():
	physical = parse(open("layout-json/physical.json"))


# base = parse("layout-json/base.json")
# shift = parse("layout-json/shift.json")
# num = parse("layout-json/num.json")

# keymap = {"physical": physical, "base": base, "shift": shift, "num": num}


if __name__ == '__main__':
	main()
