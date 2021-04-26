if (damage >= hp) instance_destroy();

prev_x = x;
prev_y = y;
if (instance_exists(owner)) {
	var dis = ((sprite_width / 2) + 20) * image_xscale;
	x = owner.x + lengthdir_x(dis, owner.direction);
	y = owner.y + lengthdir_y(dis, owner.direction);
	direction = owner.direction;
}