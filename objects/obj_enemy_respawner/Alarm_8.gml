//Die if health hits 0
if ((damage + 1) > maxHp) {
	instance_destroy();
} else {
	hitting = false;
}

//Point at player
/*var player_exists = false;
player_exists = instance_exists(obj_tank_pilot);
if (player_exists) direction = point_direction(x, y, obj_tank_pilot.x, obj_tank_pilot.y);*/

if (burnt > 0) {
	image_blend = $FF00A1FF & $ffffff;
	image_alpha = ($FF00A1FF >> 24) / $ff;
}
if (burnt < 1) {
	image_blend = $FFFFFFFF & $ffffff;
	image_alpha = ($FFFFFFFF >> 24) / $ff;
}
if (burnt > 0) {
	burnt += -8;
	if (start) alarm_set(2, alarm_get(2) + 1);
}
if (burnt < 0) {
	burnt = 0;
	alarm_set(1, 7);
}
if (hit_count > 0) {
	hit_count--;
}

alarm_set(8, 2);