event_inherited();

col = c_green;
spBox = spr_talk_text;
var box1 = array_create(5);
box1[0] = "That slippery Rat has more than";
box1[1] = "just a flamethrower mutation.";
box1[2] = "She has 3 guns she can cycle";
box1[3] = "through with the mouse scroll";
box1[4] = "wheel or Q/E on the keyboard.";
var box2 = array_create(5);
box2[0] = "Guns may not have lifesteal";
box2[1] = "absorption, but they offer";
box2[2] = "long range support and";
box2[3] = "allows The Rat to extend";
box2[4] = "their combo. How scary...";
var box3 = array_create(5);
box3[0] = "By killing targets in a row without";
box3[1] = "dropping a combo, The Rat can end";
box3[2] = "the level's current wave and skip to";
box3[3] = "the next one. We cannot let her get";
box3[4] = "away with that!";
dialogues[| 0] = box1;
dialogues[| 1] = box2;
dialogues[| 2] = box3;
ds_list_shuffle(dialogues);
text1 = dialogues[| currentDialogue][0];
text2 = dialogues[| currentDialogue][1];
text3 = dialogues[| currentDialogue][2];
text4 = dialogues[| currentDialogue][3];
text5 = dialogues[| currentDialogue][4];
text = text1 + text2 + text3 + text4 + text5;
textHeight = string_height(text) + 2;
//boxWidth = sprite_get_width(spBox);
											boxWidth = ceil(string_width(text1) * 2.075);
if (string_width(text2) * 2.075 > boxWidth) boxWidth = ceil(string_width(text2) * 2.075);
if (string_width(text3) * 2.075 > boxWidth) boxWidth = ceil(string_width(text3) * 2.075);
if (string_width(text4) * 2.075 > boxWidth) boxWidth = ceil(string_width(text4) * 2.075);
if (string_width(text5) * 2.075 > boxWidth) boxWidth = ceil(string_width(text5) * 2.075);
boxWidth += 7;