instance_destroy(wheels);
expl = instance_create_layer(x, y, "Enemy", obj_explosion_emitter_miniboss3);
expl.direction = direction + 180;

if (global.level == 9) with (obj_spawner) {
	bosses--;
	if (bosses == 0) { 
		alarm_set(6, 1); 
		instance_destroy(obj_enemy_hive);
		ds_list_add(global.minibossesBeat, 1);
	}
} else {
	with (obj_spawner) {
		bosses--;
		if (bosses == 0) {
			timeline_index = timelineDrag_wave_wait2;
			timeline_loop = false;
			timeline_position = 0;
			timeline_running = true;
			instance_destroy(obj_enemy_hive);
			if (!instance_exists(obj_spawner_corners)) instance_create_layer(x, y, "UI", obj_spawner_corners);
			global.boss_just_killed = true;
		} else {
			if (timeline_position > 360 && timeline_position < 1050)
				timeline_position = 1050;
			if (bosses == 1 && instance_exists(obj_enemy_s_boss_rematch))
				with (obj_enemy_s_boss_rematch)
					//keep camera on player and boss
					obj_camera.target = instance_create_layer(x, y, "UI", obj_camera_miniboss_target);
		}
	}
	audio_sound_gain(snd_explode, 0.08, 90);
}

event_inherited();