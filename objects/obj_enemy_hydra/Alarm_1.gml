if (burnt < 1) {
	var bull = instance_create_layer(x, y, "Enemy_Bullets", obj_rocket_e);
	bull.direction = direction;
	bull.image_angle = direction;
	bull.speed = 7;
}
alarm_set(10, 57);

if (burnt >= 1) exit;
x_adjust = lengthdir_x(3, direction + 180);
y_adjust = lengthdir_y(3, direction + 180);
alarm_set(9, 4);