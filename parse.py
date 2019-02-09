import json

def create_mapping(keymap):
	remap = open("remap.ahk", "w")

	write_str = ""
	keys = ["a", "b", "c", "d"]
	for key in keys:
		write_str += key + "::" + "\n"

	remap.write(write_str)
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
	#base = parse("/layout-json/base.json")
	#shift = parse("/layout-json/shift.json")
	#num = parse("/layout-json/num.json")

	#keymap = {"physical": physical, "base": base, "shift": shift, "num": num}


if __name__ == '__main__':
    main()