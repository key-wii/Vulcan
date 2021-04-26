var player_exists = instance_exists(obj_tank_pilot);
if (!player_exists) exit;
if (other.object_index == obj_dizzy_black_e) {
	with (obj_tank_pilot) {
		if (!dir_changed) {
			flame_dir *= -1;
			direction += 40 * flame_dir;
			dir_changed = true;
		}
	}
}
if (other.black) exit;

with(other) {
	audio_stop_sound(snd_hit);
	audio_play_sound(snd_hit, 0, 0);
	//audio_stop_sound(snd_flameblue_e);
	//audio_play_sound(snd_flameblue_e, 0, 0);
	var explosion = instance_create_layer(x + 0, y + 0, "Explosions", obj_explosion_small_e);
	explosion.direction = -direction;
	explosion.speed = 2;
	if (grenade) {
		explosion.image_xscale = 2;
		explosion.image_yscale = 2;
	}
	instance_destroy();
}

var is_dizzy = false;
if (other.object_index == obj_dizzy_e) is_dizzy = true;
with (obj_tank_pilot) {
	if (is_dizzy && !dir_changed) {
		flame_dir *= -1;
		dir_changed = true;
	}
	if (devil_trigger == max_trigger && bull_hit_count < 69.99) {
		bull_hit_count++;
		bull_hit_wait = 42;
	}
	if (bull_hit_count > 69.99) bull_hit_count = 69.99;
}