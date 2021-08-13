var display = obj_camera.displayScale;
var xx = 1350 / 2;
var yy = 720;
var img = 0;
if (textPart2 == "") {
	img = 1;
	yy += 35;
}
draw_9slice(xx - boxWidth / 2 * talkWidth, yy * display, boxWidth * talkWidth, 1, spBox, img);

if (talkWidth < 1) exit;
draw_set_font(fnt_pause);
draw_set_color(col);
draw_set_halign(fa_middle);

var tLen = string_length(text1 + text2);
if (charCount < tLen + 8) {
	if (charCount mod 1.5 == 0 && charCount < tLen) audio_play_sound(snd_text_pause, false, false);
	charCount += 1;
}
textPart1 = string_copy(text1, 1, ceil(charCount));
textPart1len = string_length(textPart1);
if (charCount >= textPart1len) textPart2 = string_copy(text2, 1, ceil(charCount - textPart1len - 2));

var yyy = yy + 92;
var textHeight = string_height(text) + 2;
if (textPart2 == "") yyy += 5;
draw_text_ext(xx, yyy + textHeight * 0, textPart1, textHeight, boxWidth);
draw_text_ext(xx, yyy + textHeight * 1, textPart2, textHeight, boxWidth);