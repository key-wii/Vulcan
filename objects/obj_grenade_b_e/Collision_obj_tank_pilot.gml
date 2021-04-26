if (lethal == false) exit;

with(other) {
	x_adjust = lengthdir_x(8, point_direction(other.x, other.y, x, y));
	y_adjust = lengthdir_y(8, point_direction(other.x, other.y, x, y));
}
instance_change(obj_explosion_grenade_e, true);
speed = 1;
image_xscale = 1.5;
image_yscale = 1.5;