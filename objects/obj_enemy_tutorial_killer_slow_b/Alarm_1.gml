var bull = instance_create_layer(x, y, "Enemy_Bullets", obj_bouncer_e_fps_efficient);
bull.direction = direction;
bull.image_angle = direction;
bull.speed = 3;
with (bull) {
	alarm_set(0, 595);
	alarm_set(10, 594);
}
alarm_set(5, 10);