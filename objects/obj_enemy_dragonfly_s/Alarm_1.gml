if (burnt < 1) {
	var xx = lengthdir_x(sprite_width * .35, direction);
	var yy = lengthdir_y(sprite_width * .35, direction);
	var bull1 = instance_create_layer(x + xx, y + yy, "Enemy_Bullets_Above", obj_shell_above_e);
	bull1.direction = 45;
	bull1.image_angle = bull1.direction;
	bull1.speed = 7;
	var bull2 = instance_create_layer(x + xx, y + yy, "Enemy_Bullets_Above", obj_shell_above_e);
	bull2.direction = 135;
	bull2.image_angle = bull2.direction;
	bull2.speed = 7;
	var bull3 = instance_create_layer(x + xx, y + yy, "Enemy_Bullets_Above", obj_shell_above_e);
	bull3.direction = 225;
	bull3.image_angle = bull3.direction;
	bull3.speed = 7;
	var bull4 = instance_create_layer(x + xx, y + yy, "Enemy_Bullets_Above", obj_shell_above_e);
	bull4.direction = 315;
	bull4.image_angle = bull4.direction;
	bull4.speed = 7;
}
alarm_set(10, 67);

if (burnt >= 1) exit;
x_adjust = lengthdir_x(2, direction + 180);
y_adjust = lengthdir_y(2, direction + 180);
alarm_set(9, 3);