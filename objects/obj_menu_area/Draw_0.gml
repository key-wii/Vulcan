event_inherited();
if (!hovering) exit;
draw_set_font(fnt_pause);
draw_set_halign(fa_center);
if (area == 9) {
	if (default_sprite == spr_levels_beat) draw_set_color(c_teal);
	else draw_set_color(c_gray);
	var w = "Waves: 30";
	var wh = string_height(w);
	draw_text(xstart, ystart - 124 - wh, w); //top text
	draw_text(xstart, ystart + 124, w); //bottom text
	draw_text_ext_transformed(xstart - 124 - wh, ystart, w, 0, 9999, 1, 1, 90); //left text
	draw_text_ext_transformed(xstart + 124 + wh, ystart, w, 0, 9999, 1, 1, 270); //right text
} else {
	if (default_sprite == spr_levels_beat) draw_set_color(c_teal);
	else draw_set_color(c_orange);
	var w = "Waves: " + string(waves);
	var wh2 = string_height(w) / 2;
	if (area == 1) draw_text(x, y - 124 - yyy - wh2 / 2, w);
	if (area == 2) draw_text_ext_transformed(x - 124 - yyy - wh2, y, w, 0, 9999, 1, 1, 90);
	if (area == 3) draw_text_ext_transformed(x + 124 + yyy + wh2, y, w, 0, 9999, 1, 1, 270);
	if (area == 4) draw_text_ext_transformed(x, y + 124 + yyy + wh2 / 2, w, 0, 9999, 1, 1, 180);
}
draw_set_halign(fa_left);