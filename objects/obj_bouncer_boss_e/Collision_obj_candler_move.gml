if (instance_exists(owner))
	if (owner.flameKills > 0)
		with (owner) {
			alarm_set(7, alarm_get(7) + 30);
			if (alarm_get(7) > 79) alarm_set(7, 79);
		}
		
depth = layer_depth("Enemy_Bullets_Front", 400);
with (particleMachine) {
	particleCount = 0;
	alarm_set(1, 1);
}

hit = true;
hit_target = true;
alarm_set(0, 70);

var pow = 10;
with(other) {
	var broken_shield = shield < 1 && shielding = true;
	if((broken_shield || !shielding)) {
		if (miniboss == false) {
			damage += pow;
			owner.damage += pow;
		} else {
			damage += 3 * pow;
			owner.damage += 3 * pow;
		}
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
	if(shield > 0 && shielding) {
		audio_play_sound(snd_shield_hit, 0, 0);
		instance_destroy();
	}
	if (damage >= hp) {
		var kill_X = instance_create_layer(x, y, "UI", obj_kill_X);
		kill_X.sprite_index = spr_kill_bouncer;
		obj_camera.plusShake = screenShake * 2;
	}
}

if(speed > maxSpeed || speed < -maxSpeed) {
	instance_create_layer(x + 0, y + 0, "Explosions", obj_explosion_small);
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
//alarm_set(0, 35 + alarm_get(0));
image_angle = direction;