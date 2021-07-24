ini_open("saveData.ini");
var unlocked = ini_read_real("Bosses Beat", "boss 4 beat", false);
if (!unlocked) instance_destroy();
upgrade = "shield";
on = ini_read_real("Options", upgrade, true);
ini_close();
event_inherited();

preview = spr_portrait_char;
text1 = "Shield";
text2 = "Protects from non-black bullets,";
text3 = "otherwise it breaks";
text4 = "Activate by Switching Guns";
text5 = "Broken: Returns after 10 seconds";
text = text1 + text2 + text3 + text4 + text5;

col = c_purple;
launcher = true;