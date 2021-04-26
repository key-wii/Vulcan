if (room == room_pause) {
	if (menu) image_index = 3;
	else if (tutorial) image_index = 4
	else image_index = 5;
	with (obj_menu_portrait) col = c_teal;
} else if (tutorial) image_index = 1;
else if (!menu) image_index = 2;
if (menu) {
	text1 = "Exit Vulcan?";
	text2 = "";
	text3 = "Yes"; text4 = "No";
} else if (tutorial) {
	text1 = "Exit Vulcan?";
	text2 = "(Progress is not saved)";
	text3 = "Yes"; text4 = "No";
} else {
	text1 = "Exit to Main Menu?";
	text2 = "(Progress is not saved)";
	text3 = "Yes"; text4 = "No";
}
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