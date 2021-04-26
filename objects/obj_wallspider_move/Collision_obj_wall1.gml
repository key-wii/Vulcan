path_end();
var ddir = point_direction(other.x, other.y, x, y);
x += lengthdir_x(jump, ddir);
y += lengthdir_y(jump, ddir);
jump += 3;
alarm_set(0, 50);
if (y < room_height / 2)
	path_start(path_enemy_line_D, spd, path_action_stop, false);
if (y > room_height / 2)
	path_start(path_enemy_line_U, spd, path_action_stop, false);