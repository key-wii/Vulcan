var player_exists = instance_exists(obj_tank_pilot);
if (!player_exists) exit;

if (instance_nearest(x, y, obj_enemy_dizzy_boss_rematch) < 100) {
	direction = point_direction(x, y, obj_tank_pilot.x, obj_tank_pilot.y);
	speed = -1;
	alarm_set(2, 300);
}

if (!moveOverride && player_exists) {
	//Approaches player
	if (go = true) {
		mp_potential_step_object(obj_tank_pilot.x, obj_tank_pilot.y, spd, obj_wallandenemymoveparent_parent);
	} if (go = false) {
	//Stops moving if player is too close
	if (player_distance = 1) {
		direction = point_direction(x, y, obj_tank_pilot.x, obj_tank_pilot.y);
		speed = 0;
		alarm_set(2, 300);
	
		//Backs away if player is even closer, attempting to keep distance
		} if (player_distance = 2) {
			mp_potential_step_object(obj_tank_pilot.x, obj_tank_pilot.y, -7 + burntSlow, obj_wallandenemymoveparent_parent);
			speedCheckTick = 0;
		} if (player_distance = 3) {
			mp_potential_step_object(obj_tank_pilot.x, obj_tank_pilot.y, -13 + burntSlow, obj_wallandenemymoveparent_parent);
			speedCheckTick = 0;
		} if (player_distance = 4) {
			mp_potential_step_object(obj_tank_pilot.x, obj_tank_pilot.y, -18 + burntSlow, obj_wallandenemymoveparent_parent);
			speedCheckTick = 0;
		}
	}
}

alarm_set(0, 1);