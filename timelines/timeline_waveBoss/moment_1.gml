xx = room_width / 2 - 42; yy = room_height / 2 - 44;
global.checkpoint = 12;
spawnNum = 3;
count = 1;
start = true;
//instance_destroy(obj_spawner_corners);
instance_destroy(obj_enemy_hive);


if (global.deaths == 10 || global.deaths == 15) {
	var help = instance_create_layer(x, y, "UI", obj_help_text);
	with (help) {
		if (global.deaths == 10) {
			text1 = "Flamethrower is the most powerful weapon you have";
			text2 = "Make good use of it";
		}
		if (global.deaths == 15) {
			text1 = "Flamethrower wisely";
			text2 = "It slows your movement";
		}
		text = text1 + text2;
		//textHeight = string_height(text) + 2;
		draw_set_font(-1);
											boxWidth = ceil(string_width(text1));
		if (string_width(text2) > boxWidth) boxWidth = ceil(string_width(text2));
		boxWidth *= 2.075;
		
		alarm_set(1, 325);
	}
}