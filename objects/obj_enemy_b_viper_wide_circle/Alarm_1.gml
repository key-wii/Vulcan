if (burnt < 1) {
	var bull1 = instance_create_layer(x, y, "Enemy_Bullets", obj_bouncer_e);
	bull1.direction = direction + 30;
	bull1.image_angle = bull1.direction;
	bull1.speed = 10;
	var bull2 = instance_create_layer(x, y, "Enemy_Bullets", obj_bouncer_e);
	bull2.direction = direction - 30;
	bull2.image_angle = bull2.direction;
	bull2.speed = 10;
}
alarm_set(10, 103);

if (burnt >= 1) exit;
x_adjust = lengthdir_x(4, direction + 180);
y_adjust = lengthdir_y(4, direction + 180);
alarm_set(9, 3);