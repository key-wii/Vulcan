event_inherited();

col = c_navy;
spBox = spr_talk_text;
var box1 = array_create(5);
var box2 = array_create(5);
ini_open("saveData.ini");
if (ini_read_real("Bosses Beat", "boss final beat", false)) {
	var box3 = array_create(5);
	box1[0] = "H-hey boss!";
	box1[1] = "The Rat was so much stronger";
	box1[2] = "than last time. Did you know";
	box1[3] = "that kills beyond 10 slightly";
	box1[4] = "increase speed during a combo?";
	box2[0] = "Kills beyond 100 will";
	box2[1] = "go straight into The Rat's";
	box2[2] = "HP as healing.";
	box2[3] = "Why are you looking at me";
	box2[4] = "like that?";
	box3[0] = "";
	box3[1] = "You expect me to go up";
	box3[2] = "against that monster?";
	box3[3] = "      Hell no!";
	box3[4] = "";
	dialogues[| 2] = box3;
} else {
	box1[0] = "Do not worry about";
	box1[1] = "The Rat, boss. She";
	box1[2] = "was a clear amateur.";
	box1[3] = "Barely knew about the";
	box1[4] = "bullet melting tech.";
	box2[0] = "It was pure luck she";
	box2[1] = "acquired the mutation";
	box2[2] = "for faster spinning";
	box2[3] = "maintained by destroying";
	box2[4] = "bullets in succession.";
}
ini_close();
dialogues[| 0] = box1;
dialogues[| 1] = box2;
text1 = dialogues[| currentDialogue][0];
text2 = dialogues[| currentDialogue][1];
text3 = dialogues[| currentDialogue][2];
text4 = dialogues[| currentDialogue][3];
text5 = dialogues[| currentDialogue][4];
text = text1 + text2 + text3 + text4 + text5;
textHeight = string_height(text) + 2;
var bWidth = sprite_get_width(spBox);
									boxWidth = ceil(string_width(text1));
if (string_width(text2) > boxWidth) boxWidth = ceil(string_width(text2));
if (string_width(text3) > boxWidth) boxWidth = ceil(string_width(text3));
if (string_width(text4) > boxWidth) boxWidth = ceil(string_width(text4));
if (string_width(text5) > boxWidth) boxWidth = ceil(string_width(text5));
boxWidth *= 2.075;
if (boxWidth > bWidth) {
	boxWidth = bWidth;
	boxWidth *= 1.025;
}