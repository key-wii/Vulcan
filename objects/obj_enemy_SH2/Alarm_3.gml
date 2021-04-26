if (!instance_exists(obj_tank_pilot) || shield == id) exit;
if (point_distance(x, y, obj_tank_pilot.x, obj_tank_pilot.y) < 300) {
	flash1 = true;
	if (instance_exists(wheels)) wheels.spd = 8;
	alarm_set(4, 1);
} else {
	flash1 = false;
	if (instance_exists(wheels)) wheels.spd = 7;
	alarm_set(3, 2);
}