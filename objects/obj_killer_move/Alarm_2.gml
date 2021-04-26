if (!instance_exists(obj_tank_pilot)) exit;

//audio_play_sound(snd_spawn_killer, false, false);
var edgeL = 850; var edgeR = room_width - 950;
var edgeU = 700; var edgeD = room_height - 760;
if (x < edgeL + 200 || x > edgeR - 200 ||
	y < edgeU + 200 || y > edgeD - 200) {
		var nearWall = true;
} else nearWall = false;

var ddis = point_distance(x, y, obj_tank_pilot.x, obj_tank_pilot.y);
if (nearWall) {
	var wall = instance_nearest(x, y, obj_wall1);
	var ddir = point_direction(wall.x, wall.y, x, y);
	var xx = lengthdir_x(teleRadius + ddis, ddir + clamp(teleAdjust, -45, 45));
	var yy = lengthdir_y(teleRadius + ddis, ddir + clamp(teleAdjust, -45, 45));
} else {
	var teleRad = teleRadius;
	if (ddis > teleRad)
		var ddir = point_direction(x, y, obj_tank_pilot.x, obj_tank_pilot.y);
	else var ddir = point_direction(obj_tank_pilot.x, obj_tank_pilot.y, x, y);
	var xx = lengthdir_x(teleRadius, ddir + (teleAdjust * teleRot));
	var yy = lengthdir_y(teleRadius, ddir + (teleAdjust * teleRot));
}

xx += x; yy += y;
if (xx > edgeR) xx = edgeR; if (xx < edgeL) xx = edgeL;
if (yy > edgeD) yy = edgeD; if (yy < edgeU) yy = edgeU;
x = xx; y = yy;
owner.x = x; owner.y = y;

teleAdjust += 60 * teleRot;
if (teleAdjust == 240) teleAdjust = -180;
else if (teleAdjust == -240) teleAdjust = 180;
if (x > edgeL + 200 && x < edgeR - 200 &&
	y > edgeD + 200 && y < edgeU - 200 && !dodged) teleRot *= -1;
dodged = false;