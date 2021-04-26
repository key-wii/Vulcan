path_end();
var ddir = point_direction(other.x, other.y, x, y);
x += lengthdir_x(jump, ddir);
y += lengthdir_y(jump, ddir);
jump += 5;
alarm_set(0, 2);