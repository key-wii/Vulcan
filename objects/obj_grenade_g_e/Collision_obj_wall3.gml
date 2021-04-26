with (particleMachine) {
	particleCount = 0;
	alarm_set(1, 1);
}

//hit = true;
//instance_change(obj_grenade_g2, true);
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

if((speed > 24) && (alarm_get(0) != 140)) {
	var explosion = instance_create_layer(x + 0, y + 0, "Explosions", obj_explosion_small);
	explosion.direction = direction;
	explosion.speed = 1;
	instance_destroy();
	exit;
}
if((speed < -24) && (alarm_get(0) != 140)) {
	var explosion = instance_create_layer(x + 0, y + 0, "Explosions", obj_explosion_small);
	explosion.direction = direction;
	explosion.speed = 1;
	instance_destroy();
	exit;
}*/
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
speed = speed * 1.2;
if (speed > orig_speed + 1) {
	instance_change(obj_explosion_small_e, true);
	image_xscale = 2;
	image_yscale = 2;
	speed = 1;
}
image_angle = direction;