var player_exists = instance_exists(obj_tank_pilot);
if(player_exists && global.checkpoint == 0) {
	if (xadjust != 0 || count > 0) {
		draw_set_colour($FFF8B2);
		draw_set_font(fnt_kill_count_10);
		draw_text(obj_tank_pilot.x - 150, obj_tank_pilot.y - 30, + string("YOU'RE READY"));
		count--;
	}
}

//draw cursor
if (cursorCount <= 50) cursorIndex = 0;
else cursorIndex = 1;
if(player_exists) {
	with (obj_tank_pilot)
		if (mouse_check_button(mb_right)) {
			if (obj_tank_pilot.charges > 0) var dcolor = c_orange;
			else dcolor = c_red;
			if (obj_tank_pilot.devil_trigger != obj_tank_pilot.max_trigger)
				draw_circular_bar(mouse_x, mouse_y, obj_tank_pilot.devil_trigger,
					obj_tank_pilot.max_trigger, dcolor, 24, 1, 8);
		}
	if (obj_tank_pilot.unlock == 0 && !obj_tank_pilot.flaming) {
		draw_sprite(spr_mouse_point_6, 0, mouse_x, mouse_y);
		exit;
	} else if (obj_tank_pilot.unlock == 0) {
		draw_sprite(spr_mouse_point_5, 0, mouse_x, mouse_y);
		exit;
	}
	if (obj_tank_pilot.weapon == 0) {
		var fullClip = obj_tank_pilot.y_gun_reload * -1;
		var ccolor = c_yellow;
		if (obj_tank_pilot.flaming == false)
			var mouseSpr = spr_mouse_point_1;
	}
	if (obj_tank_pilot.weapon == 1) {
		var fullClip = obj_tank_pilot.g_gun_reload * -1;
		var ccolor = c_lime;
		if (obj_tank_pilot.flaming == false)
			var mouseSpr = spr_mouse_point_2;
	}
	if (obj_tank_pilot.weapon == 2) {
		var fullClip = obj_tank_pilot.b_gun_reload * -1;
		var ccolor = c_aqua;
		if (obj_tank_pilot.flaming == false)
			var mouseSpr = spr_mouse_point_3;
	}
	//draw_circular_bar(x, y, value, max, colour, radius, transparency, width)
	draw_circular_bar(mouse_x, mouse_y, fullClip + obj_tank_pilot.can_shoot,
		fullClip, ccolor, 13, .9, 5);
	if (obj_tank_pilot.flaming)
		var mouseSpr = spr_mouse_point_5;
	draw_sprite(mouseSpr, cursorIndex, mouse_x, mouse_y);
}
cursorCount++;
if (cursorCount > 100) cursorCount = 1;