//Triggered when player hits with flame or shoots this object
if (global.moving || (level == -1 && area_complete1)) exit;
if (level == 0) {
	var chapter = instance_create_layer(x, y, "Floor", obj_menu_ch);
	chapter.ch = ch;
	instance_destroy(obj_menu_lv);
} else {
	if (!instance_exists(obj_fade_screen))
		instance_create_layer(0, 0, "UI", obj_fade_screen);
	with (obj_fade_screen) alarm_set(0, 36);
	with (obj_menu_target_parent) sprite_index = spr_levels_hit;
	with (obj_menu_ch) sprite_index = spr_chapter_hit;
	global.moving = true;
	alarm_set(1, 314);
}