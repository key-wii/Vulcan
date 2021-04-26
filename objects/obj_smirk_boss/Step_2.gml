var owner_exists = instance_exists(owner);
if (owner_exists) {
	x = owner.x + 22 - h_move;
	y = owner.y - 33 + v_move;
}
if (moving == true) {
	h_move += acceleration * 1.1;
	v_move += acceleration * 1.8;
	if (acceleration < 1.5) acceleration += .5;
}