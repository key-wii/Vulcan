otherDir = point_direction(other.x, other.y, x, y);
x += lengthdir_x(2, otherDir);
y += lengthdir_y(2, otherDir);

collision_time++;
collide_count = 0;
maxCount = 0;
alarm_set(11, 1);