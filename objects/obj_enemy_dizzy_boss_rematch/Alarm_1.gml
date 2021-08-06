if (burnt < 1/* && !shoot_wait*/) {
	var xx = lengthdir_x(sprite_width / 2, direction);
	var yy = lengthdir_y(sprite_width / 2, direction);
	var bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets_Front", obj_dizzy_e);
	bull.direction = direction + 90;
	bull.image_angle = bull.direction;
	bull.speed = 4;
	var bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets_Front", obj_dizzy_e);
	bull.direction = direction - 90;
	bull.image_angle = bull.direction;
	bull.speed = 4;
	var bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets_Front", obj_dizzy_e);
	bull.direction = direction + 80;
	bull.image_angle = bull.direction;
	bull.speed = 4;
	var bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets_Front", obj_dizzy_e);
	bull.direction = direction - 80;
	bull.image_angle = bull.direction;
	bull.speed = 4;
}
if (damage >= maxHp - 10) alarm_set(1, 30);
else alarm_set(1, 14);