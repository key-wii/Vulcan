if (!lethal) exit;
with (other) {
	if (alarm_get(0) < 1 && !alreadyHit) alarm_set(10, 1);
	hit = 1;
}
sound_machine(snd_bounce_hit, x, y);
if (alarm_get(0) > 60) alarm_set(0, 60);
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
if((speed > maxSpeed / 1.1) && (alarm_get(0) != 140)) {
	var explosion = instance_create_layer(x + 0, y + 0, "Explosions", obj_explosion_small);
	explosion.direction = direction;
	explosion.speed = 1;
	instance_destroy();
	exit;
}
if((speed < -maxSpeed / 1.1) && (alarm_get(0) != 140)) {
	var explosion = instance_create_layer(x + 0, y + 0, "Explosions", obj_explosion_small);
	explosion.direction = direction;
	explosion.speed = 1;
	instance_destroy();
	exit;
}
image_angle = direction;