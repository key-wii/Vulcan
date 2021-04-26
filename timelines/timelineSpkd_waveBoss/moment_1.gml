xx = room_width / 2 - 42; yy = room_height / 2 - 44;
global.checkpoint = 103;
spawnNum = 3;
count = 1;
start = true;
with (obj_spawner_corners) {
	timeline_index = timelineSpkd_waveBossFodder;
	timeline_loop = 0;
	timeline_position = 1;
	timeline_running = true;
}
//instance_destroy(obj_enemy_hive);