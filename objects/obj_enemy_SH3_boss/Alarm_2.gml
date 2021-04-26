if (shield != id && shield.direction > direction - 10 && shield.direction < direction + 10) {
	if (burnt < 1) {
		if (shield != id) var len = sprite_width;
		else var len = sprite_width / 2;
		var xx = lengthdir_x(len, direction);
		var yy = lengthdir_y(len, direction);
		var bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_shell_e);
		bull.direction = direction;
		with(bull) {
			image_angle = direction;
			speed = 22;
			orig_speed = 22;
			image_xscale = 2;
			image_yscale = 2;
			alarm_set(1, 1);
			alarm_set(0, 330);
		}
	}
	alarm_set(2, 5);
} else alarm_set(2, 1);