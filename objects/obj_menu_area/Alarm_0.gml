//Triggered when player hits with flame or shoots this object
if (global.moving) exit;
if (area == 9) {
	switch (hit) {
		case 0: spin += 1; break;
		case 1: spin += 1.55; break;
		case 2: spin += 3; break;
		case 3: spin += .6; break;
		case 4: spin += 5.5; break;
	}
	slowdown = false;
	alreadyHit = false;
	alarm_set(11, 30);
	if (spin < 14) exit;
}
obj_camera.target = id;
if (!instance_exists(obj_fade_screen))
	instance_create_layer(0, 0, "UI", obj_fade_screen);
with (obj_fade_screen) alarm_set(0, 36);
with (obj_menu_target_parent) sprite_index = spr_levels_hit;
with (obj_menu_ch) sprite_index = spr_chapter_hit;
global.moving = true;
alarm_set(1, 314);