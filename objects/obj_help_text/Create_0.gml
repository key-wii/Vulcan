spBox = sprite_index;
talkWidth = 0;
alarm_set(0, 1);

col = c_black;
charCount = 0;
textPart1 = "";
textPart2 = "";

text1 = "";
text2 = "";
text = text1 + text2;
//textHeight = string_height(text) + 2;
draw_set_font(-1);
									boxWidth = ceil(string_width(text1));
if (string_width(text2) > boxWidth) boxWidth = ceil(string_width(text2));
boxWidth *= 2.075;
//if (boxWidth > 1330) boxWidth = 1330;