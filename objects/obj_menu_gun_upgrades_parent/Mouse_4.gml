event_inherited();
if (room == room_credits) exit;

ini_open("saveData.ini");
if (on) {
	ini_write_real("Options", upgrade, false);
	on = false;
	sprite_index = spr_off;
} else {
	ini_write_real("Options", upgrade, true);
	on = true;
	sprite_index = spr_on;
}
ini_close();