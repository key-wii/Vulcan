var player_exists = instance_exists(obj_tank_pilot);
if (!player_exists) exit;
if (!burnt) {
	var ddis = point_distance(x, y, obj_tank_pilot.x, obj_tank_pilot.y);
	if (ddis < 200) var swing_speed = 2;
	else if (ddis < 400) var swing_speed = 1.5;
	else var swing_speed = 1;
	if (xx > obj_tank_pilot.x) xx -= swing_speed;
	if (xx < obj_tank_pilot.x) xx += swing_speed;
	if (yy > obj_tank_pilot.y) yy -= swing_speed;
	if (yy < obj_tank_pilot.y) yy += swing_speed;
	alarm_set(7, 1);
} else {
	if (xx > obj_tank_pilot.x) xx -= .5;
	if (xx < obj_tank_pilot.x) xx += .5;
	if (yy > obj_tank_pilot.y) yy -= .5;
	if (yy < obj_tank_pilot.y) yy += .5;
	alarm_set(7, 4);
}