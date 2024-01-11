if (level_list) {
	ini_open("savedata.ini");
	level = ini_read_real("save", "level", 1);
	star = ini_read_real("level" + string(text), "star",0)
	tamat = ini_read_real("save", "tamat", 0);
	ini_close();
	if (string_digits(text) > level) {
		disabled = true
	}
}