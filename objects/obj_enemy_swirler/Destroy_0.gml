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
		timeline_index = timelineDizz_beatBoss;
		timeline_loop = false;
		timeline_position = 0;
		timeline_running = true;
	}
}
instance_destroy(obj_enemy_hive);
if (instance_exists(obj_enemy_dizzy_boss_rematch)) {
	with (obj_enemy_dizzy_boss_rematch) {
		if (damage < maxHp - 10) damage = maxHp - 10;
		
		camera = true;
		obj_camera.target = instance_create_layer(x, y, "UI", obj_camera_midpoint_target3);
		obj_camera.target.owner = id;
		with (obj_camera.target) {
			if (instance_exists(obj_tank_pilot))
				ddir = point_direction(obj_tank_pilot.x, obj_tank_pilot.y, owner.x, owner.y)
			midXlen = lengthdir_x(pointLength, ddir);
			midYlen = lengthdir_y(pointLength, ddir);
			if (instance_exists(obj_tank_pilot)) {
				x = obj_tank_pilot.x + midXlen;
				y = obj_tank_pilot.y + midYlen;
			}
		}
	}
}

instance_destroy(wheels);
expl = instance_create_layer(x, y, "Enemy", obj_explosion_emitter_miniboss2);
expl.direction = direction;
expl.splitMore = 3;
event_inherited();