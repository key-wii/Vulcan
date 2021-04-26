if (other.object_index == obj_grenade_y ||
	other.object_index == obj_grenade_g ||
	other.object_index == obj_grenade_g2 ||
	other.object_index == obj_grenade_b) {
		with(other) {
			audio_play_sound(snd_flameblue_e, 0, 0);
			var explosion = instance_create_layer(x + 0, y + 0, "Explosions", obj_explosion_small_e);
			explosion.direction = -direction;
			explosion.speed = 2;
			explosion.image_xscale = 3;
			explosion.image_yscale = 3;
			instance_destroy();	
		}
		exit;
}
with(other) {
	audio_play_sound(snd_flameblue_e, 0, 0);
	var explosion = instance_create_layer(x + 0, y + 0, "Explosions", obj_explosion_small_e);
	explosion.direction = -direction;
	explosion.speed = 2;
	explosion.image_xscale = 2;
	explosion.image_yscale = 2;
	instance_destroy();
}