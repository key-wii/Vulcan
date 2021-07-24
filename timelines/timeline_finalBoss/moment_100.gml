var spawn = instance_create_layer(xx, yy, "Floor", obj_enemy_spawn_finalBoss);
with (spawn) {
	enemy = obj_enemy_s_final;
	image_xscale = 60;
	image_yscale = 60;
	image_speed = .02;
	rotation = 3;
	alarm_set(0, 1980);
	//alarm_set(0, 1);
	sound_machine(snd_final_spawn, x, y);
}