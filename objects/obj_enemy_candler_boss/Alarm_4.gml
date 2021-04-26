if (burnt < 1) {
	var bull = instance_create_layer(x, y, "Enemy_Bullets", obj_rocket_e);
	bull.direction = direction + 182;
	bull.image_angle = bull.direction;
	bull.speed = 60;
	with(bull) alarm_set(1, 1);
	var bull = instance_create_layer(x, y, "Enemy_Bullets", obj_rocket_e);
	bull.direction = direction - 182;
	bull.image_angle = bull.direction;
	bull.speed = 60;
	with(bull) alarm_set(1, 1);
	/*var bull = instance_create_layer(x, y, "Enemy_Bullets", obj_rocket_e);
	bull.direction = direction;
	bull.image_angle = bull.direction;
	bull.speed = 160;
	with(bull) {
		alarm_set(1, 3);
		alarm_set(10, 36);
	}*/
}
alarm_set(3, 5);