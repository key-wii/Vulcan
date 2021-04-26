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

if (keyboard_check(ord("A")) && !too_many_keys && !opposing_keys) {
	//burst
	if (can_move && !shielding && just_moved && last_Hdir = Hdir.right && !touching_wall) {
			hspeed = -burstSpeed;
			moving = true; burst = true;
			last_Hdir = Hdir.left;
			if (alarm_reset) {
				//instance_create_layer(obj_tank_pilot.x, obj_tank_pilot.y, "Player", obj_burst);
				alarm_set(5, 10); alarm_reset = false;
			}
	//movement
	} else if (can_move = true && shielding = false) {
		hspeed += -6;
		moving = true;
		just_moved = true;
		if (alarm_get(5) == 0) alarm_set(5, 95);
		last_Hdir = Hdir.left;
		alarm_set(4, 20);
	} 
}
if (keyboard_check(ord("D")) && !too_many_keys && !opposing_keys) {
	//burst
	if (can_move && !shielding && just_moved && last_Hdir = Hdir.left && !touching_wall) {
			hspeed = burstSpeed;
			moving = true; burst = true;
			last_Hdir = Hdir.right;
			if (alarm_reset) {
				//instance_create_layer(obj_tank_pilot.x, obj_tank_pilot.y, "Player", obj_burst);
				alarm_set(5, 10); alarm_reset = false;
			}
	//movement
	} else if (can_move = true && shielding = false) {
		hspeed += 6;
		moving = true;
		just_moved = true;
		if (alarm_get(5) == 0) alarm_set(5, 95);
		last_Hdir = Hdir.right;
		alarm_set(4, 20);
	}
}
if (keyboard_check(ord("S")) && !too_many_keys && !opposing_keys) {
	//burst
	if (can_move && !shielding && just_moved && last_Vdir = Vdir.up && !touching_wall) {
			vspeed = burstSpeed;
			moving = true; burst = true;
			last_Vdir = Vdir.down;
			if (alarm_reset) {
				//instance_create_layer(obj_tank_pilot.x, obj_tank_pilot.y, "Player", obj_burst);
				alarm_set(5, 10); alarm_reset = false;
			}
	//movement
	} else if (can_move = true && shielding = false) {
		vspeed += 6;
		moving = true;
		just_moved = true;
		if (alarm_get(5) == 0) alarm_set(5, 95);
		last_Vdir = Vdir.down;
		alarm_set(4, 20);
	} 
}
if (keyboard_check(ord("W")) && !too_many_keys && !opposing_keys) {
	//burst
	if (can_move && !shielding && just_moved && last_Vdir = Vdir.down && !touching_wall) {
			vspeed = -burstSpeed;
			moving = true; burst = true;
			last_Vdir = Vdir.up;
			if (alarm_reset) {
				//instance_create_layer(obj_tank_pilot.x, obj_tank_pilot.y, "Player", obj_burst);
				alarm_set(5, 10); alarm_reset = false;
			}
	//movement
	} else if (can_move = true && shielding = false) {
		vspeed += -6;
		moving = true;
		just_moved = true;
		if (alarm_get(5) == 0) alarm_set(5, 95);
		last_Vdir = Vdir.up;
		alarm_set(4, 20);
	}
}
//stop
if (keyboard_check(ord("A")) == false && keyboard_check(ord("D")) == false &&
	keyboard_check(ord("S")) == false && keyboard_check(ord("W")) == false) {
		friction = 2;
} else {
	friction = 0;
}

//Movement Speed Cap
if (burst == false) {
	if(speed > topSpeed) {
		speed = topSpeed;
	}
	if(speed < -topSpeed) {
		speed = -topSpeed;
	}
}
if (burst == true) {
	if(speed > burstSpeed) {
		speed = burstSpeed;
	}
	if(speed < -burstSpeed) {
		speed = -burstSpeed;
	}
}

prevVspeed = vspeed;
prevHspeed = hspeed;
/*if (bump_tick > 0) {
	bump_tick -= 1;
	gravity -= 1;
} else {
	alarm_set(1, 1);
}*/

if (x < 550 + 256 || x > room_width - 630 - 256 ||
	y < 350 + 256 || y > room_height - 440 - 256) {
		x = xInside;
		y = yInside;
}