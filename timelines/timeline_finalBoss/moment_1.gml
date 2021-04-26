xx = room_width / 2 - 42; yy = room_height / 2 - 44;
lenX = 0;
lenY = (sprite_get_width(spr_metatron) / 2) + 384;
if (global.checkpoint >= 5) timeline_position = 2400;
/*with (obj_spawner_corners) {
	timeline_index = timeline_finalBossFodder;
	timeline_loop = 0;
	timeline_position = 1;
	timeline_running = true;
}*/
//instance_destroy(obj_enemy_hive);
with (obj_enemy_fly_move_parent) leave = true;