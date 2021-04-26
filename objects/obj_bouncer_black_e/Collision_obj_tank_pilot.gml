if (other.bull_hit_count > 65) exit;
if (hit_target == true) exit;
depth = layer_depth("Enemy_Bullets_Front", 400);
with (particleMachine) {
	particleCount = 0;
	alarm_set(1, 1);
}

hit = true;
hit_target = true;
alarm_set(0, 50);

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
		//if (negaDmg < 100) damage += other.pow;
		negaDmg = damage - 100 - flameHeals;
		//if (negaDmg > 100.01) damage -= negaDmg - 100;
		/*var blood = instance_create_layer(x, y, "Walls", obj_blood_player);
		blood.image_index = lives - 1;
		if (damage < 100 && damage > 90) blood.image_index = 1;
		if (damage >= 100) blood.image_index = 0;
		blood.life = blood.image_index * 10;*/
		if (spikesUnlocked) alarm_set(8, 1);
		with (other) {
			var explosion = instance_create_layer(x + 0, y + 0, "Explosions", obj_explosion_small_hit);
			explosion.direction = direction;
			explosion.speed = 5;
			explosion.sprite_index = spr_explosion_small__green;
		}
		obj_camera.flameShake = clamp(((damage / 5) + 5), 0, 15);
		with(obj_tint_screen_red) {
			visible = true;
			alarm_set(0, 3);
		}
		x_adjust = lengthdir_x(3, point_direction(other.x, other.y, x, y));
		y_adjust = lengthdir_y(3, point_direction(other.x, other.y, x, y));
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
if (speed < 3) speed = 20;
else speed = speed * 1.5;
//alarm_set(0, 35 + alarm_get(0));
image_angle = direction;