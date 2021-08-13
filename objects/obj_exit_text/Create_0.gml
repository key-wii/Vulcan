if (room == room_credits) {
	instance_change(obj_exit_text_final, true);
	exit;
}

image_speed = 0;
menu = false;
tutorial = false;

boxWidth = sprite_width;
default_text = "                ";

default_text1 = ""; default_text2 = ""; default_text3 = ""; default_text4 = "";

text1 = default_text1;
text2 = default_text2;
text3 = default_text3;
text4 = default_text4;
text = text1 + text2 + text3 + text4;
textHeight = string_height(text1);
alarm_set(0, 1);

charCount = 0;
textPart1 = "";
textPart2 = "";
textPart3 = "";
textPart4 = "";

dw = display_get_gui_width();
dh = display_get_gui_height();
/*dw = 1350;
dh = 900;*/
x_yes = dw / 2 - 32;
y_yes = dh / 2 - sprite_height / 2 + textHeight * 4 - 5;
x_no = dw / 2 + 32;
y_no = dh / 2 - sprite_height / 2 + textHeight * 4 - 5;