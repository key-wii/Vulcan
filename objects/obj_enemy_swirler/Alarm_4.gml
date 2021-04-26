alarm_set(1, 0);
alarm_set(2, 0);
alarm_set(3, 0);
if (burnt < 1/* && !shoot_wait*/) {
	var xx = lengthdir_x(sprite_width / 1.5, direction);
	var yy = lengthdir_y(sprite_width / 1.5, direction);
	var bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets_Front", obj_dizzy_black_e);
	bull.owner = id;
	bull.direction = direction;
	bull.image_angle = bull.direction;
	bull.speed = 11;
	bull.spd = bull.speed;
}
diradjust += 6 * rot_dir;
count++;
if (count > 10) {
	diradjust = 0;
	count = 0;
	alarm_set(1, 60);
	alarm_set(2, 600);
} else alarm_set(4, 10);