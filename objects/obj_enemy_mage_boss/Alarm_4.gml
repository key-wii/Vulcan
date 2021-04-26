if (burnt < 1) {
	var xx = 0; var yy = 0; var ddir = 0;
	var ddir = direction + 70;
	xx = lengthdir_x(sprite_width / 2, ddir);
	yy = lengthdir_y(sprite_width / 2, ddir);
	var bull1 = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_dizzy_e);
	with(bull1) {
		direction = ddir;
		image_angle = direction;
		speed = 6;
	}
	var ddir = direction - 70;
	xx = lengthdir_x(sprite_width / 2, ddir);
	yy = lengthdir_y(sprite_width / 2, ddir);
	var bull2 = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_dizzy_e);
	with(bull2) {
		direction = ddir;
		image_angle = direction;
		speed = 6;
	}
	var ddir = direction + 80;
	xx = lengthdir_x(sprite_width / 2, ddir);
	yy = lengthdir_y(sprite_width / 2, ddir);
	var bull3 = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_dizzy_e);
	with(bull3) {
		direction = ddir;
		image_angle = direction;
		speed = 6;
	}
	var ddir = direction - 80;
	xx = lengthdir_x(sprite_width / 2, ddir);
	yy = lengthdir_y(sprite_width / 2, ddir);
	var bull4 = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_dizzy_e);
	with(bull4) {
		direction = ddir;
		image_angle = bull4.direction;
		speed = 6;
	}
	if (backSkip == true) {
		wheels.backBoost = 10;
		backSkip = false;
	} else wheels.backBoost = -4;
} else {
	backSkip = true;
	wheels.backBoost = 24;
}
alarm_set(1, 40);