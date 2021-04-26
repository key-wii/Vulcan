if (just_spawned && count < 10) {
	speed = 18;
	count++;
	alarm_set(0, 1);
	exit;
} else if (just_spawned && count < 25) {
	if (count < 12) direction += initial_dir;
	owner.image_angle = direction;
	speed = 20;
	count++;
	alarm_set(0, 1);
	alarm_set(2, 1);
	exit;
} else if (just_spawned) {
	just_spawned = false;
	count = 0;
	moveStart = false;
}

if (x > x + xx - 92 && x < x + xx + 92 && y > y + yy - 92 && y < y + yy + 92 && alarm_get(2) > 90) {
	rushing = false;
	sspd = 0;
	ddir = direction;
	alarm_set(2, 90);
}

var player_exists = false;
player_exists = instance_exists(obj_tank_pilot);
if (moveOverride == false && player_exists == true) {
	//Approaches player
	if !(x > x + xx - 92 && x < x + xx + 92 && y > y + yy - 92 && y < y + yy + 92) {
		mp_potential_step_object(xx, yy, sspd + speedBoost, obj_wallandenemymoveparent_parent);
		ddir = direction;
	} else rushing = false;
	if (moveStart) {
		ddir = point_direction(x, y, xx, yy);
		moveStart = false;
		rushing = true;
	}
}

if (speed < 5) rushing = false;
alarm_set(0, 1);
/*
if ((x > x + xx - 82 || x < x + xx + 82 || y > y + yy - 82 || y < y + yy + 82) && alarm_get(2) > 90) {
	rushing = false;
	sspd = 0;
	ddir = direction;
	alarm_set(2, 90);
}

var player_exists = false;
player_exists = instance_exists(obj_tank_pilot);
if (moveOverride == false && player_exists == true) {
	//Approaches player
	if !(x > x + xx - 82 || x < x + xx + 82 || y > y + yy - 82 || y < y + yy + 82) {
		mp_potential_step_object(xx, yy, sspd + speedBoost, obj_wallandenemymoveparent_parent);
		ddir = direction;
	} else rushing = false;
	if (moveStart) {
		ddir = point_direction(x, y, xx, yy);
		moveStart = false;
		rushing = true;
	}
}

if (speed < 5) rushing = false;
alarm_set(0, 1);