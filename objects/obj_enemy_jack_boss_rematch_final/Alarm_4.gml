if (burnt < 1) {
	var ddir = direction + 210;
	var xx = lengthdir_x(sprite_width / 4, ddir);
	var yy = lengthdir_y(sprite_width / 4, ddir);
	var bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_rocket_e);
	bull.direction = ddir;
	bull.image_angle = bull.direction;
	bull.speed = 40;
	/*bull.orig_speed = 11;
	bull.finalSpeed = 20;*/
	bull.image_xscale = 1.5;
	bull.image_yscale = 1.5;
	with(bull) alarm_set(1, 1);
	
		ddir = direction - 210;
		xx = lengthdir_x(sprite_width / 4, ddir);
		yy = lengthdir_y(sprite_width / 4, ddir);
		bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_rocket_e);
	bull.direction = ddir;
	bull.image_angle = bull.direction;
	bull.speed = 40;
	/*bull.orig_speed = 11;
	bull.finalSpeed = 20;*/
	bull.image_xscale = 1.5;
	bull.image_yscale = 1.5;
	with(bull) alarm_set(1, 1);
	
		ddir = direction + 90;
		xx = lengthdir_x(sprite_width / 4, ddir);
		yy = lengthdir_y(sprite_width / 4, ddir);
		bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_bouncer_e);
	bull.direction = ddir;
	bull.image_angle = bull.direction;
	bull.speed = 40;
	//bull.orig_speed = 16;
	bull.image_xscale = 2;
	bull.image_yscale = 2;
	with(bull) alarm_set(1, 1);
	
		ddir = direction - 90;
		xx = lengthdir_x(sprite_width / 4, ddir);
		yy = lengthdir_y(sprite_width / 4, ddir);
		bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_bouncer_e);
	bull.direction = ddir;
	bull.image_angle = bull.direction;
	bull.speed = 40;
	//bull.orig_speed = 16;
	bull.image_xscale = 2;
	bull.image_yscale = 2;
	with(bull) alarm_set(1, 1);
	
	/*	ddir = direction;
		xx = lengthdir_x(sprite_width / 4, direction);
		yy = lengthdir_y(sprite_width / 4, direction);
		bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_shell_e);
	bull.direction = ddir;
	bull.image_angle = bull.direction;
	bull.speed = 40;
	bull.image_xscale = 2;
	bull.image_yscale = 2;
	with(bull) alarm_set(1, 1);*/
}
alarm_set(1, 12);