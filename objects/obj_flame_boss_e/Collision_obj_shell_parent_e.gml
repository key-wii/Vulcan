with(other) {
	audio_stop_sound(snd_hit);
	audio_play_sound(snd_hit, 0, 0);
	var explosion = instance_create_layer(x + 0, y + 0, "Explosions", obj_explosion_small_e);
	explosion.direction = -direction;
	explosion.speed = 2;
	explosion.image_xscale = 2;
	explosion.image_yscale = 2;
	instance_destroy();
}