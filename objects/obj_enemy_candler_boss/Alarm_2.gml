if (burnt < 1) {
	var bull = instance_create_layer(x, y, "Enemy_Bullets", obj_bouncer_e);
	bull.direction = direction + 70;
	bull.image_angle = bull.direction;
	bull.speed = 40;
	with(bull) alarm_set(1, 1);
	var bull = instance_create_layer(x, y, "Enemy_Bullets", obj_bouncer_e);
	bull.direction = direction - 70;
	bull.image_angle = bull.direction;
	bull.speed = 40;
	with(bull) alarm_set(1, 1);
	var bull = instance_create_layer(x, y, "Enemy_Bullets", obj_bouncer_e);
	bull.direction = direction + 135;
	bull.image_angle = bull.direction;
	bull.speed = 40;
	with(bull) alarm_set(1, 1);
	var bull = instance_create_layer(x, y, "Enemy_Bullets", obj_bouncer_e);
	bull.direction = direction - 135;
	bull.image_angle = bull.direction;
	bull.speed = 40;
	with(bull) alarm_set(1, 1);
}
alarm_set(4, 5);