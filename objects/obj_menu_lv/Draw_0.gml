event_inherited();
if (!hovering || levelWaveEndCombo <= 0) exit;
if (area_complete1) draw_set_color(c_teal);
else draw_set_color(c_orange);
draw_set_font(fnt_pause);
draw_set_halign(fa_center);
draw_text(x, y - 124 - yyy, "Waves: " + string(waves));
//draw_text(x, y + 132 - yyy, "Wave Ender: " + string(levelWaveEndCombo) + " Combo");
draw_set_halign(fa_left);



/*
var xx = obj_tank_pilot_menu.x;
var yy = obj_tank_pilot_menu.y;
ddir = point_direction(x, y, xx, yy);
	
var ddir3 = obj_tank_pilot_menu.direction;
var len3x = lengthdir_x(800, ddir3);
var len3y = lengthdir_y(800, ddir3);
if (obj_tank_pilot_menu.weapon == 2) {
	var height = sprite_height;
	var len1x = lengthdir_x(height, ddir + 90);
	var len1y = lengthdir_y(height, ddir + 90);
	var len2x = lengthdir_x(height, ddir - 90);
	var len2y = lengthdir_y(height, ddir - 90);
	
	draw_triangle(xx, yy, x + len1x, y + len1y, x + len2x, y + len2y, true);
	draw_rectangle(x - sprite_width, y - sprite_height,
		x + sprite_width, y + sprite_height, true);
	draw_line(xx, yy, xx + len3x, yy + len3y);
} else {
	var height = sprite_height / 1.5;
	var len1x = lengthdir_x(height, ddir + 90);
	var len1y = lengthdir_y(height, ddir + 90);
	var len2x = lengthdir_x(height, ddir - 90);
	var len2y = lengthdir_y(height, ddir - 90);
	
	draw_triangle(xx, yy, x + len1x, y + len1y, x + len2x, y + len2y, true);
	draw_rectangle(x - sprite_width / 1.5, y - sprite_height / 1.5,
		x + sprite_width / 1.5, y + sprite_height / 1.5, true);
	draw_line(xx, yy, xx + len3x, yy + len3y);
}