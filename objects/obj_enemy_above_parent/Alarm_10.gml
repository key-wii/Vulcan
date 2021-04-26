if (!burnt) {
	blink = instance_create_layer(x, y, "Enemy_UI", obj_enemy_blink);
	blink.owner = id;
	blink.sw = sprite_width;
}
alarm_set(11, 5);
alarm_set(1, 5);