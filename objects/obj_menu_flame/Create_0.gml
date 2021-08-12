event_inherited();
ini_open("saveData.ini");
var chargeUnlocked = ini_read_real("Bosses Beat", "boss 1 beat", false);
ini_close();
preview = spr_menu_preview_f;
if (chargeUnlocked) {
	sprite_index = spr_menu_flame_upgraded;
	text1 = "Flamethrower";
	text2 = "Dmg - 10 | 600 DPS";
	text3 = "Hold left click to charge swing";
	text4 = "After letting go, immediately";
	text5 = "left click for an Ultra Swing";
} else {
	text1 = "Flamethrower";
	text2 = "Dmg - 10 | 600 DPS";
	text3 = "Swing - 1 Charge";
	text4 = "Destroy bullets to rotate faster";
	text5 = "Absorbs warmth from its target";
}
text = text1 + text2 + text3 + text4 + text5;

col = make_color_rgb(248, 148, 29);
flame = true;