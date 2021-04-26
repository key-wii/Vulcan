start = false;
var player_exists = instance_exists(obj_tank_pilot);
if (player_exists) {
	var ddis = point_distance(x, y, obj_tank_pilot.x, obj_tank_pilot.y);
	xx = x + lengthdir_x(ddis, direction);
	yy = y + lengthdir_y(ddis, direction);
}
alarm_set(7, 1);