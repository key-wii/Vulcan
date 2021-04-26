if (!instance_exists(obj_tank_pilot)) exit;
with (obj_tank_pilot)
	if (damage > 0) {
		damage -= 1;
		alarm_set(3, 2);
	}