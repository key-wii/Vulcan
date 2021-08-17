if (grenadeAlreadyHitPlayer) exit;

if (instance_exists(obj_boss_parent))
	if (obj_boss_parent.flameKills > 0)
		with (obj_boss_parent) {
			alarm_set(7, alarm_get(7) + 12);
			if (alarm_get(7) > 85) alarm_set(7, 85);
		}

grenadeAlreadyHitPlayer = true;
with(other) {
	var broken_shield = (shield > 0 && shielding == true);
	if (broken_shield) {
		shielding = false;
		shield_break = true;
		sound_machine(snd_shield_break2, x, y);
		alarm_set(9, 600);
	}
	if(broken_shield || !shielding) {
		var negaDmg = damage - 100 - flameHeals;
		damage += other.pow;
		if (broken_shield) damage += other.pow;
		devil_trigger = 0;
		devil_trigger -= power(max_trigger / 100, 3);
		red_skull = 50;
		negaDmg = damage - 100 - flameHeals;
		if (spikesUnlocked) alarm_set(8, 1);
		
		var explosion = instance_create_layer(other.x + 0, other.y + 0, "Explosions", obj_explosion_small_hit);
		explosion.direction = other.direction + 180;
		explosion.orig_direction = explosion.direction;
		explosion.speed = 1;
		obj_camera.flameShake = clamp(((damage / 5) + 30), 0, 50);
		with(obj_tint_screen_red) {
			visible = true;
			alarm_set(0, 9);
		}
		x_adjust = lengthdir_x(7, point_direction(other.x, other.y, x, y));
		y_adjust = lengthdir_y(7, point_direction(other.x, other.y, x, y));
	}
	/*if(shield > 0 && shielding) {
		audio_play_sound(snd_shield_hit, 0, 0);
	}*/
}