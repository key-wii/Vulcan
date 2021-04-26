if (!instance_exists(obj_tank_pilot)) exit;
if (point_distance(x, y, obj_tank_pilot.x, obj_tank_pilot.y) < 120) instance_destroy();