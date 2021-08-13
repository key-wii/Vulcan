if (loop == 0) {
	loop++;
	timeline_position = 19;
	exit;
}

enemies = instance_number(obj_spawnerandenemyparent_parent);
if (enemies > 0) timeline_position -= 10;