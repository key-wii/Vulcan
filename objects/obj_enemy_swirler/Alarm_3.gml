if (burnt < 1/* && !shoot_wait*/) {
	var xx = lengthdir_x(sprite_width / 1.5, direction);
	var yy = lengthdir_y(sprite_width / 1.5, direction);
	var bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets_Front", obj_dizzy_black_e);
	bull.owner = id;
	bull.direction = direction;
	bull.image_angle = bull.direction;
	bull.speed = 11;
	bull.spd = bull.speed;
}
alarm_set(1, 25);