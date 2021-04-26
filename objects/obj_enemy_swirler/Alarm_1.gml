if (burnt < 1/* && !shoot_wait*/) {
	var xx = lengthdir_x(sprite_width / 1.6, direction);
	var yy = lengthdir_y(sprite_width / 1.6, direction);
	var bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets_Front", obj_dizzy_e);
	bull.direction = direction + 2;
	bull.image_angle = bull.direction;
	bull.speed = 8;
}
alarm_set(2, 10);