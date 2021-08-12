event_inherited();

col = c_navy;
spBox = spr_talk_text;
var box1 = array_create(5);
ini_open("saveData.ini");

var justBeatTut = true;
	 if (ini_read_real("Levels Beat", "level 1 beat", false)) justBeatTut = false;
else if (ini_read_real("Levels Beat", "level 2 beat", false)) justBeatTut = false;
if (ini_read_real("Bosses Beat", "boss final beat", false)) {
	box1[0] = "According to our intel, kills";
	box1[1] = "beyond 10 slightly increase";
	box1[2] = "speed during a combo and kills";
	box1[3] = "exceeding 100 will restore";
	box1[4] = "slightly more HP than normal.";
} else if (justBeatTut) {
	var box2 = array_create(5);
	box1[0] = "Do not worry about";
	box1[1] = "The Rat, boss. She";
	box1[2] = "was a clear amateur—";
	box1[3] = "barely knew about the";
	box1[4] = "bullet melting tech.";
	box2[0] = "It was pure luck she";
	box2[1] = "acquired the mutation";
	box2[2] = "for faster spinning";
	box2[3] = "maintained by destroying";
	box2[4] = "bullets in succession.";
	dialogues[| 1] = box2;
} else if (!ini_read_real("Bosses Beat", "boss 1 beat", false)) {
	instance_destroy();
	ini_close();
	exit;
} else if (irandom(9) < 5) {
	sprite_index = spr_enemy_b3_strip20;
	default_sprite = sprite_index;
	col = c_lime;
	var box2 = array_create(5);
	box1[0] = "Guns deal thrice as";
	box1[1] = "much damage to targets";
	box1[2] = "with a lot of HP. That";
	box1[3] = "includes midbosses and";
	box1[4] = "bosses like you, Boss.";
	box2[0] = "Yet when it comes to raw";
	box2[1] = "DPS, no gun stands a";
	box2[2] = "chance against the damage";
	box2[3] = "dealt by the absurd heat";
	box2[4] = "of your flamethrower.";
	dialogues[| 1] = box2;
} else {
	instance_destroy();
	ini_close();
	exit;
}
ini_close();
dialogues[| 0] = box1;
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