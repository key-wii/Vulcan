if (!hovering || spin > 0) exit;

if (y < room_height / 2) var yy = (sprite_height + (sprite_get_height(spBox) / 2) + 96) / -4;
else var yy = sprite_height + (sprite_get_height(spBox) / 2) + 96 / 64;

draw_9slice(x - boxWidth / 2, y - yy, boxWidth * talkWidth, sprite_get_height(spBox), spBox, 1);

if (talkWidth < 1) exit;

textHeight = string_height(text) + 2;

var tLen = string_length(text1);
if (charCount < tLen + 8) {
	if (charCount mod 1.5 == 0 && charCount < tLen) audio_play_sound(snd_text_pause, false, false);
	charCount += 1;
}
textPart1 = string_copy(text1, 1, ceil(charCount));

draw_set_font(fnt_pause);
draw_set_color(col);
draw_set_halign(fa_left);
var xxx = x - ((boxWidth / 2) - 5);
var yyy = y - yy + 2;
draw_text_ext(xxx, yyy + textHeight * 0, textPart1, textHeight, boxWidth);
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