var player_exists = instance_exists(obj_tank_pilot);
if (!player_exists) exit;
if (!burnt) {
	if (xx > obj_tank_pilot.x) xx -= .5;
	if (xx < obj_tank_pilot.x) xx += .5;
	if (yy > obj_tank_pilot.y) yy -= .5;
	if (yy < obj_tank_pilot.y) yy += .5;
	alarm_set(7, 1);
} else {
	if (xx > obj_tank_pilot.x) xx -= .1;
	if (xx < obj_tank_pilot.x) xx += .1;
	if (yy > obj_tank_pilot.y) yy -= .1;
	if (yy < obj_tank_pilot.y) yy += .1;
	alarm_set(7, 4);
}