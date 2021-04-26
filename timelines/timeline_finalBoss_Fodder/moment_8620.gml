var bull;
if (burnt < 1 && !flaming) {
	var ddir = direction;
	var xx = lengthdir_x(sprite_width / 1.5, ddir);
	var yy = lengthdir_y(sprite_width / 1.5, ddir);
		   if (dirAdj > 45 || dirAdj < -45) { 
		bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_rocket_black_e);
		bull.image_xscale = 2;
		bull.image_yscale = 2;
		with (bull) alarm_set(0, 0);
		audio_play_sound(snd_shoot3, false, false);
	} else if (dirAdj > 30 || dirAdj < -30) { 
		bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_bouncer_black_e);
		bull.image_xscale = 6;
		bull.image_yscale = 6;
		audio_play_sound(snd_shoot2, false, false);
	} else if (dirAdj > 15 || dirAdj < -15) { 
		bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_shell_black_flamer_e);
		with (bull) {
			alarm_set(0, 0);
			alarm_set(2, 0);
		}
		audio_play_sound(snd_shoot1, false, false);
	} else if (dirAdj > 5 || dirAdj < -5)	  { 
		bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_dizzy_black_final_e);
		bull.image_xscale = 2;
		bull.image_yscale = 2;
		audio_play_sound(snd_shoot2, false, false);
	} else { 
		bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_shell_black_e);
		bull.image_xscale = 4;
		bull.image_yscale = 4;
		bull.orig_speed = 26;
		audio_play_sound(snd_shoot1, false, false);
	}
	bull.direction = ddir;
	bull.image_angle = bull.direction;
	bull.speed = 60;
	with (bull) alarm_set(1, 1);
	shot_rot = 360;
		
	x_adjust = lengthdir_x(8, direction);
	y_adjust = lengthdir_y(8, direction);
	alarm_set(9, 1);
}
timeline_index = 8619;