event_inherited();
if (!hovering || area == 9) exit;
if (default_sprite == spr_levels_beat) draw_set_color(c_teal);
else draw_set_color(c_orange);
draw_set_font(fnt_pause);
draw_set_halign(fa_center);
draw_text(x, y - 124 - yyy, "Waves: " + string(waves));
//draw_text(x, y + 132 - yyy, "Wave Ender: " + string(levelWaveEndCombo) + " Combo");
draw_set_halign(fa_left);