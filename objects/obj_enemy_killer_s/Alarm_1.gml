if (burnt < 1) {
	var bull = instance_create_layer(x, y, "Enemy_Bullets", obj_shell_e);
	bull.direction = direction;
	bull.image_angle = direction;
	bull.speed = 12;
	//audio_play_sound(snd_shoot1, false, false);
}

if (burnt >= 1) exit;
x_adjust = lengthdir_x(1, direction + 180);
y_adjust = lengthdir_y(1, direction + 180);
alarm_set(9, 3);