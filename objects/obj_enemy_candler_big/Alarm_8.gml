//Die if health hits 0
if ((damage + 1) > maxHp) {
	instance_destroy();
} else {
	hitting = false;
}

event_inherited();

//Point at player
var player_exists = false;
player_exists = instance_exists(obj_tank_pilot);
if (player_exists) {
	direction = point_direction(x, y, xx, yy);
	if (direction - prev_dir > 1) direction = prev_dir + 1;
	else if (direction - prev_dir < -1) direction = prev_dir - 1;
}
alarm_set(8, 1);