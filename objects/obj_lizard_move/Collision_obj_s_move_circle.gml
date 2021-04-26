var ddir = point_direction(other.x, other.y, x, y);
jump += 10;
x += lengthdir_x(jump, ddir);
y += lengthdir_y(jump, ddir);
alarm_set(0, 2);