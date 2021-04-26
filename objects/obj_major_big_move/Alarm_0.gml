if (!instance_exists(owner)) exit;
if (owner.gunning && owner.grenading) {
	speed = 0;
	alarm_set(0, 1);
	exit;
}
if (owner.charging) {
	speed = 0;
	alarm_set(0, 1);
	exit;
}

var player_exists = false;
player_exists = instance_exists(obj_tank_pilot);
if (!moveOverride && player_exists) {
	//Approaches player
	if (go = true) {
		mp_potential_step_object(obj_tank_pilot.x, obj_tank_pilot.y, spd, obj_wallandenemymoveparent_parent);
	} if (go = false) {
	//Stops moving if player is too close
	if (player_distance = 1) {
		direction = point_direction(x, y, obj_tank_pilot.x, obj_tank_pilot.y);
		speed = 0;
	
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

if (owner.flaming && (direction < last_dir - 60 || direction > last_dir + 60) && spd > 4) {
	if (instance_number(obj_burst_boss_e) == 0) {
		var burst = instance_create_layer(owner.x, owner.y, "Enemy", obj_burst_boss_e);
		burst.owner = id;
	}
}

alarm_set(0, 1);