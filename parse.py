def create_mapping(keymap):
	remap = open("remap.ahk", "w")

	write_str = ""
	keys = ["a", "b", "c", "d"]
	for key in keys:
		write_str += key + "::" + "\n"

	remap.write(write_str)
	remap.close()


def parse(json_file):
	layout = {}
	return layout


def main():
	physical = parse("/layout-json/physical.json")
	base = parse("/layout-json/base.json")
	shift = parse("/layout-json/shift.json")
	num = parse("/layout-json/num.json")

	keymap = {"physical": physical, "base": base, "shift": shift, "num": num}
