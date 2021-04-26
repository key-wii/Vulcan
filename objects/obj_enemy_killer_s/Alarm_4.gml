alpha = 1;
if (instance_exists(obj_tank_pilot) && point_distance(x, y, obj_tank_pilot.x, obj_tank_pilot.y) >= sprite_width + 20)
	alarm_set(10, 10);
alarm_set(3, 67);