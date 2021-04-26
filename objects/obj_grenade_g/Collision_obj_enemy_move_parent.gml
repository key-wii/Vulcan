if (global.flameKills > 0) {
	var controller_exists = instance_exists(controller);
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

with (particleMachine) {
	particleCount = 0;
	alarm_set(1, 1);
}

hit = true;
hit_target = true;
alarm_set(0, 50);

with(other) {
	if (instance_exists(owner)) {
		owner.x_adjust = lengthdir_x(8, point_direction(other.x, other.y, x, y));
		owner.y_adjust = lengthdir_y(8, point_direction(other.x, other.y, x, y));
	}
}
instance_change(obj_grenade_g2, true);
particleMachine.owner = id;

/*if(speed > 45 || speed < -45) {
	instance_create_layer(x + 0, y + 0, "Explosions", obj_explosion_small);
	with (other) {
		var explosion = instance_create_layer(x + 0, y + 0, "Explosions", obj_explosion_small);
		explosion.direction = direction;
		explosion.speed = 5;
	}
	instance_destroy();
}*/

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
if (speed > 30) speed = 30;
//alarm_set(0, 35 + alarm_get(0));
image_angle = direction;