if (x > room_width / 2)
	path_start(path_enemy_cirlce_R, spd, path_action_continue, false);
if (x <= room_width / 2)
	path_start(path_enemy_cirlce_L, spd, path_action_continue, false);
path_position = _pos + irandom_range(-3, 3);
jump = 2;