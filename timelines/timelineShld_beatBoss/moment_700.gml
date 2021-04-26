ini_open("saveData.ini");
ini_write_real("Bosses Beat", "boss 4 beat", true);
ini_close();
if (!instance_exists(obj_fade_screen))
	instance_create_layer(0, 0, "UI", obj_fade_screen);
with (obj_fade_screen) {
	visible = true;
	alarm_set(0, 1);
}
global.just_won = true;