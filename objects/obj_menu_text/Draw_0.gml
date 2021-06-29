draw_self();
draw_set_font(fnt_pause);
draw_set_color(c_white);
draw_set_halign(fa_left);
textHeight = string_height(text) + 2;

var tLen = string_length(text1 + text2 + text3 + text4 + text5);
if (charCount < tLen + 8) {
	if (charCount mod 1.5 == 0 && charCount < tLen) audio_play_sound(snd_text_pause, false, false);
	charCount += 1;
}
textPart1 = string_copy(text1, 1, ceil(charCount));
textPart1len = string_length(textPart1);
if (charCount >= textPart1len) {
	textPart2 = string_copy(text2, 1, ceil(charCount - textPart1len - 2));
	textPart2len = string_length(textPart2);
	if (charCount >= textPart2len) {
		textPart3 = string_copy(text3, 1, ceil(charCount - textPart1len - textPart2len - 2));
		textPart3len = string_length(textPart3);
		if (charCount >= textPart3len) {
			textPart4 = string_copy(text4, 1, ceil(charCount - textPart1len - textPart2len - textPart3len - 2));
			textPart4len = string_length(textPart4);
			if (charCount >= textPart4len) {
				textPart5 = string_copy(text5, 1, ceil(charCount - textPart1len - textPart2len - textPart3len - textPart4len - 2));
			}
		}
	}
}
draw_set_color(col);
draw_text_ext(x - 293, y - 96 + textHeight * 0, textPart1, textHeight, boxWidth - 10); draw_set_color(c_white);
draw_text_ext(x - 293, y - 96 + textHeight * 1, textPart2, textHeight, boxWidth - 10); draw_set_color(c_white);
draw_text_ext(x - 293, y - 96 + textHeight * 2, textPart3, textHeight, boxWidth - 10); draw_set_color(c_white);
if (!hover || launcher) draw_set_color(c_gray);
draw_text_ext(x - 293, y - 96 + textHeight * 3, textPart4, textHeight, boxWidth - 10); draw_set_color(c_white);
if (!hover || !chargeUnlocked) draw_set_color(c_gray);
draw_text_ext(x - 293, y - 96 + textHeight * 4, textPart5, textHeight, boxWidth - 10); draw_set_color(c_white);