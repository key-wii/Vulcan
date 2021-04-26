if (!instance_exists(obj_tank_pilot) || shield == id) exit;
if (point_distance(x, y, obj_tank_pilot.x, obj_tank_pilot.y) <= 280 + (instance_number(obj_enemy_SH1_fast) * 20)) {
	flash2 = true;
	flashCount = 0;
	wheels.spd -= .5;
	alarm_set(5, 64);
} else alarm_set(4, 2);