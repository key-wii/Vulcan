event_inherited();
ini_open("saveData.ini");
var chargeUnlocked = ini_read_real("Bosses Beat", "boss 1 beat", false);
ini_close();
preview = spr_menu_preview_f;
if (chargeUnlocked) {
	sprite_index = spr_menu_flame_upgraded;
	text1 = "Flamethrower";
	text2 = "Dmg - 10 | 600 DPS";
	text3 = "Swing - 1 Charge";
	text4 = "Charged Swing - 2 Charges";
	text5 = "Ultra Swing - 6 Charges";
} else {
	text1 = "Flamethrower";
	text2 = "Dmg - 10 | 600 DPS";
	text3 = "Swing - 1 Charge";
	text4 = "Destroy bullets to rotate faster";
	text5 = "Absorbs warmth from its target";
}
text = text1 + text2 + text3 + text4 + text5;

col = c_orange;