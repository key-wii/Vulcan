event_inherited();

if (!instance_exists(owner)) exit;
if (!owner.flaming) exit;
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
if (owner.windup) {
	speed = 1;
}
if (!instance_exists(obj_tank_pilot) || !instance_exists(obj_enemy_parent)) exit;
var swing = audio_sound_is_playable(snd_devil_swing);
if (owner.spinSpd > 12 || owner.spinSpd < -12 && swing) {
	var pDis = point_distance(x, y, obj_tank_pilot.x, obj_tank_pilot.y);
	var closeEnemy = enemy_closest(x, y, obj_enemy_parent);
	if (closeEnemy != noone)
		var eDis = point_distance(x, y, closeEnemy.x, closeEnemy.y);
	else var eDis = 0;
	speed += 2;
	if (pDis < 500) exit;
	if (pDis > 600) speed += 1;
	if (pDis > 700) speed += 1;
	if (pDis > 800) speed += 1;
	if (pDis > 900) speed += 2;
	if (eDis > 700) speed += 1;
	if (eDis > 800) speed += 1;
	if (eDis > 900) speed += 1;
}

dirCount++;
if (dirCount mod 10 == 0) last_dir = direction;