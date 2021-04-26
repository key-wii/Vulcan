if (other.object_index == obj_tutorial_killer_move) exit;
collision_count += 4;
move_bounce_solid(false);
if (other.x > x) x -= collision_count;
else  x += collision_count;
if (other.y > y) y -= collision_count;
else  y += collision_count;
alarm_set(10, 2);