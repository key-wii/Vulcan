event_inherited();

image_speed = 1;
image_index = 2;
dead_sprite = spr_enemy_miniboss_dead;
if (y > room_height / 2) yPlus = -48;
else yPlus = -96;

col = c_yellow;
spBox = spr_talk_text;
var box1 = array_create(5);
//var box2 = array_create(5);
ini_open("saveData.ini");
if (ini_read_real("Bosses Beat", "boss 5 beat", false)) {
	box1[0] = "";
	box1[1] = "";
	box1[2] = "placeholder dialogue";
	box1[3] = "";
	box1[4] = "";
	/*box2[0] = "";
	box2[1] = "";
	box2[2] = "";
	box2[3] = "";
	box2[4] = "";*/
	ini_close();
} else {
	instance_destroy();
	ini_close();
	exit;
}
dialogues[| 0] = box1;
//dialogues[| 1] = box2;
text1 = dialogues[| currentDialogue][0];
text2 = dialogues[| currentDialogue][1];
text3 = dialogues[| currentDialogue][2];
text4 = dialogues[| currentDialogue][3];
text5 = dialogues[| currentDialogue][4];
text = text1 + text2 + text3 + text4 + text5;
textHeight = string_height(text) + 2;
//var bWidth = sprite_get_width(spBox);
draw_set_font(-1);
									boxWidth = ceil(string_width(text1));
if (string_width(text2) > boxWidth) boxWidth = ceil(string_width(text2));
if (string_width(text3) > boxWidth) boxWidth = ceil(string_width(text3));
if (string_width(text4) > boxWidth) boxWidth = ceil(string_width(text4));
if (string_width(text5) > boxWidth) boxWidth = ceil(string_width(text5));
boxWidth *= 2.075;
/*if (boxWidth > bWidth) {
	boxWidth = bWidth;
	boxWidth *= 1.025;
}*/
if (boxWidth < 400) boxWidth = 400;