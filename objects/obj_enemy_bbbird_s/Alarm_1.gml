if (burnt < 1) {
	if (direction == 90 || direction == 270) 
		var xx = (sprite_width * .3);
	else var xx = 0;
	if (direction == 0 || direction == 180) 
		var yy = (sprite_width * .3);
	else var yy = 0;
	var bull1 = instance_create_layer(x - xx, y - yy, "Enemy_Bullets_Above", obj_shell_above_e);
	if (direction == 180 || direction == 270) bull1.direction = direction + 270;
	else if (direction == 0 || direction == 90) bull1.direction = direction + 90;
	bull1.image_angle = bull1.direction;
	bull1.speed = 7;
	var bull2 = instance_create_layer(x + xx, y + yy, "Enemy_Bullets_Above", obj_shell_above_e);
	if (direction == 180 || direction == 270) bull2.direction = direction + 90;
	else if (direction == 0 || direction == 90) bull2.direction = direction + 270;
	bull2.image_angle = bull2.direction;
	bull2.speed = 7;
	/*var bull3 = instance_create_layer(x + xx, y + yy, "Enemy_Bullets_Above", obj_shell_above_e);
	bull3.direction = direction + 315;
	bull3.image_angle = bull3.direction;
	bull3.speed = 7;
	var bull4 = instance_create_layer(x + xx, y + yy, "Enemy_Bullets_Above", obj_shell_above_e);
	bull4.direction = direction + 225;
	bull4.image_angle = bull4.direction;
	bull4.speed = 7;*/
}
alarm_set(10, 67);

if (burnt >= 1) exit;
x_adjust = lengthdir_x(2, direction + 180);
y_adjust = lengthdir_y(2, direction + 180);
alarm_set(9, 3);