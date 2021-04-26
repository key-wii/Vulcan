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