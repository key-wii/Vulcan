event_inherited();

dead_sprite = spr_enemy_slime_dead;
if (y > room_height / 2) yPlus = -32;
else yPlus = -64;

col = c_maroon;
spBox = spr_talk_text;
var box1 = array_create(5);
/*box1[0] = "The Rat's flamethrower";
box1[1] = "may be versatile, but";
box1[2] = "even at max speed, it";
box1[3] = "slows down movement";
box1[4] = "ever so slightly.";
var box2 = array_create(5);
box2[0] = "I'll take advantage";
box2[1] = "of this slowdown";
box2[2] = "and kamikaze when";
box2[3] = "they least expect it";
box2[4] = "       >:)";*/
box1[0] = "The Rat's flamethrower";
box1[1] = "may be her strongest";
box1[2] = "asset but its orthogonal";
box1[3] = "movement is incredibly";
box1[4] = "slower while spinning.";
var box2 = array_create(5);
box2[0] = "After combining momentum";
box2[1] = "into diagonal movement";
box2[2] = "her max speed is still";
box2[3] = "slower than normal by";
box2[4] = "approximately ~ 4.54%";
var box3 = array_create(5);
box3[0] = "Us slimes can take advantage";
box3[1] = "of this weakness to sneak up";
box3[2] = "and go kamikaze when The Rat";
box3[3] = "least expects it!";
box3[4] = "";
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