if (global.midbossBeaten) {
	with (obj_spawner) {
		timeline_index = timelineSpkd_wave_wait1;
		timeline_loop = false;
		timeline_position = 0;
		timeline_running = true;
		instance_destroy(obj_enemy_hive);
	}
}