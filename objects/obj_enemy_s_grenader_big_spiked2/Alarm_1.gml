if (burnt < 1) {
	var bull = instance_create_layer(x, y, "Enemy_Bullets", obj_grenade_y_e);
	bull.direction = direction;
	bull.image_angle = direction;
	bull.speed = 12;
}
grenading = false;
just_shot = true;
alarm_set(2, 154);
alarm_set(3, 124);
alarm_set(4, 5);

if (burnt >= 1) exit;
x_adjust = lengthdir_x(9, direction + 180);
y_adjust = lengthdir_y(9, direction + 180);
alarm_set(9, 8);