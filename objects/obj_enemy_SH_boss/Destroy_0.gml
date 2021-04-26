instance_destroy(shield);
instance_destroy(wheels);
expl = instance_create_layer(x, y, "Enemy", obj_explosion_emitter_miniboss3);
expl.direction = direction + 180;
expl.splitMore = 0;

with (obj_spawner) {
	timeline_index = timelineShld_wave_wait1;
	timeline_loop = false;
	timeline_position = 0;
	timeline_running = true;
	instance_destroy(obj_enemy_hive);
	if (!instance_exists(obj_spawner_corners)) instance_create_layer(x, y, "UI", obj_spawner_corners);
	global.boss_just_killed = true;
}

event_inherited();