if (burnt < 1) {
	var xx = lengthdir_x(sprite_width * .35, direction);
	var yy = lengthdir_y(sprite_width * .35, direction);
	var bull1 = instance_create_layer(x + xx, y + yy, "Enemy_Bullets_Above", bullet);
	bull1.direction = direction + 45;
	bull1.image_angle = bull1.direction;
	var bull2 = instance_create_layer(x + xx, y + yy, "Enemy_Bullets_Above", bullet);
	bull2.direction = direction + 135;
	bull2.image_angle = bull2.direction;
	var bull3 = instance_create_layer(x + xx, y + yy, "Enemy_Bullets_Above", bullet);
	bull3.direction = direction + 225;
	bull3.image_angle = bull3.direction;
	var bull4 = instance_create_layer(x + xx, y + yy, "Enemy_Bullets_Above", bullet);
	bull4.direction = direction + 315;
	bull4.image_angle = bull4.direction;
}
//alarm_set(10, 67);

if (burnt >= 1) exit;
x_adjust = lengthdir_x(2, direction + 180);
y_adjust = lengthdir_y(2, direction + 180);
alarm_set(9, 3);