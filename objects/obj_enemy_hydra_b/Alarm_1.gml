if (burnt < 1) {
	var bull1 = instance_create_layer(x, y, "Enemy_Bullets", obj_bouncer_e);
	bull1.direction = direction + 2;
	bull1.image_angle = direction + 2;
	bull1.speed = 10;
	var bull2 = instance_create_layer(x, y, "Enemy_Bullets", obj_bouncer_e);
	bull2.direction = direction - 2;
	bull2.image_angle = direction - 2;
	bull2.speed = 10;
}
alarm_set(10, 57);

if (burnt >= 1) exit;
x_adjust = lengthdir_x(3, direction + 180);
y_adjust = lengthdir_y(3, direction + 180);
alarm_set(9, 4);