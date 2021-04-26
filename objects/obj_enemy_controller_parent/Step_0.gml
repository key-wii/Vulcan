if (just_collided) {
	var ddir = point_direction(collided_with.x, collided_with.y, x, y);
	x += lengthdir_x(2, ddir);
	y += lengthdir_y(2, ddir);
	coll_count++;
}
if (coll_count >= 40) just_collided = false;