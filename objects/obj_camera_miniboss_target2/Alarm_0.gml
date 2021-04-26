if (!instance_exists(owner)) {
	with (obj_camera) target = obj_tank_pilot;
	alarm_set(2, 1);
}
if (!instance_exists(obj_tank_pilot) || !instance_exists(owner))
	exit;

//get midpoint between player and boss
full = point_distance(obj_tank_pilot.x, obj_tank_pilot.y, owner.x, owner.y);
var cam = full / 5;

var maxMidpoint = 700;
if (cam > 435 && cam <= maxMidpoint) {
	with (obj_camera) {
		cameraWidth = cam * 2 * 1.5;
		cameraHeight = cam * 2;
		alarm_set(11, 1);
	}
} else if (cam > maxMidpoint) {
	with (obj_camera) {
		cameraWidth = maxMidpoint * 2 * 1.5;
		cameraHeight = maxMidpoint * 2;
		alarm_set(11, 1);
	}
} else {
	with (obj_camera) {
		cameraWidth = 1350;
		cameraHeight = 900;
		alarm_set(11, 1);
	}
}

ddir = point_direction(obj_tank_pilot.x, obj_tank_pilot.y, owner.x, owner.y)
var notMid = 0;
if (cam > maxMidpoint) notMid = cam - maxMidpoint;
midXlen = lengthdir_x(cam - notMid, ddir);
midYlen = lengthdir_y(cam - notMid, ddir);
x = obj_tank_pilot.x + midXlen;
y = obj_tank_pilot.y + midYlen;

alarm_set(0, 1);