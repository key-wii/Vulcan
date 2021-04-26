if (instance_exists(obj_tank_pilot))
	if (point_distance(x, y, obj_tank_pilot.x, obj_tank_pilot.y) < 70) {
		alarm_set(0, 2);
		exit;
	}

instance_change(obj_explosion_grenade_e, true);
speed = 1;