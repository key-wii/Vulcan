	   if (global.level == 101) {
	timeline_index = timeline_room0_corners;
} else if (global.level == 1) {
	timeline_index = timeline_level1corners;
} else if (global.level == 2) {
	timeline_index = timeline_level2corners;
} else if (global.level == 3) {
	timeline_index = timeline_level3corners;
} else if (global.level == 4) {
		 if (global.checkpoint <= 10) timeline_index = timelineDrag_corners1;
	else if (global.checkpoint <= 20) timeline_index = timelineDrag_corners2;
	else if (global.checkpoint <= 30) timeline_index = timelineDrag_corners3;
} else if (global.level == 5) {
		 if (global.checkpoint <= 10) timeline_index = timelineDizz_corners1;
	else if (global.checkpoint <= 20) timeline_index = timelineDizz_corners2;
	else if (global.checkpoint <= 30) timeline_index = timelineDizz_corners3;
} else if (global.level == 6) {
		 if (global.checkpoint <= 10) timeline_index = timelineShld_corners1;
	else if (global.checkpoint <= 20) timeline_index = timelineShld_corners2;
	else if (global.checkpoint <= 30) timeline_index = timelineShld_corners3;
} else if (global.level == 7) {
		 if (global.checkpoint <= 10 || global.checkpoint == 101) timeline_index = timelineSpkd_corners1;
	else if (global.checkpoint <= 20) timeline_index = timelineSpkd_corners2;
	else if (global.checkpoint <= 30) timeline_index = timelineSpkd_corners3;
	else if (global.checkpoint == 103) timeline_index = timelineSpkd_waveBossFodder;
} else if (global.level == 9) {
	xx = room_width / 2; yy = room_height / 2;
	passes = 0;
	flameKills = global.flameKills;
	start = false;
	alarm_set(6, 2);
} else if (global.level == -1 && global.checkpoint == 12) {
	timeline_index = timeline_waveBossFodder;
}
timeline_loop = 0;
timeline_position = 0;
timeline_running = true;
/*
if (global.checkpoint == 12) {
	timeline_index = timeline_waveBossFodder;
} else {
	timeline_index = timeline_level1corners;
}
timeline_loop = 0;
timeline_position = 0;
timeline_running = true;