event_inherited();

if (shield != id) with (shield) {
	var dis = ((sprite_width / 2) + 20) * image_xscale;
	x = owner.x + lengthdir_x(dis, owner.direction);
	y = owner.y + lengthdir_y(dis, owner.direction);
	direction = owner.direction;
}