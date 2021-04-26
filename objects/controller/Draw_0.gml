//draw cursor
if (cursorCount <= 50) cursorIndex = 0;
else cursorIndex = 1;
var player_exists = instance_exists(obj_tank_pilot);
if(player_exists) {
	with (obj_tank_pilot)
		if (mouse_check_button(mb_right)) {
			if (obj_tank_pilot.charges > 0) var dcolor = c_orange;
			else dcolor = c_red;
			if (obj_tank_pilot.devil_trigger < 0) {
				var negaTrigger = clamp(obj_tank_pilot.max_trigger, 450, 600);
				draw_circular_bar(mouse_x, mouse_y, -obj_tank_pilot.devil_trigger,
					negaTrigger, dcolor, 24, 1, 8);
			} else if (obj_tank_pilot.devil_trigger != obj_tank_pilot.max_trigger)
				draw_circular_bar(mouse_x, mouse_y, obj_tank_pilot.devil_trigger,
					obj_tank_pilot.max_trigger, dcolor, 24, 1, 8);
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