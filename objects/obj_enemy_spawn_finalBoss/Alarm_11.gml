ready = true;
if (enemy == obj_enemy_dragonfly_s || enemy == obj_enemy_bbbird_s || enemy == obj_enemy_bbbird_s2 || enemy == obj_enemy_bbbird_s3) {
	sprite_index = spr_enemy_spawn_above;
	image_xscale = 2.5;
	image_yscale = 2.5;
}
if (string_count("controller", object_get_name(enemy)) > 0) {
	sprite_index = spr_enemy_spawn_controller;
	image_xscale = 2.5;
	image_yscale = 2.5;
}