event_inherited();
ini_open("saveData.ini");
var chargeUnlocked = ini_read_real("Bosses Beat", "boss 1 beat", false);
ini_close();
preview = spr_menu_preview_f;
if (chargeUnlocked) sprite_index = spr_menu_flame_upgraded;
text1 = "Vulcan";
text2 = "A game made by Hoopy Frood";
text3 = "-Programmer";
text4 = "-Level Designer";
text5 = "-Most things";
text = text1 + text2 + text3 + text4 + text5;

col = make_color_rgb(248, 148, 29);
flame = true;