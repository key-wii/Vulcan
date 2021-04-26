if (burnt < 1) {
	var bull1 = instance_create_layer(x, y, "Enemy_Bullets", obj_shell_e);
	bull1.direction = direction + 10;
	bull1.image_angle = bull1.direction;
	bull1.speed = 12;
	var bull2 = instance_create_layer(x, y, "Enemy_Bullets", obj_shell_e);
	bull2.direction = direction - 10;
	bull2.image_angle = bull2.direction;
	bull2.speed = 12;
}
alarm_set(10, 67);

if (burnt >= 1) exit;
x_adjust = lengthdir_x(2, direction + 180);
y_adjust = lengthdir_y(2, direction + 180);
alarm_set(9, 3);