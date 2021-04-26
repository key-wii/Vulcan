ini_open("saveData.ini");
if (ini_read_real("Bosses Beat", "boss 2 beat", false) && ini_read_real("Bosses Beat", "boss 3 beat", false) &&
	ini_read_real("Bosses Beat", "boss 4 beat", false) && ini_read_real("Bosses Beat", "boss 5 beat", false))
		var areasBeaten = true
else var areasBeaten = false;
ini_close();
//Triggered when player hits with flame or shoots this object
var lv;
if (areasBeaten) var xx = 256;
else var xx = 0;
lv = instance_create_layer(x - 640 + xx, y - 128, "Floor", obj_menu_lv);
lv.level = 1;
lv.ch = ch;
if (beat_level_1) lv.default_sprite = spr_levels_beat;
lv.image_index = lv.level;
lv = instance_create_layer(x - 640 + xx, y + 128, "Floor", obj_menu_lv);
lv.level = 2;
lv.ch = ch;
if (beat_level_2) lv.default_sprite = spr_levels_beat;
lv.image_index = lv.level;
if (beat_level_1 && beat_level_2) {
	lv = instance_create_layer(x - 128, y - 384, "Floor", obj_menu_lv);
	lv.level = 3;
	lv.ch = ch;
	if (beat_level_3) lv.default_sprite = spr_levels_beat;
	lv.image_index = lv.level;
}
if (beat_level_3) {
	lv = instance_create_layer(x - 128, y + 384, "Floor", obj_menu_lv);
	lv.level = -1;
	lv.ch = ch;
	lv.image_index = 10;
	ini_open("saveData.ini");
	var area_complete = ini_read_real("Bosses Beat", "boss 1 beat", false);
	if (area_complete) lv.image_index = 11;
	ini_close();
}
lv = instance_create_layer(x, y, "Floor", obj_menu_lv);
lv.level = 0;
lv.ch = ch;
instance_destroy();