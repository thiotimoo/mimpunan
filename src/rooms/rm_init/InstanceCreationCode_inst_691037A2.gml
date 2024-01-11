
ini_open("savedata.ini");
num = ini_read_real("save", "vol_sfx", 1) * 100;
global.vol_sfx = num/100;
ini_close();

text = "SFX: " + string(num)+"%"
action = function () {
	num += 10
	if (num > 100) num = 0;
	text = "SFX: " + string(num)+"%"
	ini_open("savedata.ini");
	ini_write_real("save", "vol_sfx", num/100 );
	global.vol_sfx = num/100;
	ini_close();
}