if (burnt < 1) {
	var xx = lengthdir_x(sprite_width / 4, direction);
	var yy = lengthdir_y(sprite_width / 4, direction);
	var bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_bouncer_e);
	bull.direction = direction;
	bull.image_angle = bull.direction;
	bull.speed = 40;
	bull.image_xscale = 2;
	bull.image_yscale = 2;
	with(bull) alarm_set(1, 1);
}
alarm_set(1, 48);
dir_stop = true;
alarm_set(7, 48);