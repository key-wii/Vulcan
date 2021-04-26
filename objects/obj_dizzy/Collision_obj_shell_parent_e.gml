with(other) {
	if (black) exit;
	audio_stop_sound(snd_hit);
	audio_play_sound(snd_hit, 0, 0);
	//audio_stop_sound(snd_flameblue_e);
	//audio_play_sound(snd_flameblue_e, 0, 0);
	if (!piercing) {
		var explosion = instance_create_layer(x + 0, y + 0, "Explosions", obj_explosion_small_e);
		explosion.direction = direction;
		explosion.speed = 4;
		if (!grenade) instance_destroy();
	} else with (other) {
		var explosion = instance_create_layer(x + 0, y + 0, "Explosions", obj_explosion_small_e);
		explosion.direction = direction;
		explosion.speed = 4;
		instance_destroy();
	}
	if (!grenade) {
		var explosion = instance_create_layer(x + 0, y + 0, "Explosions", obj_explosion_small_e);
		explosion.direction = direction;
		explosion.speed = 4;
		instance_destroy();
	}
	/*if (grenade) {
		instance_change(obj_explosion_grenade_e, true);
		image_xscale = 1;
		image_yscale = 1;
		speed = 0;
	}*/
}