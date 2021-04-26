if (!instance_exists(obj_tank_pilot) || shield == id) exit;
if (point_distance(shield.x, shield.y, obj_tank_pilot.x, obj_tank_pilot.y) < 115) {
	flash2 = true;
	flashCount = 0;
	if (instance_exists(wheels)) wheels.spd = 9;
} else if (point_distance(x, y, obj_tank_pilot.x, obj_tank_pilot.y) >= 300) {
	flash1 = false;
	if (instance_exists(wheels)) wheels.spd = 7;
	alarm_set(3, 1);
	exit;
}
alarm_set(4, 2);