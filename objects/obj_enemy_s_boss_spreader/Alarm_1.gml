if (burnt < 1) {
	var bull = instance_create_layer(x, y, "Enemy_Bullets", obj_shell_e);
	bull.direction = direction + 15;
	bull.image_angle = bull.direction;
	bull.speed = 40;
	with(bull) alarm_set(1, 1);
	var bull = instance_create_layer(x, y, "Enemy_Bullets", obj_shell_e);
	bull.direction = direction - 15;
	bull.image_angle = bull.direction;
	bull.speed = 40;
	with(bull) alarm_set(1, 1);
	var bull = instance_create_layer(x, y, "Enemy_Bullets", obj_shell_e);
	bull.direction = direction + 30;
	bull.image_angle = bull.direction;
	bull.speed = 40;
	with(bull) alarm_set(1, 1);
	var bull = instance_create_layer(x, y, "Enemy_Bullets", obj_shell_e);
	bull.direction = direction - 30;
	bull.image_angle = bull.direction;
	bull.speed = 40;
	with(bull) alarm_set(1, 1);
}
alarm_set(1, 8);