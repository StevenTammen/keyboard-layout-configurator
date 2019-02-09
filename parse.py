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
	json_format = json.load(json_file)
	print(json.dumps(json_format, indent=4, sort_keys=True))
	json_format["//Esd"]
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