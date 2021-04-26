alarm_set(8, 1);
global.PauseScreenShot = sprite_create_from_surface(application_surface, 0, 0, 0, 0, false, false, 0, 0);
room_persistent = false;
sprite_delete(global.PauseScreenShot);

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