if (instance_number(obj_fade_screen) > 1) {
	visible = false;
	instance_destroy();
}
image_speed = 0;
i = -1;
cutscene = false;
c_sprite = spr_cutscene_dragon;
alpha = 1;