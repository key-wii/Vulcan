event_inherited();

col = c_black;
spBox = spr_talk_text;
var box1 = array_create(5);
var box2 = array_create(5);
ini_open("saveData.ini");
if (ini_read_real("Bosses Beat", "boss 1 beat", false)) {
	var justBeat1 = true;
		 if (ini_read_real("Bosses Beat", "boss 2 beat", false)) justBeat1 = false;
	else if (ini_read_real("Bosses Beat", "boss 3 beat", false)) justBeat1 = false;
	else if (ini_read_real("Bosses Beat", "boss 4 beat", false)) justBeat1 = false;
	else if (ini_read_real("Bosses Beat", "boss 5 beat", false)) justBeat1 = false;
	if (justBeat1) {
		box1[0] = "The Rat just got a mutation—";
		box1[1] = "charge attacks. That's not";
		box1[2] = "good, boss! By holding left";
		box1[3] = "click while spinning they";
		box1[4] = "can release a Charged Swing.";
		box2[0] = "Kills from a Charged Swing";
		box2[1] = "can cause a chain reaction of";
		box2[2] = "explosions, causing massive";
		box2[3] = "casualties in clusters of";
		box2[4] = "nearby targets. ";
	} else {
		box1[0] = "The Rat can release a Charged";
		box1[1] = "Swing by holding left click";
		box1[2] = "while spinning. Kills from a";
		box1[3] = "Charged Swing can cause a";
		box1[4] = "chain reaction of explosions.";
		box2[0] = "AoE explosions are devastating";
		box2[1] = "to clusters of nearby targets.";
		box2[2] = "At least The Rat can't lifesteal";
		box2[3] = "from chain explosions beyond";
		box2[4] = "their Charged Swing.";
	}
} else {
	box1[0] = "The Rat's flamethrower is nothing to";
	box1[1] = "scoff at. While spinning pressing left";
	box1[2] = "click will quickly change the flame's";
	box1[3] = "direction which allows for full control";
	box1[4] = "over its rotation.";
	box2[0] = "Flamethrowers may be the deadliest";
	box2[1] = "weapon and it already acquired guns";
	box2[2] = "from killing 3 mutants. The Rat may";
	box2[3] = "have even more mutations to watch";
	box2[4] = "out for. Keep a close eye on 'em.";
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