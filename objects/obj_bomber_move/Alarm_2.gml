if instance_exists(obj_tank_pilot) {
	var xxx = obj_tank_pilot.x;
	var yyy = obj_tank_pilot.y;
	var dddir = point_direction(x, y, xxx, yyy);
	var dis = point_distance(x, y, xxx, yyy);
	
	var length = 900;
	if (dis < 800) length += clamp(800 - dis, 0, 800);
	xx = xxx + lengthdir_x(length, dddir);
	yy = yyy + lengthdir_y(length, dddir);
	moveStart = true;
	rushing = true;
	sspd = spd;
	ddir = direction;
	alarm_set(2, 120);
} else instance_destroy();