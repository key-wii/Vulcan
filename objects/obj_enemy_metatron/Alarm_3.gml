if (!instance_exists(obj_tank_pilot)) exit;
if (windup > 0 || shot_rot > 0) { alarm_set(3, 2); exit; }
if (flaming) var fl = true;
else var fl = false;

if (flameBullUR && flameBullUL && flameBullDL && flameBullDR) {
	if (damage >= 1000) {
		phase = 5;
		shootCount = 0;
		flameCount = 0;
		windup = maxWindup;
		alarm_set(7, maxWindup);
	} else {
		phase = 4;
		direction -= 6;
		shootCount = 0;
		alarm_set(5, 120);
	}
	exit;
}
	 if (direction >= 39  && direction <= 51)  direction = 45;
else if (direction >= 129 && direction <= 141) direction = 135;
else if (direction >= 119 && direction <= 231) direction = 225;
else if (direction >= 309 && direction <= 321) direction = 315;
var UR = direction == 45;
if (UR && flameBullUR) { alarm_set(3, 7); exit; }
var UL = direction == 135;
if (UL && flameBullUL) { alarm_set(3, 7); exit; }
var DL = direction == 225;
if (DL && flameBullDL) { alarm_set(3, 7); exit; }
var DR = direction == 315;
if (DR && flameBullDR) { alarm_set(3, 7); exit; }

if (burnt < 1) {
	if (UR || UL || DL || DR) {
		var ddir = direction;
		var xx = lengthdir_x(sprite_width / 4, ddir);
		var yy = lengthdir_y(sprite_width / 4, ddir);
		var bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_shell_black_flamer_e);
		bull.direction = ddir;
		bull.image_angle = bull.direction;
		bull.speed = 60;
		bull.orig_speed = bull.sprite_width;
		bull.corner = true;
		with(bull) {
			alarm_set(0, 0);
		}
		if (!fl && global.checkpoint == 5) shot_rot = 360;
		audio_play_sound(snd_shoot1, false, false);
	
		if (UR) flameBullUR = true;
		if (UL) flameBullUL = true;
		if (DL) flameBullDL = true;
		if (DR) flameBullDR = true;
		
		x_adjust = lengthdir_x(8, direction);
		y_adjust = lengthdir_y(8, direction);
		alarm_set(9, 7);
	}
}
alarm_set(3, 1);