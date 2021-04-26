//if (burnt < 1) {
	/*var bull = instance_create_layer(x, y, "Enemy_Bullets", obj_bouncer_e);
	bull.direction = direction + 180;
	bull.image_angle = bull.direction;
	bull.speed = 60;
	with(bull) {
		alarm_set(1, 1);
		alarm_set(0, 330);
	}*//*
		bull = instance_create_layer(x, y, "Enemy_Bullets", obj_bouncer_e);
	bull.direction = direction + 210;
	bull.image_angle = bull.direction;
	bull.speed = 60;
	with(bull) {
		alarm_set(1, 1);
		alarm_set(0, 450);
	}
		bull = instance_create_layer(x, y, "Enemy_Bullets", obj_bouncer_e);
	bull.direction = direction - 210;
	bull.image_angle = bull.direction;
	bull.speed = 60;
	with(bull) {
		alarm_set(1, 1);
		alarm_set(0, 450);
	}
}
alarm_set(2, 20);