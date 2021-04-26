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
if (speed > 30 && alarm_get(0) > 1) alarm_set(0, 1);
image_angle = direction;

x += lengthdir_x(speed + 1, direction);
y += lengthdir_y(speed + 1, direction);

alarm_set(8, 1);