if (burnt < 1) {
	var ddir = direction;
	  var bull1 = instance_create_layer(x, y, "Enemy_Bullets", obj_bouncer_e);
	with(bull1) {
		direction = ddir + 20;
		image_angle = direction;
		speed = 40;
		alarm_set(1, 1);
	} var bull2 = instance_create_layer(x, y, "Enemy_Bullets", obj_bouncer_e);
	with(bull2) {
		direction = ddir - 20;
		image_angle = direction;
		speed = 40;
		alarm_set(1, 1);
	} var bull3 = instance_create_layer(x, y, "Enemy_Bullets", obj_rocket_e);
	with(bull3) {
		direction = ddir + 40;
		image_angle = direction;
		speed = 40;
		alarm_set(1, 1);
	} var bull4 = instance_create_layer(x, y, "Enemy_Bullets", obj_rocket_e);
	with(bull4) {
		direction = ddir - 40;
		image_angle = direction;
		speed = 40;
		alarm_set(1, 1);
	}
	if (backSkip == true) {
		wheels.backBoost = 18;
		backSkip = false;
	} else wheels.backBoost = -4;
} else {
	backSkip = true;
	wheels.backBoost = 12;
}
alarm_set(2, 13);