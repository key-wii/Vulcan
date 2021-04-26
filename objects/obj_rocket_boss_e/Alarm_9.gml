if (!instance_exists(aimAt)) exit;
if (aimAt == obj_tank_pilot) target = instance_nearest(x, y, aimAt);
else target = enemy_closest(x, y, aimAt);