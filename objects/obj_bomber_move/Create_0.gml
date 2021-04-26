event_inherited();
owner = id;
hp = 10;
spd = 9;
alarm_set(1, 1);
alarm_set(0, 1);
friction = 0;

moveStart = true;
ddir = direction;
sspd = spd;
rushing = true;

ddddir = 0;
count = 0;

prev_x = x;
prev_y = y;

just_spawned = false;
initial_dir = 0;

alarm_set(7, 3);
if instance_exists(obj_tank_pilot) {
	var xxx = obj_tank_pilot.x;
	var yyy = obj_tank_pilot.y;
	var dddir = point_direction(x, y, xxx, yyy);
	var dis = point_distance(x, y, xxx, yyy);
	
	var length = 900;
	if (dis < 800) length += clamp(800 - dis, 0, 800);
	xx = xxx + lengthdir_x(length, dddir);
	yy = yyy + lengthdir_y(length, dddir);
	alarm_set(2, 120);
} else instance_destroy();

alarm_set(3, 45);