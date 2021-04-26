var ddir = direction;
with (other) {
	move_bounce_solid(false);
	x += lengthdir_x(8, ddir);
	y += lengthdir_x(8, ddir);
	direction += 180;
	if (instance_exists(obj_tank_pilot)) with (obj_tank_pilot) {
		flame_dir *= -1;
		dir_changed = true;
	}
}