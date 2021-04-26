if (instance_exists(obj_tank_pilot) && instance_exists(obj_boss_parent))
	ddir = point_direction(obj_tank_pilot.x, obj_tank_pilot.y, obj_boss_parent.x, obj_boss_parent.y)
else ddir = 270;
pointLength = 5;
midXlen = lengthdir_x(pointLength, ddir);
midYlen = lengthdir_y(pointLength, ddir);
if (instance_exists(obj_tank_pilot)) {
	x = obj_tank_pilot.x + midXlen;
	y = obj_tank_pilot.y + midYlen;
}
alarm_set(1, 1);