if (instance_exists(obj_exit_text)) exit;
var ppreview = preview;
var ccol = col;

var ttext1 = text1;
var ttext2 = text2;
var ttext3 = text3;
var ttext4 = text4;
var ttext5 = text5;
var ttext = text;

with (obj_menu_portrait) {
	sprite_index = ppreview;
	image_speed = 1;
	col = ccol;
}
with (obj_menu_text) {
	text1 = ttext1;
	text2 = ttext2;
	text3 = ttext3;
	text4 = ttext4;
	text5 = ttext5;
	text = ttext;
	textHeight = string_height(ttext) + 2;
	charCount = 0;
}