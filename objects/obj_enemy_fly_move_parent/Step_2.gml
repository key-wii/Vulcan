var player_exists = instance_exists(obj_tank_pilot);
if(player_exists) {
	distanceToPlayer = distance_to_object(obj_tank_pilot);
}
if (moveOverride == false && go == true) {
	if (speed > topSpeed) speed = topSpeed;
	if (speed > topSpeed - 3) speedCheckTick += 1;
	else speedCheckTick = 0;
	if (speedCheckTick > 0 && speed > topSpeed - 1) speed = topSpeed - 1;
	if (speedCheckTick > 1 && speed > topSpeed - 2) speed = topSpeed - 2;
	if (speedCheckTick > 2 && speed > topSpeed - 3) speed = topSpeed - 3;
}