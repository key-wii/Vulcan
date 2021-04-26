if (burnt < 1) {
	var bull1 = instance_create_layer(x, y, "Enemy_Bullets", obj_rocket_e);
	bull1.direction = direction + 11;
	bull1.image_angle = bull1.direction;
	bull1.speed = 7;
	with (bull1) alarm_set(10, 172);
	var bull2 = instance_create_layer(x, y, "Enemy_Bullets", obj_rocket_e);
	bull2.direction = direction - 11;
	bull2.image_angle = bull2.direction;
	bull2.speed = 7;
	with (bull2) alarm_set(10, 172);
}
alarm_set(10, 139);

if (burnt >= 1) exit;
x_adjust = lengthdir_x(3, direction + 180);
y_adjust = lengthdir_y(3, direction + 180);
alarm_set(9, 4);