if (burnt < 1) {
	var xx = lengthdir_x(sprite_width / 3, direction);
	var yy = lengthdir_y(sprite_width / 3, direction);
	var bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_dizzy_e);
	bull.direction = direction;
	bull.image_angle = bull.direction;
	bull.speed = 6;
}
alarm_set(10, 203);

if (burnt >= 1) exit;
x_adjust = lengthdir_x(5, direction + 180);
y_adjust = lengthdir_y(5, direction + 180);
alarm_set(9, 4);