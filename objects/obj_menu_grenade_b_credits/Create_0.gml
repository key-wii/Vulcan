ini_open("saveData.ini");
var chargeUnlocked = ini_read_real("Bosses Beat", "boss 1 beat", false);
ini_close();
if (chargeUnlocked) visible = true;
else instance_destroy();
event_inherited();
preview = spr_portrait_char;
text1 = global.title;
text2 = "A game made by " + global.author;
text3 = "- - - - - - - - - - - - - - -";
text4 = "- - - - - - - - - - - - - - -";
text5 = "- - - - - - - - - - - - - - -";
text = text1 + text2 + text3 + text4 + text5;

col = c_blue;
flame = true;