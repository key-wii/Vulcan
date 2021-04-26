if (instance_exists(obj_tank_pilot) && instance_exists(obj_miniboss_move2))
	ddir = point_direction(obj_tank_pilot.x, obj_tank_pilot.y, obj_miniboss_move2.x, obj_miniboss_move2.y)
else ddir = 270;
pointLength = 5;
midXlen = lengthdir_x(pointLength, ddir);
midYlen = lengthdir_y(pointLength, ddir);
if (instance_exists(obj_tank_pilot)) {
	x = obj_tank_pilot.x + midXlen;
	y = obj_tank_pilot.y + midYlen;
}
alarm_set(1, 10);