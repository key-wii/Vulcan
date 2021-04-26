var player_exists = instance_exists(obj_tank_pilot);
if(!player_exists) exit;

//if (touching_enemy == false) normalspeed = speed;

//Bounce off enemy when colliding
touching_enemy = true;
touchingTick += 1;
move_bounce_solid(false);
speed += 3;
touching_enemy_boost = true;
//Prevents enemies from getting stuck while inside player radius and backs up to get out of radius
if (go == false) {
	if (distanceToPlayer > other.distanceToPlayer) {
		moveOverride = true;
		//mp_potential_step_object(obj_enemy_move_parent.x, obj_enemy_move_parent.y, speed, obj_wall1);
		mp_potential_step_object(obj_tank_pilot.x, obj_tank_pilot.y, -(other.speed+12), obj_wall1);
		if (speed > 10) speed = 10;
		if (speed < -10) speed = -10;
	} else moveOverride = false;
} else {
	//Prevents enemies from getting stuck while outside player radius
	if (touchingTick > 10) {
		moveOverride = true;
		mp_potential_step_object(obj_enemy_move_parent.x, obj_enemy_move_parent.y, speed, obj_wall1);
		if (speed > 10) speed = 10;
	}
}