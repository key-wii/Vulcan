with(other) {
	audio_stop_sound(snd_hit);
	audio_play_sound(snd_hit, 0, 0);
	if (!black) {
		if (piercing) instance_destroy();
		var explosion = instance_create_layer(x + 0, y + 0, "Explosions", obj_explosion_small_e);
		explosion.direction = direction;
		explosion.speed = 4;
	} else with (other) {
		last_object = object_index;
		instance_change(obj_explosion_grenade, true);
		pow = ppow;
		if (pow > 30) sprite_index = spr_explosion_bomber_hit_flamed;
		else sprite_index = spr_explosion_bomber_hit;
		counter = true;
		image_xscale = 1;
		image_yscale = 1;
		speed = 2;
	}
	/*if (!grenade) {
		var explosion = instance_create_layer(x + 0, y + 0, "Explosions", obj_explosion_small_e);
		explosion.direction = direction;
		explosion.speed = 4;
		instance_destroy();
	}*/
}