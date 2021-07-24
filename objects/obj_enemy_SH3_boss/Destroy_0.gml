instance_destroy(shield);
instance_destroy(wheels);
expl = instance_create_layer(x, y, "Enemy", obj_explosion_emitter_miniboss3);
expl.direction = direction + 180;
expl.splitMore = 0;

if (global.level == 9) {
	with (obj_spawner) alarm_set(6, 1);
	ds_list_add(global.minibossesBeat, 3);
} else {
	with (obj_spawner) {
		timeline_index = timelineShld_wave_wait2;
		timeline_loop = false;
		timeline_position = 0;
		timeline_running = true;
		if (!instance_exists(obj_spawner_corners)) instance_create_layer(x, y, "UI", obj_spawner_corners);
		global.boss_just_killed = true;
	}
}
instance_destroy(obj_enemy_hive);

event_inherited();