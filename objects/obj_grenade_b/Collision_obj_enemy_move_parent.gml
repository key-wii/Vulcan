if (other.object_index == obj_menu_char_move) {
	with (other.owner) {
		spin = 372;
		charCount = 0;
		sprite_index = dead_sprite;
		alarm_set(9, 10);
	}
	speed = 1;
	last_object = object_index;
	instance_change(obj_explosion_grenade, true);
	image_speed = .6;
	exit;
}
if (lethal == false) exit;

var controller_exists = instance_exists(controller);
var pow = 5;
with (other) {
	var broken_shield = shield < 1 && shielding = true;
	if(broken_shield || !shielding) {
		if (miniboss == false) {
			damage += pow;
			owner.damage += pow;
		} else {
			damage += 3 * pow;
			owner.damage += 3 * pow;
		}
		with (owner) {
			sprite_index = dead_sprite;
			alarm_set(9, 10);
		}
		owner.x_adjust = lengthdir_x(8, point_direction(other.x, other.y, x, y));
		owner.y_adjust = lengthdir_y(8, point_direction(other.x, other.y, x, y));
		with (other) {
			var explosion = instance_create_layer(x + 0, y + 0, "Explosions", obj_explosion_small);
			explosion.direction = direction;
			explosion.speed = 5;
		}
	}
	if (shield > 0 && shielding) sound_machine(snd_shield_hit, x, y);
	if (object_index != obj_boss_parent || !combo) {
		if (damage >= hp) {
			var kill_X = instance_create_layer(x, y, "UI", obj_kill_X);
			kill_X.sprite_index = spr_kill_rocket;
			obj_camera.plusShake = screenShake * 3;
			if (controller_exists && !owner.hydra && (!owner.slime || owner.childrenLeft == 0))
				with (controller) kills++;
			if (owner.object_index == obj_enemy_bomber) owner.dddir = other.direction;
		}
	} else if (object_index = obj_boss_parent && !combo) {
		if (damage >= hp) {
			var kill_X = instance_create_layer(x, y, "UI", obj_kill_X);
			kill_X.sprite_index = spr_kill_rocket;
			kill_X.image_xscale = 3;
			kill_X.image_yscale = 3;
			obj_camera.plusShake = screenShake * 3;
			if (controller_exists && !owner.hydra && (!owner.slime || owner.childrenLeft == 0))
				with (controller) kills++;
		}
	}
}

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

with(other) {
	if (instance_exists(owner)) {
		owner.burnt += 10;
		owner.x_adjust = lengthdir_x(8, point_direction(other.x, other.y, x, y));
		owner.y_adjust = lengthdir_y(8, point_direction(other.x, other.y, x, y));
	}
}
last_object = object_index;
instance_change(obj_explosion_grenade, true);
image_speed = .6;
speed = 1;