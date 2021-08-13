x = dw / 2;
y = dh / 2;

dw = display_get_gui_width();
dh = display_get_gui_height();
/*dw = 1350;
dh = 900;*/

//draw_self();
draw_sprite(sprite_index, image_index, dw / 2, dh / 2);
draw_set_color(c_white);
draw_set_font(fnt_exit);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

if (charCount < string_length(text1 + text2 + text3 + text4) + 4) {
	if (charCount mod 2 == 0) audio_play_sound(snd_text_exit, false, false);
	charCount += .75;
}
textPart1 = string_copy(text1, 1, ceil(charCount));
textPart1len = string_length(textPart1);
if (charCount >= textPart1len) {
	textPart2 = string_copy(text2, 1, ceil(charCount - textPart1len));
	textPart2len = string_length(textPart2);
	if (charCount >= textPart2len) {
		textPart3 = string_copy(text3, 1, ceil(charCount - textPart1len - textPart2len));
		textPart3len = string_length(textPart3);
		if (charCount >= textPart3len) {
			textPart4 = string_copy(text4, 1, ceil(charCount - textPart1len - textPart2len - textPart3len));
			textPart4len = string_length(textPart4);
		}
	}
}
draw_text_ext(dw / 2, dh / 2 - sprite_height / 2 + textHeight * 0 - 5, textPart1, textHeight, boxWidth);
if (!menu) draw_set_font(fnt_pause);
draw_text_ext(dw / 2, dh / 2 - sprite_height / 2 + textHeight * 2 - 5, textPart2, textHeight, boxWidth);
draw_set_font(fnt_exit);
draw_set_halign(fa_right);
x_yes = dw / 2 - 32;
y_yes = dh / 2 - sprite_height / 2 + textHeight * 3.5 - 5;
draw_text_ext(x_yes, y_yes, textPart3, textHeight, boxWidth);
draw_set_halign(fa_left);
x_no = dw / 2 + 32;
y_no = dh / 2 - sprite_height / 2 + textHeight * 3.5 - 5;
draw_text_ext(x_no, y_no, textPart4, textHeight, boxWidth);

draw_set_halign(fa_left);

//draw_rectangle(x_yes - 95, y_yes + 10, x_yes + 0, y_yes + 60, true);
//draw_rectangle(x_no + 0, y_no + 10, x_no + 82, y_no + 60, true);