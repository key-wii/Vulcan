if (dead) {
	//Point at player
	var player_exists = false;
	player_exists = instance_exists(obj_tank_pilot);
	if (player_exists) direction = point_direction(x, y, obj_tank_pilot.x, obj_tank_pilot.y);
	exit;
}

phs[0] += spd;
headx[0] = x + rad[0] * dcos(phs[0]) * radiusMultiplier;
heady[0] = y - rad[0] * dsin(phs[0]) * radiusMultiplier;

phs[1] += spd;
headx[1] = x + rad[1] * dcos(phs[1]) * radiusMultiplier;
heady[1] = y - rad[1] * dsin(phs[1]) * radiusMultiplier;

phs[2] += spd;
headx[2] = x + rad[2] * dcos(phs[2]) * radiusMultiplier;
heady[2] = y - rad[2] * dsin(phs[2]) * radiusMultiplier;

//increase/decrease radius
if (radDown)
	if (radius > minRadius) radius -= 1;
	else radDown = false;
else
	if (radius < maxRadius) radius += 1;
	else radDown = true;
if (radius < 170) rotCount += rotDir * 1.5;
else if (radius < 190) rotCount += rotDir;
else rotCount += rotDir / 2;
xx1 = lengthdir_x(radius, direction + 210 + rotCount); yy1 = lengthdir_y(radius, direction + 210 + rotCount);
xx2 = lengthdir_x(radius, direction + 330 + rotCount); yy2 = lengthdir_y(radius, direction + 330 + rotCount);
xx3 = lengthdir_x(radius, direction + 90 + rotCount);  yy3 = lengthdir_y(radius, direction + 90 + rotCount);
rad[0] = point_distance(x, y, x + xx1, y + yy1); phs[0] = point_direction(x, y, x + xx1, y + yy1);
rad[1] = point_distance(x, y, x + xx2, y + yy2); phs[1] = point_direction(x, y, x + xx2, y + yy2);
rad[2] = point_distance(x, y, x + xx3, y + yy3); phs[2] = point_direction(x, y, x + xx3, y + yy3);
radiusMultiplier = radius / 90;