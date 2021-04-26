if (!instance_exists(obj_tank_pilot)) exit;
if (windup > 0 || shot_rot > 0) { alarm_set(5, 2); exit; }
if (flame != id) {
	if (alarm_get(6) <= 0) alarm_set(6, 10);
	spinSpd = -1;
	exit;
}

var bull;
if (burnt < 1) {
	var ddir = direction;
	var xx = lengthdir_x(sprite_width / 2, ddir);
	var yy = lengthdir_y(sprite_width / 2, ddir);
	bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_shell_black_flamer_e);
	bull.direction = ddir;
	bull.image_angle = bull.direction;
	bull.speed = 60;
	bull.orig_speed = 7;
	with(bull) {
		alarm_set(0, 0);
		alarm_set(2, 0);
	}
	shot_rot = 360;
	audio_play_sound(snd_shoot2, false, false);
	flameBulls++;
		
	x_adjust = lengthdir_x(8, direction);
	y_adjust = lengthdir_y(8, direction);
	alarm_set(9, 7);
}