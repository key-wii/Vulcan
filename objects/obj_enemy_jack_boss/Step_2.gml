event_inherited();

if (!instance_exists(wheels)) exit;
wheels.radiusIncrease = 10;
if (dir_stop) {
	wheels.spd = 0;
	wheels.backBoost = -4;
	wheels.radiusIncrease = 10;
	if (burnt == 0) {
		wheels.x += lengthdir_x(1, last_dir);
		wheels.y += lengthdir_y(1, last_dir);
		wheels.x += lengthdir_x(1, direction);
		wheels.y += lengthdir_y(1, direction);
	}
} else {
	wheels.spd = 18;
	wheels.backBoost = 16;
	wheels.radiusIncrease = 40;
	last_dir = direction;
}