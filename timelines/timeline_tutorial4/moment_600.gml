xx1 = (room_width / 2) - 874 - 44; yy1 = (room_height / 2) - 874 - 48;
xx2 = (room_width / 2) + 854 - 43; yy2 = (room_height / 2) + 848 - 41;
var player_exists = instance_exists(obj_tank_pilot);
if (!player_exists) exit;
xx = obj_tank_pilot.x + 280; yy = obj_tank_pilot.y;