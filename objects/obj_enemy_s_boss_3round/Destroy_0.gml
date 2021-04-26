instance_destroy(wheels);
expl = instance_create_layer(x, y, "Enemy", obj_explosion_emitter_miniboss3);
expl.direction = direction + 180;
expl.splitMore = 0;

if (global.level == 9) with (obj_spawner) alarm_set(6, 1);
else {
	audio_sound_gain(snd_explosion_large, .01, 90);

	global.boss_just_killed = true;
	with (obj_spawner) {
		timeline_index = timeline_returnToMenu;
		timeline_loop = false;
		timeline_position = 60;
		timeline_running = true;
	}

	ini_open("saveData.ini");
	ini_write_real("Levels Beat", "level 2 beat", true);
	ini_close();
}

event_inherited();