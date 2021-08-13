event_inherited();
miniboss = false;

image_xscale = .6;
image_yscale = .6;
wheels.image_xscale = image_xscale;
wheels.image_yscale = image_yscale;
image_maxscale = .8;

col = c_black;
spBox = spr_talk_text2;
var box1 = array_create(5);
box1[0] = "Mom?";
dialogues[| 0] = box1;
ds_list_shuffle(dialogues);
text1 = dialogues[| currentDialogue][0];
text = text1;
textHeight = string_height(text) + 2;
//var bWidth = sprite_get_width(spBox);
draw_set_font(-1);
boxWidth = ceil(string_width(text1));
//boxWidth *= 2.075;
boxWidth *= 2.3;
/*if (boxWidth > bWidth) {
	boxWidth = bWidth;
	boxWidth *= 1.025;
}*/
//if (boxWidth < 400) boxWidth = 400;