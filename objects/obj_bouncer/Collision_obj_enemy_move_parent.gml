if (!lethal || (other.SH && other.shield != other.id &&
	direction < other.direction + 180 && direction > other.direction - 180)) exit;
var controller_exists = instance_exists(controller);
if (global.flameKills > 0) {
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

with (particleMachine) {
	particleCount = 0;
	alarm_set(1, 1);
}

hit = true;
hit_target = true;
alarm_set(0, 50);

var pow = 10;
with(other) {
	if (!instance_exists(owner)) exit;
	with (owner) {
		var block = false;
		if (object_index == obj_enemy_tutorial_dumdum) {
			if (color != color.green) block = true;
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
		sound_machine(snd_bounce_hit, x, y);
	}
	with (owner) {
		sprite_index = dead_sprite;
		alarm_set(9, 10);
	}
	owner.x_adjust = lengthdir_x(8, point_direction(other.x, other.y, x, y));
	owner.y_adjust = lengthdir_y(8, point_direction(other.x, other.y, x, y));
	if ((shield > 0 && shielding) || block = true) {
		sound_machine(snd_shield_hit, x, y);
		instance_destroy();
	}
	if (object_index != obj_boss_parent || !combo) {
		if (damage >= hp) {
			var kill_X = instance_create_layer(x, y, "UI", obj_kill_X);
			kill_X.sprite_index = spr_kill_bouncer;
			obj_camera.plusShake = screenShake * 2;
			if (controller_exists && !owner.hydra && (!owner.slime || owner.childrenLeft == 0))
				with (controller) kills++;
			if (owner.object_index == obj_enemy_bomber) owner.dddir = other.direction;
		}
	} else if (object_index == obj_boss_parent && !combo) {
		if (damage >= hp) {
			var kill_X = instance_create_layer(x, y, "UI", obj_kill_X);
			kill_X.sprite_index = spr_kill_bouncer;
			kill_X.image_xscale = 3;
			kill_X.image_yscale = 3;
			obj_camera.plusShake = screenShake * 2;
			if (controller_exists && !owner.hydra && (!owner.slime || owner.childrenLeft == 0))
				with (controller) kills++;
		}
	}
}

if(speed > maxComboSpeed || speed < -maxComboSpeed) {
	instance_create_layer(x + 0, y + 0, "Explosions", obj_explosion_small);
	with (other) {
		var explosion = instance_create_layer(x + 0, y + 0, "Explosions", obj_explosion_small);
		explosion.direction = direction;
		explosion.speed = 5;
	}
	instance_destroy();
}

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
speed = speed * 1.5;
//if (other.miniboss) speed = speed * 1.5;
//alarm_set(0, 35 + alarm_get(0));
image_angle = direction;