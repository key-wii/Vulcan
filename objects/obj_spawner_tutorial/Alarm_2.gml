if (instance_number(obj_spawnerandenemyparent_parent) == 0 && phase == 3) {
	timeline_running = true;
	obj_how_to_flame.image_alpha = .3;
}
if (instance_number(obj_spawnerandenemyparent_parent) == 0 && phase == 4) {
	timeline_running = true;
}
if (instance_number(obj_spawnerandenemyparent_parent) == 0 && phase == 5) {
	controller_tutorial.phase = 5;
	with (controller_tutorial) alarm_set(7, 40);
	phase = 6;
	alarm_set(2, 0);
}
alarm_set(2, 5);