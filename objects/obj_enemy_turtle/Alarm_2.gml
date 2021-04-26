if (burnt < 1) {
	var ddir = direction + 210;
	var xx = lengthdir_x(sprite_width / 2, ddir);
	var yy = lengthdir_y(sprite_width / 2, ddir);
	var bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_rocket_black_e2);
	bull.direction = ddir;
	bull.image_angle = bull.direction;
	bull.speed = 60;
	with(bull) {
		alarm_set(1, 1);
		alarm_set(0, 0);
		alarm_set(10, 40);
	}
	
		ddir = direction - 210;
		xx = lengthdir_x(sprite_width / 2, ddir);
		yy = lengthdir_y(sprite_width / 2, ddir);
		bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_rocket_black_e2);
	bull.direction = ddir;
	bull.image_angle = bull.direction;
	bull.speed = 60;
	bull.rotation *= -1;
	with(bull) {
		alarm_set(1, 1);
		alarm_set(0, 0);
		alarm_set(10, 40);
	}
}
shots++;
if (shots >= 3) {
	alarm_set(2, 300);
	shots = 0;
} else {
	alarm_set(2, 15);
}

if (burnt >= 1) exit;
x_adjust = lengthdir_x(6, direction);
y_adjust = lengthdir_y(6, direction);
alarm_set(9, 7);