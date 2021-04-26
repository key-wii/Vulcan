var player_exists = false;
player_exists = instance_exists(obj_tank_pilot);
if(player_exists) distanceToPlayer = distance_to_object(obj_tank_pilot);
if (moveOverride == false && player_exists == true) {
	direction = point_direction(x, y, obj_tank_pilot.x, obj_tank_pilot.y);
	var xx = lengthdir_x(distanceToPlayer, direction + adjust_dir);
	var yy = lengthdir_y(distanceToPlayer, direction + adjust_dir);
	//Approaches player
	if (go = true) {
	mp_potential_step_object(xx, yy, 5, obj_wallandenemymoveandenemycontrollerparent_parent);
	} if (go = false) {
		//Stops moving if player is too close
		if (player_distance = 1) {
			speed = 0;
	
			//Backs away if player is even closer, attempting to keep distance
		} if (player_distance = 2) {
			mp_potential_step_object(xx, yy, -4, obj_wallandenemymoveandenemycontrollerparent_parent);
		} if (player_distance = 3) {
			mp_potential_step_object(xx, yy, -8, obj_wallandenemymoveandenemycontrollerparent_parent);
		} if (player_distance = 4) {
			mp_potential_step_object(xx, yy, -10, obj_wallandenemymoveandenemycontrollerparent_parent);
			speedCheckTick = 0;
		} if (player_distance = 10) {
			mp_potential_step_object(xx, yy, -18, obj_wallandenemymoveandenemycontrollerparent_parent);
			speedCheckTick = 0;
		} if (player_distance = 11) {
			mp_potential_step_object(xx, yy, -24, obj_wallandenemymoveandenemycontrollerparent_parent);
			speedCheckTick = 0;
		} if (player_distance = 12) {
			mp_potential_step_object(xx, yy, -30, obj_wallandenemymoveandenemycontrollerparent_parent);
			speedCheckTick = 0;
		} if (player_distance = 13) {
			mp_potential_step_object(xx, yy, -40, obj_wallandenemymoveandenemycontrollerparent_parent);
			speedCheckTick = 0;
		}
	}
}
if (top_speed) alarm_set(0, 1);
else alarm_set(0, 2);