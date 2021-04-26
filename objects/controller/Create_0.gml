room_speed = 60;
global.tankpower = 10;
global.wall_grinding = false;
global.flameSpeedBoost = 0;
//heal = 0;
global.flameKills = 0;
global.flameWaveKills = 0;
small_explosion_count = 0;
//small_explosion_count_e = 0;
//enemiesInPlayerRadius = 0;
cursorIndex = 0;
cursorCount = 1;
global.midbossBeaten = false;
drawStats = true;
time = 0;
steps = 0;
seconds = 0;
minutes = 0;
kills = 0;

exitTextBox = noone;

if (room != room_menu && room != room_pause && room != room_start && room != room_tutorial) {
	ini_open("saveData.ini");
	if (ini_read_real("Bosses Beat", "boss 2 beat", false)) obj_tank_pilot.max_trigger += 100;
	if (ini_read_real("Bosses Beat", "boss 3 beat", false)) obj_tank_pilot.max_trigger += 100;
	if (ini_read_real("Bosses Beat", "boss 4 beat", false)) obj_tank_pilot.max_trigger += 100;
	if (ini_read_real("Bosses Beat", "boss 5 beat", false)) obj_tank_pilot.max_trigger += 100;
	ini_close();
	with (obj_tank_pilot) {
		if (max_trigger > 500) max_trigger = 500; 
		devil_trigger = max_trigger;
		charges = max_trigger / 100;
		devil_refill = (max_trigger / 100) * .375;
		global.max_trigger = max_trigger;
	}
}

if (room == room0 && global.level == 9 && global.checkpoint >= 5) {
	if (!instance_exists(obj_fade_screen_final))
		instance_create_layer(0, 0, "UI", obj_fade_screen_final);
	with (obj_fade_screen_final) alpha = 1;
	global.just_won = true;
}