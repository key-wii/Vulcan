if (hurtful == true && instance_exists(obj_tank_pilot)) {
	with (obj_tank_pilot) {
		var priorDamage = damage;
		damage += 10;
		if (priorDamage > 100) {
			overkill += 10;
		} else if (damage > 100) {
			overkill += damage - 100;
		}
	}
	var explosion = instance_create_layer(other.x + 0, other.y + 0, "Explosions", obj_explosion_small_e);
	explosion.direction = other.direction + 180;
	explosion.orig_direction = explosion.direction;
	explosion.speed = 1;
	obj_camera.flameShake = 40;
	with(obj_tint_screen_red) {
		visible = true;
		audio_play_sound(snd_spawn_hurt, 0, false);
		alarm_set(0, 6);
	}
}