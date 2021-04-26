event_inherited();

if (!instance_exists(owner)) exit;
if (direction > 0   && direction <  90) direction = 45;
else if (direction > 90  && direction < 180) direction = 135;
else if (direction > 180 && direction < 270) direction = 225;
else if (direction > 270 && direction < 360) direction = 315;
else speed = spd / 3;
var nearWall = instance_nearest(x, y, obj_wall1);
if (point_distance(x, y, nearWall.x, nearWall.y) < 150) {
	var ddir = point_direction(nearWall.x, nearWall.y, x, y);
	x += lengthdir_x(10, ddir);
	y += lengthdir_y(10, ddir);
	direction += 180;
	spd += .5;
}
if (!instance_exists(obj_tank_pilot)) exit;
var pDis = point_distance(x, y, obj_tank_pilot.x, obj_tank_pilot.y);
speed += 2;
if (pDis < 500) exit;
if (pDis > 600) speed += 1;
if (pDis > 700) speed += 1;
if (pDis > 800) speed += 1;
if (pDis > 900) speed += 2;