var player_exists = false;
player_exists = instance_exists(obj_tank_pilot);
if (moveOverride == false && player_exists == true) {
	//Approaches player
	if (go = true) {
	mp_potential_step_object(obj_tank_pilot.x, obj_tank_pilot.y, spd + speedBoost, obj_wallandenemymoveparent_parent);
} if (go = false) {
	//Stops moving if player is too close
	if (player_distance = 1) {
		direction = point_direction(x, y, obj_tank_pilot.x, obj_tank_pilot.y);
		speed = 0;
	
	//Backs away if player is even closer, attempting to keep distance
	} else if (player_distance = 2) {
		mp_potential_step_object(obj_tank_pilot.x, obj_tank_pilot.y, -10, obj_wallandenemymoveparent_parent);
		speedCheckTick = 0;
	} else if (player_distance = 3) {
		mp_potential_step_object(obj_tank_pilot.x, obj_tank_pilot.y, -18, obj_wallandenemymoveparent_parent);
		speedCheckTick = 0;
	} else if (player_distance = 4) {
		mp_potential_step_object(obj_tank_pilot.x, obj_tank_pilot.y, -25, obj_wallandenemymoveparent_parent);
		speedCheckTick = 0;
	}
}
}
if (too_fast) alarm_set(0, 1);
else alarm_set(0, 2);