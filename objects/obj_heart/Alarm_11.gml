if (instance_exists(obj_tank_pilot)) with (obj_tank_pilot) {
	if (damage > 100) damage -= 5;
	else if (damage > 0) damage -= 5;
	if (damage < 0)
		damage = 0;
	lastSpikes = 10;
}
alarm_set(11, 1);