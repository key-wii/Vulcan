var player_exists = instance_exists(obj_tank_pilot);
if (player_exists) {
	x = obj_tank_pilot.x + 22 - h_move;
	y = obj_tank_pilot.y - 33 + v_move;
}
if (moving == true) {
	h_move += acceleration * 1.1;
	v_move += acceleration * 1.8;
	if (acceleration < 1.5) acceleration += .5;
}