with (particleMachine) {
	particleCount = 0;
	alarm_set(1, 1);
}

hit = true;
hit_target = true;
alarm_set(0, 50);

with(other) {
	x_adjust = lengthdir_x(8, point_direction(other.x, other.y, x, y));
	y_adjust = lengthdir_y(8, point_direction(other.x, other.y, x, y));
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
if (speed > 45) speed = 45;
//alarm_set(0, 35 + alarm_get(0));
image_angle = direction;

instance_change(obj_grenade_g2_e, true);