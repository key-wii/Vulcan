draw_set_alpha(1);
if (debug = true) {
	//DEBUG: Enemy (approx) approach radius
	draw_circle(x, y, 205, true)
	draw_circle(x, y, 255, true)
	//DEBUG: fps
	draw_set_font(fnt_ammunition);
	draw_text(obj_tank_pilot.x + 32, obj_tank_pilot.y + 32, "FPS = " + string(fps) + " | " + string(fps_real));
	//DEBUG: speed
	draw_set_font(fnt_ammunition);
	if (instance_exists(obj_tank_move)) {
		draw_text(obj_tank_pilot.x - 152, obj_tank_pilot.y + 32, "speed = " + string(obj_tank_move.speed));
		draw_text(obj_tank_pilot.x - 152, obj_tank_pilot.y + 92, "vspeed = " + string(obj_tank_move.vspeed));
		draw_text(obj_tank_pilot.x - 152, obj_tank_pilot.y + 112, "hspeed = " + string(obj_tank_move.hspeed));
	} else if (instance_exists(obj_tank_move_flame)) {
		draw_text(obj_tank_pilot.x - 152, obj_tank_pilot.y + 92, "vspeed = " + string(obj_tank_move_flame.vspeed));
		draw_text(obj_tank_pilot.x - 152, obj_tank_pilot.y + 112, "hspeed = " + string(obj_tank_move_flame.hspeed));
	}
	//DEBUG: lives
	draw_set_font(fnt_ammunition);
	draw_text(obj_tank_pilot.x - 102, obj_tank_pilot.y + 64, "lives = " + string(lives));
	//DEBUG: health
	draw_set_font(fnt_ammunition);
	draw_text(obj_tank_pilot.x + 32, obj_tank_pilot.y + 64, "health = " + string(100 - damage));
	//DEBUG: devil trigger
	draw_set_font(fnt_ammunition);
	draw_text(obj_tank_pilot.x + 32, obj_tank_pilot.y + 92, "dTrigger = " + string(devil_trigger));
	//DEBUG: charges
	draw_set_font(fnt_ammunition);
	draw_text(obj_tank_pilot.x + 32, obj_tank_pilot.y + 112, "charges = " + string(charges));
	//DEBUG: bullet hit count
	draw_set_font(fnt_ammunition);
	draw_text(obj_tank_pilot.x + 32 , obj_tank_pilot.y + 135, "BhitCount = " + string(bull_hit_count));
	/*if (instance_exists(obj_music_controller)) {
		//DEBUG: bgm pos
		draw_set_font(fnt_ammunition);
		draw_text(obj_tank_pilot.x - 132 , obj_tank_pilot.y + 140, "bgm pos = " + string(audio_sound_get_track_position(obj_music_controller.bgm)));
		//DEBUG: music full_length
		draw_set_font(fnt_ammunition);
		draw_text(obj_tank_pilot.x - 132 , obj_tank_pilot.y + 172, "full_length = " + string(obj_music_controller.full_length));
		//DEBUG: music intro_length
		draw_set_font(fnt_ammunition);
		draw_text(obj_tank_pilot.x - 132 , obj_tank_pilot.y + 192, "intro_length = " + string(obj_music_controller.intro_length));
		//DEBUG: music loop_length
		draw_set_font(fnt_ammunition);
		draw_text(obj_tank_pilot.x - 132 , obj_tank_pilot.y + 212, "loop_length = " + string(obj_music_controller.loop_length));
	}*/
	//DEBUG: wall_grinding
	draw_set_font(fnt_ammunition);
	if (global.wall_grinding == true)
		draw_text(obj_tank_pilot.x + 142 , obj_tank_pilot.y + 155, "wallGrinding = ON");
	if (global.wall_grinding == false)
		draw_text(obj_tank_pilot.x + 142 , obj_tank_pilot.y + 155, "wallGrinding = OFF");
	//DEBUG: timer
	//draw_set_font(fnt_ammunition);
	//draw_text(obj_tank_pilot.x + 32 , obj_tank_pilot.y + 155, "Timer = " + string(timer));
	//DEBUG: fps
	draw_set_font(fnt_ammunition);
	draw_text(x - (view_xview / 1), y - ((view_yview / 2) + 120), "x = " + string(x));
	draw_text(x - (view_xview / 1), y - ((view_yview / 2) + 100), "y = " + string(y));
	//DEBUG: flameHeals
	draw_set_font(fnt_ammunition);
	draw_text(x - view_xview + 160, y - view_yview + 20, "flameHeals = " + string(flameHeals));
	//DEBUG: spawn lists for final level
	for (var i = 0; i < 4; i++) {
		draw_text(x + 400, y + 40 * i, string(i));
		draw_text(x + 415, y + 40 * i, string(global.finalMinibossesList[| i]));
		draw_text(x + 445, y + 40 * i, string(i));
		draw_text(x + 470, y + 40 * i, string(global.finalBossesList[| i]));
	}
	for (var i = 0; i < 8; i++) {
		draw_text(x - 415, y + 40 * i, string(i));
		draw_text(x - 400, y + 40 * i, string(global.finalSpawnList[| i]));
	}
}

//Draw tail
if (bull_hit_count >= 60) var ssprite = spPlayerTank_tail_spinning_hyper;
else if (bull_hit_count >= 45 || got_heart) var ssprite = spPlayerTank_tail_spinning_almostHyper;
else if ((flaming && windup_flame == 0) || shoot_rotate > 0) var ssprite = spPlayerTank_tail_spinning;
else var ssprite = spPlayerTank_tail;
draw_sprite_ext(ssprite, tail_index, x, y, image_xscale * .9, clamp(image_yscale * flame_dir, -1, 1) * .9, direction, c_white, 1);
tail_index += .1;

image_angle = direction;
draw_self();
event_inherited();

if (spikesUnlocked && !cutscene) {
			 if (weapon == 0) var color = spr_enemy_spike_y;
		else if (weapon == 1) var color = spr_enemy_spike_g;
		else if (weapon == 2) var color = spr_enemy_spike_b;
	var ddir, xx, yy;
	for (i = lastSpikes * 36 - 36; i > -36; i -= 36) {
		ddir = direction + i;
		var l = 0;
		var d = 0;
		if  (i == 36 * 2 || i == 36 * 8) l = 10;
		else if (i == 36 || i == 36 * 9) {
			l = 10;
			d = 3;
			if (i == 36) d *= -1;
		}
		xx = lengthdir_x((sprite_width / 2) + l, ddir + d);
		yy = lengthdir_y((sprite_width / 2) + l, ddir + d);
		if (ddir != direction) draw_sprite_ext(color, 0, x + xx, y + yy, image_xscale, image_yscale, ddir + i, c_white, 1);
		else draw_sprite_ext(color, 0, x + xx, y + yy, image_xscale, image_yscale, ddir + 180, c_white, 1);
		//draw_sprite_ext(color, 0, x + xx, y + yy, image_xscale, image_yscale, ddir + 180, c_white, 1);
	}
}

//Draw shield
if(shield > 0) {
	if(shielding = true) {
		if(!(rainbow = 2)) {
			var sh = floor(shield);
			draw_sprite_stretched(spr_shield1_strip25, 24,
				x - 60 - (sh / 2), y - 60 - (sh / 2), 120 + sh, 120 + sh);
		}
	}
}
//Draw super shield
/*if(shield > 0) {
	if(shielding = true) {
		if(rainbow = 2) {
			draw_sprite(spr_shield_power_strip50, 0, x, y);
		}
	}
}*/

//Draw flame kill count
if(global.flameKills > 0) {
	if (global.flameKills < 4) {
		draw_set_colour($19FF28);
		draw_set_font(fnt_kill_count_1);
	} else if (global.flameKills < 7) {
		draw_set_colour($69FF32);
		draw_set_font(fnt_kill_count_2);
	} else if (global.flameKills < 10) {
		draw_set_colour($7EBF0D);
		draw_set_font(fnt_kill_count_3);
	} else if (global.flameKills < 15) {
		draw_set_colour($4872D6);
		draw_set_font(fnt_kill_count_4);
	} else if (global.flameKills < 20) {
		draw_set_colour($4872D6);
		draw_set_font(fnt_kill_count_5);
	} else if (global.flameKills < 30) {
		draw_set_colour($3359F7);
		draw_set_font(fnt_kill_count_6);
	} else if (global.flameKills < 50) {
		draw_set_colour($2151FF);
		draw_set_font(fnt_kill_count_7);
	} else if (global.flameKills < 75) {
		draw_set_colour($2640E9);
		draw_set_font(fnt_kill_count_8);
	} else if (global.flameKills < 100) {
		draw_set_colour($141FED);
		draw_set_font(fnt_kill_count_9);
	} else if (global.flameKills >= 100) {
		draw_set_colour($0000FF);
		draw_set_font(fnt_kill_count_10);
	}
	draw_text(x + 20, y + 20,  + string(global.flameKills));
	//Draw smirk
	draw_sprite(spr_smirksmall_strip14, 0, 0, 0);
}