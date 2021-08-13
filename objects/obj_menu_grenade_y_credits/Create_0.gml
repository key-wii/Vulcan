ini_open("saveData.ini");
var chargeUnlocked = ini_read_real("Bosses Beat", "boss 1 beat", false);
ini_close();
if (chargeUnlocked) visible = true;
else instance_destroy();
event_inherited();
preview = spr_portrait_char;
text1 = "Simple attachment Launcher";
text2 = "Dmg - 10 AoE";
text3 = "Speed - 56.25%";
//text4 = "Reload - 137.95%"; //real %, less intuitive for player
//text4 = "Reload - 160.00%"; //same as gun_y
//text4 = "Yellow Shell attachment";
text4 = "Hold click to charge launcher";
text5 = "Explosion: Any impact";
text = text1 + text2 + text3 + text4 + text5;

col = c_yellow;
launcher = true;