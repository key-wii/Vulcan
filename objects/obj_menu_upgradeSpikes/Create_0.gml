ini_open("saveData.ini");
var unlocked = ini_read_real("Bosses Beat", "boss 5 beat", false);
if (!unlocked) instance_destroy();
upgrade = "spikes";
on = ini_read_real("Options", upgrade, true);
ini_close();
event_inherited();

preview = spr_portrait_char;
text1 = "Spikey Body";
text2 = "Dmg - Same as Gun";
text3 = "Speed - Same as Gun";
text4 = "Activates when taking damage";
text5 = "Fires bullet from spike";
text = text1 + text2 + text3 + text4 + text5;

col = c_purple;
launcher = true;