var player_exists = instance_exists(obj_tank_pilot);
if (player_exists) { 
	if (obj_tank_pilot.weapon == 1) {
		visible = false;
	} else
		visible = true;
}