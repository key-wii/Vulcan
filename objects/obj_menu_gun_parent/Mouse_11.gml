if (instance_exists(obj_exit_text)) exit;
if (room != room_credits) with (obj_menu_portrait) {
	sprite_index = default_sprite;
	image_speed = 0;
	col = c_teal;
	if (instance_exists(obj_menu_gun_upgrades_parent)) obj_menu_gun_upgrades_parent.visible = true;
}
with (obj_menu_text) {
	text1 = default_text1;
	text2 = default_text2;
	text3 = default_text3;
	text4 = default_text4;
	text5 = default_text5;
	text = default_text;
	textHeight = string_height(text) + 2;
	charCount = 0;
	col = default_col;
	hover = false;
	launcher = false;
	flame = false;
}