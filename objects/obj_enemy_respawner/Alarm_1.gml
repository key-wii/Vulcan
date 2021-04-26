if (burnt < 1) {
	var xx = lengthdir_x(92, direction);
	var yy = lengthdir_y(92, direction);
	var bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_bouncer_black_e2);
	bull.direction = direction;
	bull.image_angle = direction;
	bull.speed = 2;
	bull.orig_speed = 2;
	bull.image_xscale = 2;
	bull.image_yscale = 2;
}
if (start) alarm_set(10, 1);
else alarm_set(10, 25);

if (burnt >= 1) exit;
x_adjust = lengthdir_x(3, direction + 180);
y_adjust = lengthdir_y(3, direction + 180);
alarm_set(9, 4);