//Die if health hits 0
if ((damage + 1) > maxHp) {
	instance_destroy();
} else {
	hitting = false;
}

event_inherited();

if (start) {
	//Point away from player
	var player_exists = false;
	player_exists = instance_exists(obj_tank_pilot);
	if (player_exists) direction = point_direction(obj_tank_pilot.x, obj_tank_pilot.y, x, y);
	flame.direction = direction;
} else {
	//Point at player
	var player_exists = false;
	player_exists = instance_exists(obj_tank_pilot);
	if (player_exists) direction = point_direction(x, y, xx, yy);
}

if (burnt > 0) {
	image_blend = $FF00A1FF & $ffffff;
	image_alpha = ($FF00A1FF >> 24) / $ff;
}
if (burnt < 1) {
	image_blend = $FFFFFFFF & $ffffff;
	image_alpha = ($FFFFFFFF >> 24) / $ff;
}

if (burnt < 0) {
	burnt = 0;
}
if (hit_count > 0) {
	hit_count--;
}

alarm_set(8, 1);