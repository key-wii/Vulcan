if (outside_room) {
	alarm_set(10, 5);
	exit;
}
/*if (!burnt) {
	blink = instance_create_layer(x, y, "Enemy_UI_Above", obj_enemy_blink);
	blink.owner = id;
	blink.sw = sprite_width;
	blink.dragonfly = true;
}*/
alarm_set(11, 5);
alarm_set(1, 5);