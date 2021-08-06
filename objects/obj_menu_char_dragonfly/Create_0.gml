event_inherited();

image_xscale = 4;
image_yscale = 4;
dead_sprite = spr_enemy_dragonfly_dead;
yPlus = 108;

col = c_black;
spBox = spr_talk_text;
var box1 = array_create(5);
var box2 = array_create(5);
var box3 = array_create(5);
ini_open("saveData.ini");
if (ini_read_real("Bosses Beat", "boss 2 beat", false) && ini_read_real("Bosses Beat", "boss 3 beat", false) &&
	ini_read_real("Bosses Beat", "boss 4 beat", false) && ini_read_real("Bosses Beat", "boss 5 beat", false)) {
	box1[0] = "In our last arena to defeat The Rat, all";
	box1[1] = "forces have grouped together to overwhelm";
	box1[2] = "her and prevent anyone from reaching you";
	box1[3] = "again. Though checkpoints are reduced, we";
	box1[4] = "may need to bring out the big guns now.";
	box2[0] = "The Rat has grown much too powerful";
	box2[1] = "so a portal has been prepared for";
	box2[2] = "you to join us, milord. If it comes";
	box2[3] = "to that point, you'll spawn to face";
	box2[4] = "off against her as our last resort.";
	box3[0] = "                ";
	box3[1] = "                ";
	box3[2] = "  I believe in you";
	box3[3] = "";
	box3[4] = "";
	ini_close();
} else {
	instance_destroy();
	ini_close();
	exit;
}
dialogues[| 0] = box1;
dialogues[| 1] = box2;
dialogues[| 2] = box3;
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