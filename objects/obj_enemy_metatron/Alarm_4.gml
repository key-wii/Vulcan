if (!instance_exists(obj_tank_pilot)) exit;
if (windup > 0 || shot_rot > 0) { alarm_set(4, 2); exit; }
if (flaming) var fl = true;
else var fl = false;

var bull;
if (burnt < 1) {
	var ddir = direction;
	var xx = lengthdir_x(sprite_width / 4, ddir);
	var yy = lengthdir_y(sprite_width / 4, ddir);
	bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_shell_black_flamer_e);
	bull.direction = ddir;
	bull.image_angle = bull.direction;
	bull.speed = 60;
	with(bull) {
		alarm_set(0, 0);
		alarm_set(2, 0);
	}
	if (!fl) shot_rot = 360;
	audio_play_sound(snd_shoot1, false, false);
		
	x_adjust = lengthdir_x(8, direction);
	y_adjust = lengthdir_y(8, direction);
	alarm_set(9, 7);
} else exit;
if (fl) {
	shootCount++;
	if (shootCount > 260) {
		phase = 3;
		alarm_set(3, 150);
		exit;
	}
	if (shootCount < 60) {
		alarm_set(4, 8); 
		if (shootCount mod 2 == 0) audio_play_sound(snd_shoot2, false, false);
		bull.spinSpd = 3.5;
		bull.orig_speed = 4;
	}
	else if (shootCount < 120) {
		alarm_set(4, 12);
		audio_play_sound(snd_shoot2, false, false);
		bull.spinSpd = 2.5;
		bull.orig_speed = 5;
	}
	else if (shootCount < 140) {
		alarm_set(4, 20);
		audio_play_sound(snd_shoot2, false, false);
		bull.spinSpd = 4;
		bull.orig_speed = 6;
	}
	else if (shootCount >= 140) {
		alarm_set(4, 4);
		if (shootCount mod 2 == 0) audio_play_sound(snd_shoot2, false, false);
		bull.spinSpd = 2;
		bull.orig_speed = 6;
	}
}