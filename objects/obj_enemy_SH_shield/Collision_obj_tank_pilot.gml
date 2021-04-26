if (!lethal) exit;
with(other) {
	var broken_shield = shield < 1 && shielding = true;
	if(broken_shield || !shielding) {
		var negaDmg = damage - 100 - flameHeals;
		damage += other.pow;
		//if (negaDmg < 100) damage += other.pow;
		negaDmg = damage - 100 - flameHeals;
		var explosion = instance_create_layer(other.x + 0, other.y + 0, "Explosions", obj_explosion_small_hit);
		explosion.direction = other.direction + 180;
		explosion.orig_direction = explosion.direction;
		explosion.speed = 1;
		obj_camera.flameShake = clamp(((damage / 5) + 5), 0, 15);
		with(obj_tint_screen_red) {
			visible = true;
			alarm_set(0, 3);
		}
		
		if (!dir_changed) {
			flame_dir *= -1;
			dir_changed = true;
		}
		shoot_rotate = 20;
		var xx = lengthdir_x(48, point_direction(other.x, other.y, x, y));
		var yy = lengthdir_y(48, point_direction(other.x, other.y, x, y));
		if (instance_exists(obj_tank_move))
			with (obj_tank_move) {
				x += xx;
				y += yy;
			}
		else if (instance_exists(obj_tank_move_flame))
			with (obj_tank_move_flame) {
				x += xx;
				y += yy;
			}
		if (instance_exists(obj_tank_move_flame)) with (obj_tank_move_flame) {
			can_move = false;
			direction += 180;
			alarm_set(5, 5);
		}
		
		with(other) {
			lethal = false;
			alarm_set(0, 5);
		}
	}
	if(shield > 0 && shielding) {
		audio_play_sound(snd_shield_hit, 0, 0);
		with(other) {
			lethal = false;
			alarm_set(0, 20);
		}
	}
}