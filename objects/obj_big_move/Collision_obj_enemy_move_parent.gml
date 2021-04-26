var player_exists = instance_exists(obj_tank_pilot);
if(!player_exists) exit;

//if (touching_enemy == false) normalspeed = speed;

//Bounce off enemy when colliding
touching_enemy = true;
touchingTick += 1;
move_bounce_solid(false);
speed += 4;
touching_enemy_boost = true;
//Prevents enemies from getting stuck while inside player radius and backs up to get out of radius
if (go == false) {
	if (distanceToPlayer > other.distanceToPlayer) {
		moveOverride = true;
		//mp_potential_step_object(obj_enemy_move_parent.x, obj_enemy_move_parent.y, speed, obj_wall1);
		mp_potential_step_object(obj_tank_pilot.x, obj_tank_pilot.y, -(other.speed+12), obj_wall1);
		if (speed > 20) speed = 20;
		if (speed < -20) speed = -20;
	} else moveOverride = false;
} else {
	//Prevents enemies from getting stuck while outside player radius
	if (touchingTick > 10) {
		moveOverride = true;
		mp_potential_step_object(obj_enemy_move_parent.x, obj_enemy_move_parent.y, speed, obj_wall1);
		if (speed > 20) speed = 20;
	}
}

if (place_meeting(x, y, other)) {
	for (var i = 0; i < 1000; ++i) {
		if (!place_meeting(x + i, y, other)) {
			x += i;
			break;
		}
		if (!place_meeting(x - i, y, other)) {
			x -= i;
			break;
		}
		if (!place_meeting(x, y - i, other)) {
			y -= i;
			break;
		}
		if (!place_meeting(x, y + i, other)) {
			y += i;
			break;
		}
		if (!place_meeting(x + i, y - i, other)) {
			x += i;
			y -= i;
			break;
		}
		if (!place_meeting(x - i, y - i, other)) {
			x -= i;
			y -= i;
			break;
		}
		if (!place_meeting(x + i, y + i, other)) {
			x += i;
			y += i;
			break;
		}
		if (!place_meeting(x - i, y + i, other)) {
			x -= i;
			y += i;
			break;
		}
	}
}