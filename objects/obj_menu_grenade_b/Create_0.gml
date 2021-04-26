ini_open("saveData.ini");
var chargeUnlocked = ini_read_real("Bosses Beat", "boss 1 beat", false);
ini_close();
if (chargeUnlocked) visible = true;
else instance_destroy();
event_inherited();
preview = spr_portrait_char;
text1 = "Rocket attachment Launcher";
text2 = "POW - 5 + 10 AoE";
text3 = "Speed - 75.00%";
//text4 = "Reload - 57.15%"; //real %, less intuitive for player
//text4 = "Reload - 72.75%"; //same as gun_b
text4 = "Hold click to charge launcher";
text5 = "Explosion: Delayed";
text = text1 + text2 + text3 + text4 + text5;

col = c_blue;