var player_exists = false;
player_exists = instance_exists(obj_tank_pilot);
if (moveOverride == false && player_exists == true) {
	//Approaches player
	if (go = true) {
		/*mp_potential_step_object(obj_tank_pilot.x, obj_tank_pilot.y, 3.5, obj_wall1);
	} if (go = false) {
	//Stops moving if player is too close
	if (player_distance = 1) {
		direction = point_direction(x, y, obj_tank_pilot.x, obj_tank_pilot.y);
		speed = 0;
	
	//Backs away if player is even closer, attempting to keep distance
	} if (player_distance = 2) {
		mp_potential_step_object(obj_tank_pilot.x, obj_tank_pilot.y, -4, obj_wall1);
	} if (player_distance = 3) {
		mp_potential_step_object(obj_tank_pilot.x, obj_tank_pilot.y, -8, obj_wall1);
	} if (player_distance = 4) {
		mp_potential_step_object(obj_tank_pilot.x, obj_tank_pilot.y, -10, obj_wall1);
		speedCheckTick = 0;
	} if (player_distance = 10) {
		mp_potential_step_object(obj_tank_pilot.x, obj_tank_pilot.y, -18, obj_wall1);
		speedCheckTick = 0;
	} if (player_distance = 11) {
		mp_potential_step_object(obj_tank_pilot.x, obj_tank_pilot.y, -24, obj_wall1);
		speedCheckTick = 0;
	} if (player_distance = 12) {
		mp_potential_step_object(obj_tank_pilot.x, obj_tank_pilot.y, -30, obj_wall1);
		speedCheckTick = 0;
	} if (player_distance = 13) {
		mp_potential_step_object(obj_tank_pilot.x, obj_tank_pilot.y, -40, obj_wall1);
		speedCheckTick = 0;
	}*/
	mp_potential_step_object(obj_tank_pilot.x, obj_tank_pilot.y, spd + speedBoost, obj_wallandenemymoveandenemycontrollerparent_parent);
} if (go = false) {
	//Stops moving if player is too close
	if (player_distance = 1) {
		direction = point_direction(x, y, obj_tank_pilot.x, obj_tank_pilot.y);
		speed = 0;
	
	//Backs away if player is even closer, attempting to keep distance
	} else if (player_distance = 2) {
		mp_potential_step_object(obj_tank_pilot.x, obj_tank_pilot.y, -4, obj_wallandenemymoveandenemycontrollerparent_parent);
	} else if (player_distance = 3) {
		mp_potential_step_object(obj_tank_pilot.x, obj_tank_pilot.y, -8, obj_wallandenemymoveandenemycontrollerparent_parent);
	} else if (player_distance = 4) {
		mp_potential_step_object(obj_tank_pilot.x, obj_tank_pilot.y, -10, obj_wallandenemymoveandenemycontrollerparent_parent);
		speedCheckTick = 0;
	} else if (player_distance = 10) {
		mp_potential_step_object(obj_tank_pilot.x, obj_tank_pilot.y, -18, obj_wallandenemymoveandenemycontrollerparent_parent);
		speedCheckTick = 0;
	} else if (player_distance = 11) {
		mp_potential_step_object(obj_tank_pilot.x, obj_tank_pilot.y, -24, obj_wallandenemymoveandenemycontrollerparent_parent);
		speedCheckTick = 0;
	} else if (player_distance = 12) {
		mp_potential_step_object(obj_tank_pilot.x, obj_tank_pilot.y, -30, obj_wallandenemymoveandenemycontrollerparent_parent);
		speedCheckTick = 0;
	} else if (player_distance = 13) {
		mp_potential_step_object(obj_tank_pilot.x, obj_tank_pilot.y, -40, obj_wallandenemymoveandenemycontrollerparent_parent);
		speedCheckTick = 0;
	}
}
}
if (too_fast) alarm_set(0, 1);
else alarm_set(0, 2);