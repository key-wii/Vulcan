//get unstuck if stuck inside another enemy for 2 seconds straight
if (instance_position(x, y, obj_enemy_move_parent) != id) {
	if (touchCount < 120) {
		touchCount++;
		exit;
	}
	if (id > other.id) {
		x += 2;
		y += 2;
	} else {
		x -= 2;
		y -= 2;
	}
} else {
	touchCount = 0;
}