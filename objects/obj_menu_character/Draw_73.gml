if (!hovering || spin > 0) exit;

ini_open("saveData.ini");
var area_complete1 = ini_read_real("Bosses Beat", "boss 1 beat", false);
ini_close();
if (area_complete1) {
	var yy = sprite_height + (sprite_get_height(spBox) / 2) + 96 + yPlus;
	if (y < room_height / 2) yy /= -4;
} else {
	if (y < room_height / 2) var yy = sprite_height + (sprite_get_height(spBox) / 2) + 96;
	else var yy = (sprite_height + (sprite_get_height(spBox) / 2) + 96) / -4;
}
draw_9slice(x - boxWidth / 2, y - yy, boxWidth * talkWidth, sprite_get_height(spBox), spBox, 0);

if (talkWidth < 1) exit;

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
draw_set_font(fnt_pause);
draw_set_color(col);
draw_set_halign(fa_left);
var xxx = x - ((boxWidth / 2) - 5);
var yyy = y - yy + 2;
draw_text_ext(xxx, yyy + textHeight * 0, textPart1, textHeight, boxWidth);
draw_text_ext(xxx, yyy + textHeight * 1, textPart2, textHeight, boxWidth);
draw_text_ext(xxx, yyy + textHeight * 2, textPart3, textHeight, boxWidth);
draw_text_ext(xxx, yyy + textHeight * 3, textPart4, textHeight, boxWidth);
draw_text_ext(xxx, yyy + textHeight * 4, textPart5, textHeight, boxWidth);
///draw_text_colour_outline(x, y, string, textColor1, textColor2, textAlpha, outlineColor1, outlineColor2, outlineAlpha, outlineThickness, outlineQuality, xscale, yscale, angle);
/*var thickness = 3;
draw_text_colour_outline(xxx, yyy + textHeight * 0, textPart1, c_white, c_white, 1, c_black, c_black, 1, thickness, 10, 1, 1, 0);
draw_text_colour_outline(xxx, yyy + textHeight * 1, textPart2, c_white, c_white, 1, c_black, c_black, 1, thickness, 10, 1, 1, 0);
draw_text_colour_outline(xxx, yyy + textHeight * 2, textPart3, c_white, c_white, 1, c_black, c_black, 1, thickness, 10, 1, 1, 0);
draw_text_colour_outline(xxx, yyy + textHeight * 3, textPart4, c_white, c_white, 1, c_black, c_black, 1, thickness, 10, 1, 1, 0);
draw_text_colour_outline(xxx, yyy + textHeight * 4, textPart5, c_white, c_white, 1, c_black, c_black, 1, thickness, 10, 1, 1, 0);
/*
draw_text_colour_outline(xxx, yyy + textHeight * 0, textPart1, c_black, c_black, 1, c_white, c_white, 1, thickness, 10, 1, 1, 0);
draw_text_colour_outline(xxx, yyy + textHeight * 1, textPart2, c_black, c_black, 1, c_white, c_white, 1, thickness, 10, 1, 1, 0);
draw_text_colour_outline(xxx, yyy + textHeight * 2, textPart3, c_black, c_black, 1, c_white, c_white, 1, thickness, 10, 1, 1, 0);
draw_text_colour_outline(xxx, yyy + textHeight * 3, textPart4, c_black, c_black, 1, c_white, c_white, 1, thickness, 10, 1, 1, 0);
draw_text_colour_outline(xxx, yyy + textHeight * 4, textPart5, c_black, c_black, 1, c_white, c_white, 1, thickness, 10, 1, 1, 0);