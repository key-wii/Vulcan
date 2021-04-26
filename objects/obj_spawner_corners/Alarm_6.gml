	   if (((global.wave >= 1 && global.wave <= 4) || (global.wave >= 6 && global.wave <= 9)) && global.waveCount != 0) {
	switch (global.finalSpawnList[| global.waveCount]) {
		case 1: timeline_index = timelineDrag_corners1; break;
		case 2: timeline_index = timelineDizz_corners1; break;
		case 3: timeline_index = timelineShld_corners1; break;
		case 4: timeline_index = timelineSpkd_corners1; break;
		case 5: timeline_index = timelineDrag_corners1; break;
		case 6: timeline_index = timelineDizz_corners1; break;
		case 7: timeline_index = timelineShld_corners1; break;
		case 8: timeline_index = timelineSpkd_corners1; break;
	}
} else if (((global.wave >= 11 && global.wave <= 14) || (global.wave >= 16 && global.wave <= 19)) && global.waveCount != 0) {
	switch (global.finalSpawnList[| global.waveCount]) {
		case 1: timeline_index = timelineDrag_corners1; break;
		case 2: timeline_index = timelineDizz_corners1; break;
		case 3: timeline_index = timelineShld_corners1; break;
		case 4: timeline_index = timelineSpkd_corners1; break;
		case 5: timeline_index = timelineDrag_corners2; break;
		case 6: timeline_index = timelineDizz_corners2; break;
		case 7: timeline_index = timelineShld_corners2; break;
		case 8: timeline_index = timelineSpkd_corners2; break;
	}
} else if (((global.wave >= 21 && global.wave <= 24) || (global.wave >= 26 && global.wave <= 29)) && global.waveCount != 0) {
	switch (global.finalSpawnList[| global.waveCount]) {
		case 1: timeline_index = timelineDrag_corners2; break;
		case 2: timeline_index = timelineDizz_corners2; break;
		case 3: timeline_index = timelineShld_corners2; break;
		case 4: timeline_index = timelineSpkd_corners2; break;
		case 5: timeline_index = timelineDrag_corners2; break;
		case 6: timeline_index = timelineDizz_corners2; break;
		case 7: timeline_index = timelineShld_corners2; break;
		case 8: timeline_index = timelineSpkd_corners2; break;
	}
} else if (((global.wave >= 31 && global.wave <= 34) || (global.wave >= 36 && global.wave <= 39)) && global.waveCount != 0) {
	switch (global.finalSpawnList[| global.waveCount]) {
		case 1: timeline_index = timelineDrag_corners2; break;
		case 2: timeline_index = timelineDizz_corners2; break;
		case 3: timeline_index = timelineShld_corners2; break;
		case 4: timeline_index = timelineSpkd_corners2; break;
		case 5: timeline_index = timelineDrag_corners3; break;
		case 6: timeline_index = timelineDizz_corners3; break;
		case 7: timeline_index = timelineShld_corners3; break;
		case 8: timeline_index = timelineSpkd_corners3; break;
	}
}/* else if (((global.wave >= 41 && global.wave <= 44) || (global.wave >= 46 && global.wave <= 49)) && global.waveCount != 0) {
	switch (global.finalSpawnList[| global.waveCount]) {
		case 1: timeline_index = timelineDrag_corners3; break;
		case 2: timeline_index = timelineDizz_corners3; break;
		case 3: timeline_index = timelineShld_corners3; break;
		case 4: timeline_index = timelineSpkd_corners3; break;
		case 5: timeline_index = timelineDrag_corners3; break;
		case 6: timeline_index = timelineDizz_corners3; break;
		case 7: timeline_index = timelineShld_corners3; break;
		case 8: timeline_index = timelineSpkd_corners3; break;
	}
}*/ else {
	timeline_running = false;
	alarm_set(6, 10); 
	exit;
}

timeline_loop = 0;
timeline_position = 99;
timeline_running = true;
	 if (instance_number(obj_enemy_parent < 10)) alarm_set(6, 130);
else if (instance_number(obj_enemy_parent < 20)) alarm_set(6, 180);
else if (instance_number(obj_enemy_parent < 30)) alarm_set(6, 240);
else											 alarm_set(6, 290); 
//alarm_set(7, 5);