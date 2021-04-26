var player_exists = instance_exists(obj_tank_pilot);
if (player_exists) instance_create_layer(obj_tank_pilot.x, obj_tank_pilot.y, "Player", obj_burst);
second_burst = false;