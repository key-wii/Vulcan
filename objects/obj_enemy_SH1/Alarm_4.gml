if (!instance_exists(obj_tank_pilot) || shield == id) exit;
if (point_distance(x, y, obj_tank_pilot.x, obj_tank_pilot.y) <= 210 + (instance_number(obj_enemy_SH1) * 20)) {
	flash2 = true;
	flashCount = 0;
	wheels.spd += 1;
	alarm_set(5, 100);
} else alarm_set(4, 2);