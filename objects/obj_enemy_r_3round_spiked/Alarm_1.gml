if (burnt < 1) {
	var bull = instance_create_layer(x, y, "Enemy_Bullets", obj_rocket_e);
	bull.direction = direction;
	bull.image_angle = direction;
	bull.speed = 12;
}
alarm_set(2, 10);

if (burnt >= 1) exit;
x_adjust = lengthdir_x(2, direction + 180);
y_adjust = lengthdir_y(2, direction + 180);
alarm_set(9, 3);