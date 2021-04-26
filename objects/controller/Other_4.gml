if (room != room_pause) part_system_automatic_update(global.P_System, true);
if (room == room_menu) {
	global.waveEndCombo = 0;
	global.flameWaveKills = 0;
}
if (!global.unpausing) global.boss_just_killed = false;
part_system_depth(global.P_System, layer_get_depth("Explosions"));
if (!global.unpausing) part_particles_clear(global.P_System);

alarm_set(8, 1);
global.PauseScreenShot = sprite_create_from_surface(application_surface, 0, 0, 0, 0, false, false, 0, 0);
room_persistent = false;
sprite_delete(global.PauseScreenShot);
global.unpausing = false;