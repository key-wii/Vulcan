if (timeline_running) exit;
if (phase == 1 && global.flameKills < 4) {
	for (i = 0; i < 4; i++)
		if (!instance_exists(arrayEnemies[i]))
			instance_create_layer(arrxx[i], arryy[i], "Enemy", obj_enemy_tutorial_dummy);
	for (i = 0; i < instance_number(obj_enemy_tutorial_dummy); i++) {
		arrayEnemies[i] = instance_find(obj_enemy_tutorial_dummy, i);
		arrxx[i] = instance_find(obj_enemy_tutorial_dummy, i).x;
		arryy[i] = instance_find(obj_enemy_tutorial_dummy, i).y;
	}
} else if (phase == 2) {
	obj_how_to_flame.image_alpha = .5;
	alarm_set(1, 150);
	phase = 3;
	if (instance_exists(obj_combo_1))
		with (obj_combo_1)
			instance_change(obj_combo_2, true);
}