ini_open("saveData.ini");
var unlocked = ini_read_real("Bosses Beat", "boss 3 beat", false);
if (!unlocked) instance_destroy();
upgrade = "dizzy";
on = ini_read_real("Options", upgrade, true);
ini_close();

event_inherited();
preview = spr_portrait_char;
text1 = "Dizzy Bullets";
text2 = "Dmg - 10";
text3 = "Speed - 66.25%";
text4 = "Activate with Gun";
text5 = "Fires 2 bullets diagonally";
text = text1 + text2 + text3 + text4 + text5;

col = c_purple;
launcher = true;