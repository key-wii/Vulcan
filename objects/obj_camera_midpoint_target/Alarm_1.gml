if (!instance_exists(obj_boss_parent)) with (obj_camera) {
	target = obj_tank_pilot;
	alarm_set(2, 1);
}
if (!instance_exists(obj_tank_pilot) || !instance_exists(obj_boss_parent))
	exit;

full = point_distance(obj_tank_pilot.x, obj_tank_pilot.y, obj_boss_parent.x, obj_boss_parent.y);
ddir = point_direction(obj_tank_pilot.x, obj_tank_pilot.y, obj_boss_parent.x, obj_boss_parent.y)
if (pointLength <= full / 2) {
	pointLength += 7;
	midXlen = lengthdir_x(pointLength, ddir);
	midYlen = lengthdir_y(pointLength, ddir);
	x = obj_tank_pilot.x + midXlen;
	y = obj_tank_pilot.y + midYlen;
	alarm_set(1, 1);
} else alarm_set(0, 1);