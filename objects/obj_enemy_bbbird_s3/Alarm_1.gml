if (burnt < 1) {
	if (direction == 90 || direction == 270) 
		var xx = sprite_width * .3;
	else var xx = 0;
	if (direction == 0 || direction == 180) 
		var yy = sprite_width * .3;
	else var yy = 0;
	var bull = instance_create_layer(x - xx, y - yy, "Enemy_Bullets_Above", obj_shell_above_e);
	if (direction == 180 || direction == 270) bull.direction = direction + 270;
	else if (direction == 0 || direction == 90) bull.direction = direction + 90;
	bull.image_angle = bull.direction;
	bull.speed = 7;
		bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets_Above", obj_shell_above_e);
	if (direction == 180 || direction == 270) bull.direction = direction + 90;
	else if (direction == 0 || direction == 90) bull.direction = direction + 270;
	bull.image_angle = bull.direction;
	bull.speed = 7;
	
	xx = 0; yy = 0;
		 if (direction == 0) { xx = sprite_width * .3; yy = -1; }
	else if (direction == 90) { yy = sprite_width * -.3; xx = -1; }
	else if (direction == 180) { xx = sprite_width * -.3; yy = 1; }
	else if (direction == 270) { yy = sprite_width * .3; xx = 1; }
		bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets_Above", obj_shell_above_e);
	bull.direction = direction;
	bull.image_angle = bull.direction;
	bull.speed = 7;
	
	xx = 0; yy = 0;
		 if (direction == 0) { xx = sprite_width * .3; yy = -1; }
	else if (direction == 90) { yy = sprite_width * -.3; xx = -1; }
	else if (direction == 180) { xx = sprite_width * -.3; yy = 1; }
	else if (direction == 270) { yy = sprite_width * .3; xx = 1; }
		bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets_Above", obj_shell_above_e);
	bull.direction = direction + 45;
	bull.image_angle = bull.direction;
	bull.speed = 7;
	xx = 0; yy = 0;
		 if (direction == 0) { xx = sprite_width * .3; yy = -1; }
	else if (direction == 90) { yy = sprite_width * -.3; xx = -1; }
	else if (direction == 180) { xx = sprite_width * -.3; yy = 1; }
	else if (direction == 270) { yy = sprite_width * .3; xx = 1; }
		bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets_Above", obj_shell_above_e);
	bull.direction = direction - 45;
	bull.image_angle = bull.direction;
	bull.speed = 7;
}
alarm_set(10, 67);

if (burnt >= 1) exit;
x_adjust = lengthdir_x(2, direction + 180);
y_adjust = lengthdir_y(2, direction + 180);
alarm_set(9, 3);