if (global.checkpoint == 0) {
	instance_create_layer(1888 + 256, 1248 + 256, "Enemy", obj_enemy_tutorial_dummy);
	instance_create_layer(992 + 256, 1248 + 256, "Enemy", obj_enemy_tutorial_dummy);
	instance_create_layer(1440 + 256, 800 + 256, "Enemy", obj_enemy_tutorial_dummy);
	instance_create_layer(1440 + 256, 1696 + 256, "Enemy", obj_enemy_tutorial_dummy);
	phase = 1;
	for (i = 0; i < instance_number(obj_enemy_tutorial_dummy); i++) {
		arrayEnemies[i] = instance_find(obj_enemy_tutorial_dummy, i);
		arrxx[i] = instance_find(obj_enemy_tutorial_dummy, i).x;
		arryy[i] = instance_find(obj_enemy_tutorial_dummy, i).y;
	}
}
if (global.checkpoint > 0) {
	if (global.checkpoint == 1) timeline_index = timeline_tutorial1_win;
	if (global.checkpoint == 2) timeline_index = timeline_tutorial2;
	timeline_loop = 0;
	timeline_position = 0;
	timeline_running = true;
}
xx = 0;
yy = 0;