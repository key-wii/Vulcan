if (!instance_exists(owner)) {
	with (obj_camera) target = obj_tank_pilot;
	alarm_set(2, 1);
}
if (!instance_exists(obj_tank_pilot) || !instance_exists(owner))
	exit;

//get midpoint between player and boss
/*if (point_distance(obj_tank_pilot.x, obj_tank_pilot.y, owner.x, owner.y) > 300) {
	var ddir = point_direction(obj_tank_pilot.x, obj_tank_pilot.y, owner.x, owner.y);
	var xx = lengthdir_x(256, ddir + 180);
	var yy = lengthdir_y(256, ddir + 180);
} else { xx = 0; yy = 0; }*/
var xx = owner.x; var yy = owner.y;
full = point_distance(obj_tank_pilot.x, obj_tank_pilot.y, xx, yy);
var cam = full / 2;

var maxMidpoint = 400;
if (cam > 335 && cam <= maxMidpoint) {
	with (obj_camera) {
		cameraWidth = clamp(cam * 2 * 1.5 * 1.25, 1350 * 1.25, 99999);
		cameraHeight = clamp(cam * 2 * 1.25, 900 * 1.25, 99999);
		alarm_set(11, 1);
	}
} else if (cam > maxMidpoint) {
	with (obj_camera) {
		cameraWidth = clamp(maxMidpoint * 2 * 1.5 * 1.25, 1350 * 1.25, 99999);
		cameraHeight = clamp(maxMidpoint * 2 * 1.25, 900 * 1.25, 99999);
		alarm_set(11, 1);
	}
} else {
	with (obj_camera) {
		cameraWidth = 1350 * 1.25;
		cameraHeight = 900 * 1.25;
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