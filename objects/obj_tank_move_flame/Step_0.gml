var player_exists = instance_exists(obj_tank_pilot);
if(!player_exists) exit;

if (keyboard_check(ord("W")) && keyboard_check(ord("A")) && keyboard_check(ord("S")) ||
	keyboard_check(ord("W")) && keyboard_check(ord("A")) && keyboard_check(ord("D")) ||
	keyboard_check(ord("A")) && keyboard_check(ord("S")) && keyboard_check(ord("D")) ||
	keyboard_check(ord("A")) && keyboard_check(ord("S")) && keyboard_check(ord("D")) ||
	keyboard_check(ord("W")) && keyboard_check(ord("A")) && keyboard_check(ord("S"))
	&& keyboard_check(ord("D"))) {
		too_many_keys = true;
} else {
	too_many_keys = false;
}
if (keyboard_check(ord("W")) && keyboard_check(ord("S")) ||
	keyboard_check(ord("A")) && keyboard_check(ord("D"))) {
		opposing_keys = true;
} else {
	opposing_keys = false;
}
if (vdir && hdir) var diagonal = true;
else var diagonal = false;
var sideSpeed = (10 + top_speed_boost) / sqrt(2);

if (keyboard_check(ord("A")) && just_touched_wall == false && too_many_keys == false && opposing_keys == false) {
	if(can_move && diagonal && hspeed != -sideSpeed &&
		direction != 0 && direction != 90 &&
		direction != 180 && direction != 270) {
			hspeed = -sideSpeed;
			hdir = true;
			if (diagonal) {
				switch (instance_number(obj_burst)) {
					case (0): instance_create_layer(obj_tank_pilot.x, obj_tank_pilot.y, "Player", obj_burst); break;
					case (1): alarm_set(9, 1); break;
					case (2): alarm_set(9, 3); break;
					case (3): alarm_set(9, 3); break;
				}
			}
	} else if (!diagonal) {
		hspeed = -slowSpeed;
		hdir = true;
	}
}
if (keyboard_check(ord("D")) && just_touched_wall == false && too_many_keys == false && opposing_keys == false) {
	if(can_move && diagonal && hspeed != sideSpeed &&
		direction != 0 && direction != 90 &&
		direction != 180 && direction != 270) {
			hspeed = sideSpeed;
			hdir = true;
			if (diagonal) {
				switch (instance_number(obj_burst)) {
					case (0): instance_create_layer(obj_tank_pilot.x, obj_tank_pilot.y, "Player", obj_burst); break;
					case (1): alarm_set(9, 1); break;
					case (2): alarm_set(9, 3); break;
					case (3): alarm_set(9, 3); break;
				}
			}
	} else if (!diagonal) {
		hspeed = slowSpeed;
		hdir = true;
	}
}
if (keyboard_check(ord("W")) && just_touched_wall == false && too_many_keys == false && opposing_keys == false) {
	if(can_move && diagonal && vspeed != -sideSpeed &&
		direction != 0 && direction != 90 &&
		direction != 180 && direction != 270) {
			vspeed = -sideSpeed;
			vdir = true;
			if (diagonal) {
				switch (instance_number(obj_burst)) {
					case (0): instance_create_layer(obj_tank_pilot.x, obj_tank_pilot.y, "Player", obj_burst); break;
					case (1): alarm_set(9, 1); break;
					case (2): alarm_set(9, 3); break;
					case (3): alarm_set(9, 3); break;
				}
			}
	} else if (!diagonal) {
		vspeed = -slowSpeed;
		vdir = true;
	}
}
if (keyboard_check(ord("S")) && just_touched_wall == false && too_many_keys == false && opposing_keys == false) {
	if(can_move && diagonal && vspeed != sideSpeed &&
		direction != 0 && direction != 90 &&
		direction != 180 && direction != 270) {
			vspeed = sideSpeed;
			vdir = true;
			if (diagonal) {
				switch (instance_number(obj_burst)) {
					case (0): instance_create_layer(obj_tank_pilot.x, obj_tank_pilot.y, "Player", obj_burst); break;
					case (1): alarm_set(9, 1); break;
					case (2): alarm_set(9, 3); break;
					case (3): alarm_set(9, 3); break;
				}
			}
	} else if (!diagonal) {
		vspeed = slowSpeed;
		vdir = true;
	}
}

if (vdir && hdir) diagonal = true;
else diagonal = false;
if (burst = false && can_move) {
	if (hspeed > slowSpeed) hspeed = sideSpeed;
	if (vspeed > slowSpeed) vspeed = sideSpeed;
	if (hspeed < -slowSpeed) hspeed = -sideSpeed;
	if (vspeed < -slowSpeed) vspeed = -sideSpeed;
}
if (diagonal) {
	if (direction >= 0 && direction < 90) direction = 45;
	else if (direction >= 90 && direction < 180) direction = 135;
	else if (direction >= 180 && direction < 270) direction = 225;
	else if (direction >= 270 && direction < 360) direction = 315;
}
/*if (hspeed > 11) hspeed = 11;
if (vspeed > 11) vspeed = 11;
if (hspeed < -11) hspeed = -11;
if (vspeed < -11) vspeed = -11;*/

/*if (bump_tick > 0) {
	bump_tick -= 1;
	gravity -= 1;
} else {
	alarm_set(1, 1);
}*/