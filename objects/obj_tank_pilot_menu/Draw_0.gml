draw_set_alpha(1);
if (debug = true) {
	//DEBUG: Enemy (approx) approach radius
	draw_circle(x, y, 205, true)
	draw_circle(x, y, 255, true)
	//DEBUG: fps
	draw_set_font(fnt_ammunition);
	draw_text(obj_tank_pilot.x + 32, obj_tank_pilot.y + 32, "FPS = " + string(fps));
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
}

draw_self();

//Draw shield
if(shield > 0)
{
	if(shielding = true)
	{
		if(!(rainbow = 2))
		{
			draw_sprite(spr_shield_strip25, 0, x + 0, y + 0);
		}
	}
}
//Draw super shield
if(shield > 0)
{
	if(shielding = true)
	{
		if(rainbow = 2)
		{
			draw_sprite(spr_shield_power_strip50, 0, x + 0, y + 0);
		}
	}
}

//Draw flame kill count
if(global.flameKills > 0)
{
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