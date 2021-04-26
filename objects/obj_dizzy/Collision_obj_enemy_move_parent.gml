var controller_exists = instance_exists(controller);
if (global.flameKills > 0) {
	if (controller_exists)
		with (controller) {
			alarm_set(2, alarm_get(2) + 30);
			if (alarm_get(2) > 79) alarm_set(2, 79);
		}
	var boss_controller_exists = instance_exists(obj_boss1_controller);
	if (boss_controller_exists)
		with (obj_boss1_controller) {
			alarm_set(2, alarm_get(2) + 30);
			if (alarm_get(2) > 79) alarm_set(2, 79);
		}
}

var pow = 10;
with(other) {
	if (!instance_exists(owner)) exit;
	with (owner) {
		var block = false;
			if (object_index == obj_enemy_tutorial_dumdum) {
				if (color != color.yellow) block = true;
				else block = false;
			} else block = false;
	}
		
	var broken_shield = shield < 1 && shielding = true;
	if((broken_shield || !shielding) && block == false) {
		if (miniboss == false) {
			damage += pow;
			owner.damage += pow;
		} else {
			damage += 3 * pow;
			owner.damage += 3 * pow;
		}
		owner.spinSpd *= -1;
		var xx = lengthdir_x(24, point_direction(other.x, other.y, x, y));
		var yy = lengthdir_y(24, point_direction(other.x, other.y, x, y));
		x += xx;
		y += yy;
		//enemy blinks white and moves a bit in opposite direction
		with (owner) {
			sprite_index = dead_sprite;
			alarm_set(9, 10);
		}
		owner.x_adjust = lengthdir_x(8, point_direction(other.x, other.y, x, y));
		owner.y_adjust = lengthdir_y(8, point_direction(other.x, other.y, x, y));
		//explosion
		with (other) {
			var explosion = instance_create_layer(x + 0, y + 0, "Explosions", obj_explosion_small);
			explosion.direction = direction;
			explosion.speed = 5;
		}
	}
	if((shield > 0 && shielding) || block = true) sound_machine(snd_shield_hit, x, y);
	if (object_index != obj_boss_parent || !combo) {
		if (damage >= hp) {
			var kill_X = instance_create_layer(x, y, "UI", obj_kill_X);
			kill_X.sprite_index = spr_kill_shell;
			obj_camera.plusShake = screenShake * 2;
			if (controller_exists && !owner.hydra && (!owner.slime || owner.childrenLeft == 0))
				with (controller) kills++;
			if (owner.object_index == obj_enemy_bomber) owner.dddir = other.direction;
		}
	} else if (object_index == obj_boss_parent && !combo) {
		if (damage >= hp) {
			var kill_X = instance_create_layer(x, y, "UI", obj_kill_X);
			kill_X.sprite_index = spr_kill_shell;
			kill_X.image_xscale = 3;
			kill_X.image_yscale = 3;
			obj_camera.plusShake = screenShake * 2;
			if (controller_exists && !owner.hydra && (!owner.slime || owner.childrenLeft == 0))
				with (controller) kills++;
		}
	}
}

sprite_index = spr_kill_shell;
instance_destroy();