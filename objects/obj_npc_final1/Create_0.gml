event_inherited();
miniboss = false;

col = c_black;
spBox = spr_talk_text2;
var box1 = array_create(5);
box1[0] = "Are you my mom?";
dialogues[| 0] = box1;
ds_list_shuffle(dialogues);
text1 = dialogues[| currentDialogue][0];
text = text1;
textHeight = string_height(text) + 2;
//var bWidth = sprite_get_width(spBox);
draw_set_font(-1);
boxWidth = ceil(string_width(text1));
//boxWidth *= 2.075;
boxWidth *= 2.12;
/*if (boxWidth > bWidth) {
	boxWidth = bWidth;
	boxWidth *= 1.025;
}*/
//if (boxWidth < 400) boxWidth = 400;