//Die if health hits 0
if ((damage + 1) > maxHp) {
	instance_destroy();
} else {
	hitting = false;
}

//Point at player
player_exists = instance_exists(obj_tank_pilot);
if (player_exists) {
	var ddir = point_direction(x, y, obj_tank_pilot.x, obj_tank_pilot.y);
	direction = ddir + dir_adjust;
	if (!dir_stop) {
		if (turn) {
			if (dir_adjust < 30) dir_adjust += 6;
			else if (dir_adjust < 60) dir_adjust += 12;
			else {
				turn = false;
				dir_stop = true;
				alarm_set(7, 5);
			}
		} else {
			if (dir_adjust > -30) dir_adjust -= 6;
			else if (dir_adjust > -60) dir_adjust -= 12;
			else {
				turn = true;
				dir_stop = true;
				alarm_set(7, 5);
			}
		}
		if (direction == ddir) {
			dir_stop = true;
			alarm_set(7, 10);
		}
	}
}

if (burnt > 0) {
	image_blend = $FF00A1FF & $ffffff;
	image_alpha = ($FF00A1FF >> 24) / $ff;
}
if (burnt < 1) {
	image_blend = $FFFFFFFF & $ffffff;
	image_alpha = ($FFFFFFFF >> 24) / $ff;
}
if (burnt > 0) burnt += -8;
if (burnt < 0) {
	burnt = 0;
	alarm_set(1, 2);
	alarm_set(2, 0);
	alarm_set(3, 0);
	//alarm_set(4, 2);
}
if (hit_count > 0) {
	hit_count--;
}

alarm_set(8, 2);