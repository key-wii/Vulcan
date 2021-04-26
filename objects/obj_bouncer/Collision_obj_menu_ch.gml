if (!lethal) exit;
with (other) if (alarm_get(0) < 1 && !alreadyHit) alarm_set(0, 5);
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
var ddir = point_direction(other.x, other.y, x, y)
x += lengthdir_x(10, ddir);
y += lengthdir_y(10, ddir);
speed *= -1;
image_angle = direction;