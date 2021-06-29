ini_open("saveData.ini");
var chargeUnlocked = ini_read_real("Bosses Beat", "boss 1 beat", false);
ini_close();
if (chargeUnlocked) visible = true;
else instance_destroy();
event_inherited();
preview = spr_portrait_char;
text1 = "Bouncer attachment Launcher";
text2 = "Dmg - 10 AoE";
text3 = "Speed - 131.25% (inital)";
//text4 = "Reload - 80.00%"; //real %, less intuitive for player
//text4 = "Reload - 100.00%"; //same as gun_g
//text4 = "Green Bouncer attachment";
text4 = "Hold click to charge launcher";
text5 = "Explosion: 2nd enemy impact";
text = text1 + text2 + text3 + text4 + text5;

col = c_lime;
launcher = true;