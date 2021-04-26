if (other.object_index == obj_tutorial_killer_move) exit;
if (other.object_index != obj_tutorial_dummy_move) collision_count += 4;
else collision_count += 1;
if (other.miniboss && !other.owner.hydra) collision_count += 4;
else if (other.miniboss && other.owner.hydra)  collision_count += 2;

move_bounce_solid(false);
if (other.x > x) x -= collision_count;
else  x += collision_count;
if (other.y > y) y -= collision_count;
else  y += collision_count;
alarm_set(10, 2);