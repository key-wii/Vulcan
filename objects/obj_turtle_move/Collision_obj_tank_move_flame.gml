move_bounce_solid(false);
if (hurtful == true && instance_exists(obj_tank_pilot)) {
	with (obj_tank_pilot) {
		var negaDmg = damage - 100 - flameHeals;
		damage += 100;
		//if (negaDmg < 100) damage += 10;
		negaDmg = damage - 100 - flameHeals;
		//if (negaDmg > 100.01) damage -= negaDmg - 100;
		devil_trigger = 0;
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