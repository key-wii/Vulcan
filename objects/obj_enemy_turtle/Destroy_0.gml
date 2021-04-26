instance_destroy(shield);
instance_destroy(wheels);
expl = instance_create_layer(x, y, "Enemy", obj_explosion_emitter_miniboss2);
expl.direction = direction;
expl.splitMore = 3;

if (global.level == 9) {
	with (obj_spawner) {
		alarm_set(6, 1);
		global.boss_just_killed = true;
		alarm_set(5, 180);
	}
	with (obj_enemy_fly_move_parent) leave = true;
}
else {
	global.boss_just_killed = true;
	with (obj_spawner) {
		timeline_index = timelineShld_beatBoss;
		timeline_loop = false;
		timeline_position = 0;
		timeline_running = true;
	}
instance_create_layer(x, y, "UI", obj_spawner_corners);
}
instance_destroy(obj_enemy_hive);

event_inherited();