ini_open("saveData.ini");
global.kills = ini_read_real("temp", "kills", 0);
global.time = ini_read_real("temp", "time", 0);
/*steps = global.time;
seconds = 0;
minutes = 0;*/
global.damageTaken = ini_read_real("temp", "damage", 0);
global.deaths = ini_read_real("temp", "deaths", 0);
ini_close();

if (room != room_pause) {
	part_system_automatic_update(global.P_System, true);
	
	if (!global.everPaused && !global.unpausing) {
		var help = instance_create_layer(0, 0, "UI", obj_help_text);
		with (help) {
			text1 = "Press spacebar to pause at any time";
			text2 = "";
			help_text();
		}
	}
}
if (room == room_menu) {
	global.kills = 0;
	global.time = 0;
	global.damageTaken = 0;
	global.deaths = 0;
	
	global.waveEndCombo = 0;
	global.flameWaveKills = 0;
}
part_system_depth(global.P_System, layer_get_depth("Explosions"));
if (!global.unpausing) {
	part_particles_clear(global.P_System);
	global.boss_just_killed = false;
}
else audio_pause_sound(global.pauseBgm);

alarm_set(8, 1);
//global.PauseScreenShot = sprite_create_from_surface(application_surface, 0, 0, 0, 0, false, false, 0, 0);
room_persistent = false;
sprite_delete(global.PauseScreenShot);
//global.unpausing = false;
alarm_set(0, 1);

if (global.unpausing) exit;
if (global.checkpoint > 0 && do_once = true) {
	alarm_set(7, 1);
	with (obj_tank_pilot) {
		if (global.checkpoint > 1) unlock = 1;
		if (global.checkpoint > 3) unlock = 2;
		if (global.checkpoint > 4) unlock = 3;
		if (weapon == 0) sprite_index = spPlayerTankY;
		if (weapon == 1) sprite_index = spPlayerTankG;
		if (weapon == 2) sprite_index = spPlayerTankB;
	}
	do_once = false;
}





