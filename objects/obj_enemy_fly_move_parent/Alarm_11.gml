x += lengthdir_x(3, otherDir);
y += lengthdir_y(3, otherDir);

collide_count++;
if (collision_time != 0) maxCount = collision_time;
collision_time = 0;
if (collide_count < 100 + maxCount) alarm_set(11, 2);