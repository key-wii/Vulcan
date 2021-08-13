if (!instance_exists(obj_tank_pilot)) exit;
if (obj_tank_pilot.damage == 0) { phase = 1; alarm_set(2, 2); exit; }
if (windup > 0 || shot_rot > 0) { alarm_set(1, 2); exit; }
if (flaming) var fl = true;
else var fl = false;
if (burnt < 1) {
	var ddir = direction;
	var xx = lengthdir_x(sprite_width / 4, ddir);
	var yy = lengthdir_y(sprite_width / 4, ddir);
	var bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_heal_e);
	bull.direction = ddir;
	bull.image_angle = bull.direction;
	bull.speed = 60;
	bull.orig_speed = bull.sprite_width + 10;
	with(bull) {
		alarm_set(0, 0);
	}
	if (!fl) {
		shot_rot = 360;
		audio_play_sound(snd_shoot3, false, false);
	}
	else bull.orig_speed = 10;
}
if (!fl) alarm_set(1, 36);
else {
	if (burnt >= 1) exit;
	shootCount++;
	if (shootCount > 260) shootCount = 1;
	if (shootCount < 60) {
		alarm_set(1, 8); 
		if (shootCount mod 2 == 0) audio_play_sound(snd_shoot2, false, false);
	}
	else if (shootCount < 120) {
		alarm_set(1, 12);
		audio_play_sound(snd_shoot2, false, false);
		bull.orig_speed = 16;
	}
	else if (shootCount < 140) {
		alarm_set(1, 20);
		audio_play_sound(snd_shoot2, false, false);
		bull.orig_speed = 9;
	}
	else if (shootCount >= 140) {
		alarm_set(1, 4);
		if (shootCount mod 2 == 0) audio_play_sound(snd_shoot2, false, false);
		bull.orig_speed = 18;
	}
}

x_adjust = lengthdir_x(8, direction);
y_adjust = lengthdir_y(8, direction);
alarm_set(9, 7);