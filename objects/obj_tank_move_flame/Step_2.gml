if (last_x != x || last_y != y) audio_listener_position(x, y, 0);
last_x = x;
last_y = y;
if (x > 360 + 256 && x < room_width - 440 - 256 ||
	y > 160 + 256 && y < room_height - 250 - 256) {
		xInside = x;
		yInside = y;
}

var shld = instance_nearest(x, y, obj_enemy_shield_parent);
if (shld == noone) exit;
var sh_o = shld.object_index;
if ((sh_o == obj_enemy_SH_shield && distance_to_object(shld) < 20) ||
	(sh_o == obj_enemy_SH_shield_miniboss && distance_to_point(shld.x, shld.y) < 20) ||
	(shld.owner.object_index == obj_enemy_turtle && distance_to_point(shld.x, shld.y) < 130) ||
	(shld.owner.object_index == obj_enemy_metatron && distance_to_point(shld.x, shld.y) < 55)) {
		move_bounce_solid(true);
		touching_wall = true;
		alarm_set(1, 21);
		bump_dir = point_direction(shld.owner.x, shld.owner.y, x, y);
		if (bump_dir >= 315 && bump_dir <= 405) bump_dir = 0;
		if (bump_dir >= 45 && bump_dir <= 135) bump_dir = 90;
		if (bump_dir >= 135 && bump_dir <= 225) bump_dir = 180;
		if (bump_dir >= 225 && bump_dir <= 315) bump_dir = 270;
		bump_spd = 16;
		just_touched_wall = true;
		can_move = false;

		if (shld.hitExplode) with (shld.owner) alarm_set(5, 4);

		if (!shld.lethal || !instance_exists(obj_tank_pilot)) exit;
		with(obj_tank_pilot) {
			var broken_shield = (shield > 0 && shielding == true);
			if (broken_shield) {
				shielding = false;
				shield_break = true;
				sound_machine(snd_shield_break2, x, y);
				alarm_set(9, 600);
			}
			var negaDmg = damage - 100 - flameHeals;
			damage += shld.pow;
			//if (negaDmg < 100) damage += shld.pow;
			negaDmg = damage - 100 - flameHeals;
			var explosion = instance_create_layer(shld.x + 0, shld.y + 0, "Explosions", obj_explosion_small_hit);
			explosion.direction = shld.direction + 180;
			explosion.orig_direction = explosion.direction;
			explosion.speed = 1;
			obj_camera.flameShake = clamp(((damage / 5) + 5), 0, 15);
			with(obj_tint_screen_red) {
				audio_play_sound(snd_spawn_hurt, 0, false);
				visible = true;
				alarm_set(0, 3);
			}
		
			if (!dir_changed) {
				flame_dir *= -1;
				dir_changed = true;
			}
			shoot_rotate = 20;
			var xx = lengthdir_x(24, point_direction(shld.x, shld.y, x, y));
			var yy = lengthdir_y(24, point_direction(shld.x, shld.y, x, y));
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
		
			with(shld) {
				lethal = false;
				alarm_set(0, 5);
			}
		}
		
		if (x < 360 + 256 || x > room_width - 440 - 256 ||
			y < 160 + 256 || y > room_height - 250 - 256) {
				x = xInside;
				y = yInside;
		}
		if (direction >= 0 && direction < 90) direction = 45;
		else if (direction >= 90 && direction < 180) direction = 135;
		else if (direction >= 180 && direction < 270) direction = 225;
		else if (direction >= 270 && direction < 360) direction = 315;
}