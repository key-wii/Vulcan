image_index = 4;
draw_set_font(fnt_exit);
text1 = "Leave Credits?";
text2 = "(Vulcan will close)";
text3 = "Yes"; text4 = "No";

text = text1 + text2 + text3 + text4;
textHeight = string_height(text1) / 2;

charCount = 0;
/*boxWidth = sprite_width;

dw = display_get_gui_width();
dh = display_get_gui_height();
x_yes = dw / 2 - 32;
y_yes = dh / 2 - sprite_height / 2 + textHeight * 4 - 5;
x_no = dw / 2 + 32;
y_no = dh / 2 - sprite_height / 2 + textHeight * 4 - 5;*/