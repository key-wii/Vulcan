var player_exists = instance_exists(obj_tank_pilot);
if (!player_exists) exit;
direction = point_direction(x, y, obj_tank_pilot.x, obj_tank_pilot.y);
speed = 0;
alarm_set(2, 300);