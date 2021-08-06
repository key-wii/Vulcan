if (debug == true) {
	//DEBUG: Enemy (approx) approach radius
	draw_circle(x, y, 205, true)
	draw_circle(x, y, 255, true)
	//DEBUG: fps
	draw_set_font(fnt_ammunition);
	draw_text(obj_tank_pilot.x + 32, obj_tank_pilot.y + 32, "FPS = " + string(fps));
	//DEBUG: speed
	draw_set_font(fnt_ammunition);
	if (instance_exists(obj_tank_move))
		draw_text(obj_tank_pilot.x - 102, obj_tank_pilot.y + 32, "speed = " + string(obj_tank_move.speed));
	if (instance_exists(obj_tank_move_flame))
		draw_text(obj_tank_pilot.x - 102, obj_tank_pilot.y + 32, "speed = " + string(obj_tank_move_flame.speed));
	//DEBUG: lives
	draw_set_font(fnt_ammunition);
	draw_text(obj_tank_pilot.x - 102, obj_tank_pilot.y + 64, "lives = " + string(lives));
	//DEBUG: health
	draw_set_font(fnt_ammunition);
	draw_text(obj_tank_pilot.x + 32, obj_tank_pilot.y + 64, "health = " + string(100 - damage));
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