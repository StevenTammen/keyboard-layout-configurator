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
	json_format = json.load(json_file)
	print(json.dumps(json_format, indent=4, sort_keys=True))
	json_format["//Esd"]
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
