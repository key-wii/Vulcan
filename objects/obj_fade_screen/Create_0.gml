if (instance_number(obj_fade_screen) > 1) {
	with (obj_fade_screen) if (id > other.id) {
		visible = false;
		instance_destroy();
	}
}
image_speed = 0;
i = -1;
cutscene = false;
c_sprite = spr_empty;
alpha = 1;