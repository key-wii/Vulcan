if (!lethal) exit;
if (place_meeting(x, y, obj_enemy_shield_parent) &&
	direction < other.direction + 180 && direction > other.direction - 180) {
		with (particleMachine) {
			particleCount = 0;
			alarm_set(1, 1);
		}
		lethal = false;
		
		if (hit && speed > 16 * 1.5) {
			with (instance_nearest(x, y, obj_enemy_shield_parent)) {
				damage += 40;
				if (damage >= hp) {
					broke = true;
					instabreak = true;
					var expl = instance_create_layer(x, y, "Enemy", obj_explosion_large);
					expl.direction = direction;
					expl.speed = 1;
					//audio_play_sound(snd_shield_break2, false, false);
				}
				sprite_index = dead_sprite;
				alarm_set(11, 5);
			}
		} else if (hit && speed > 16 * 1) {
			with (instance_nearest(x, y, obj_enemy_shield_parent)) {
				damage += 10;
				if (damage >= hp) {
					broke = true;
					var expl = instance_create_layer(x, y, "Enemy", obj_explosion_large);
					expl.direction = direction;
					expl.speed = 1;
					expl.silent = true;
					//audio_play_sound(snd_shield_break2, false, false);
				}
				sprite_index = dead_sprite;
				alarm_set(11, 5);
			}
		} else {
			var explosion = instance_create_layer(x + 0, y + 0, "Explosions", obj_explosion_small);
			explosion.direction = direction;
			explosion.speed = 1;
			instance_destroy();
			exit;
		}
		if (global.flameKills > 0) {
			var controller_exists = instance_exists(controller);
			if (controller_exists)
				with (controller) {
					alarm_set(2, alarm_get(2) + 40);
					if (alarm_get(2) > 79) alarm_set(2, 79);
				}
			var boss_controller_exists = instance_exists(obj_boss1_controller);
			if (boss_controller_exists)
				with (obj_boss1_controller) {
					alarm_set(2, alarm_get(2) + 40);
					if (alarm_get(2) > 79) alarm_set(2, 79);
				}
		}
		instance_destroy();

		/*if (hit_target == true) {
			var explosion = instance_create_layer(x + 0, y + 0, "Explosions", obj_explosion_small);
			explosion.direction = direction;
			explosion.speed = 1;
			instance_destroy();
			exit;
		}

		if (extended == true) {
			alarm_set(0, alarm_get(0) - 20);
			if (alarm_get(0) < 1) {
				var explosion = instance_create_layer(x + 0, y + 0, "Explosions", obj_explosion_small);
				explosion.direction = direction;
				explosion.speed = 1;
				instance_destroy();
				exit;
			}
		}
		
		if((speed > maxSpeed) && (alarm_get(0) != 140) || (speed < -maxSpeed) && (alarm_get(0) != 140)) {
			var explosion = instance_create_layer(x + 0, y + 0, "Explosions", obj_explosion_small);
			explosion.direction = direction;
			explosion.speed = 1;
			instance_destroy();
			exit;
		}
		audio_play_sound(snd_bounce, 0, 0);
		move_bounce_solid(true);
		if (direction > 0 && direction < 45)
			direction += -5;
		if (direction > 45 && direction < 90)
			direction += 5;
		if (direction > 90 && direction < 135)
			direction += -5;
		if (direction > 135 && direction < 180)
			direction += 5;
		if (direction > 180 && direction > 225)
			direction += -5;
		if (direction > 225 && direction < 270)
			direction += 5;
		if (direction > 270 && direction > 315)
			direction += -5;
		if (direction > 315 && direction < 360)
			direction += 5;
		speed = speed * 1.25;
		image_angle = direction;
		
		
		lethal = false;
		alarm_set(9, 3);
		if (direction > other.direction + 180 || direction < other.direction - 180) {
			var ddir = point_direction(other.x, other.y, x, y);
			x += lengthdir_x(64, ddir);
			y += lengthdir_y(64, ddir);
		} else {
			x += lengthdir_x(96, direction);
			y += lengthdir_y(96, direction);
		}*/
}