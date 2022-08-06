var enemyLimit = 0;
var enemies = instance_number(obj_spawnerandenemyparent_parent);
spawnNum = 4;
if (global.wave == 1)  { 
	enemyLimit = 18;
	if (enemies >= enemyLimit) { alarm_set(6, 1); exit; }
	switch (global.finalSpawnList[| global.waveCount]) {
		case 1: timeline_index = timelineDrag_wave2; break;
		case 2: timeline_index = timelineDizz_wave2; break;
		case 3: timeline_index = timelineShld_wave2; break;
		case 4: timeline_index = timelineSpkd_wave2; break;
		case 5: timeline_index = timelineDrag_wave2; break;
		case 6: timeline_index = timelineDizz_wave2; break;
		case 7: timeline_index = timelineShld_wave2; break;
		case 8: timeline_index = timelineSpkd_wave2; break;
	}
} else if (global.wave == 2)  { 
	enemyLimit = 24;
	if (enemies >= enemyLimit) { alarm_set(6, 1); exit; }
	switch (global.finalSpawnList[| global.waveCount]) {
		case 1: timeline_index = timelineDrag_wave4; break;
		case 2: timeline_index = timelineDizz_wave4; break;
		case 3: timeline_index = timelineShld_wave4; break;
		case 4: timeline_index = timelineSpkd_wave4; break;
		case 5: timeline_index = timelineDrag_wave4; break;
		case 6: timeline_index = timelineDizz_wave4; break;
		case 7: timeline_index = timelineShld_wave4; break;
		case 8: timeline_index = timelineSpkd_wave4; break;
	}
} else if (global.wave == 3)  { 
	enemyLimit = -1;
	global.waveCount = 0;
	switch (global.finalMinibossesList[| 0]) {
		case 1: timeline_index = timelineDrag_waveMiniboss2; break;
		case 2: timeline_index = timelineDizz_waveMiniboss2; break;
		case 3: timeline_index = timelineShld_waveMiniboss2; break;
		case 4: timeline_index = timelineSpkd_waveMiniboss2; break;
	}
} else if (global.wave == 4) {
	enemyLimit = 26;
	if (enemies >= enemyLimit) { alarm_set(6, 1); exit; }
	switch (global.finalSpawnList[| global.waveCount]) {
		case 1: timeline_index = timelineDrag_wave5; break;
		case 2: timeline_index = timelineDizz_wave5; break;
		case 3: timeline_index = timelineShld_wave5; break;
		case 4: timeline_index = timelineSpkd_wave5; break;
		case 5: timeline_index = timelineDrag_wave5; break;
		case 6: timeline_index = timelineDizz_wave5; break;
		case 7: timeline_index = timelineShld_wave5; break;
		case 8: timeline_index = timelineSpkd_wave5; break;
	}
} else if (global.wave == 5)  { 
	enemyLimit = 30;
	if (enemies >= enemyLimit) { alarm_set(6, 1); exit; }
	switch (global.finalSpawnList[| global.waveCount]) {
		case 1: timeline_index = timelineDrag_wave7; break;
		case 2: timeline_index = timelineDizz_wave7; break;
		case 3: timeline_index = timelineShld_wave7; break;
		case 4: timeline_index = timelineSpkd_wave7; break;
		case 5: timeline_index = timelineDrag_wave7; break;
		case 6: timeline_index = timelineDizz_wave7; break;
		case 7: timeline_index = timelineShld_wave7; break;
		case 8: timeline_index = timelineSpkd_wave7; break;
	}
} else if (global.wave == 6) {
	enemyLimit = 34;
	if (enemies >= enemyLimit) { alarm_set(6, 1); exit; }
	switch (global.finalSpawnList[| global.waveCount]) {
		case 1: timeline_index = timelineDrag_wave9; break;
		case 2: timeline_index = timelineDizz_wave9; break;
		case 3: timeline_index = timelineShld_wave9; break;
		case 4: timeline_index = timelineSpkd_wave9; break;
		case 5: timeline_index = timelineDrag_wave9; break;
		case 6: timeline_index = timelineDizz_wave9; break;
		case 7: timeline_index = timelineShld_wave9; break;
		case 8: timeline_index = timelineSpkd_wave9; break;
	}
} else if (global.wave == 7)  { 
	enemyLimit = -1;
	global.waveCount = 0;
	switch (global.finalBossesList[| 1]) {
		case 1: timeline_index = timelineDrag_waveBoss; break;
		case 2: timeline_index = timelineDizz_waveBoss; break;
		case 3: timeline_index = timelineShld_waveBoss; break;
		case 4: timeline_index = timelineSpkd_waveBoss; break;
	}
} else if (global.wave == 8)  { 
	enemyLimit = 23;
	if (enemies >= enemyLimit) { alarm_set(6, 1); exit; }
	switch (global.finalSpawnList[| global.waveCount]) {
		case 1: timeline_index = timelineDrag_wave12; break;
		case 2: timeline_index = timelineDizz_wave12; break;
		case 3: timeline_index = timelineShld_wave12; break;
		case 4: timeline_index = timelineSpkd_wave12; break;
		case 5: timeline_index = timelineDrag_wave12; break;
		case 6: timeline_index = timelineDizz_wave12; break;
		case 7: timeline_index = timelineShld_wave12; break;
		case 8: timeline_index = timelineSpkd_wave12; break;
	}
} else if (global.wave == 9)  { 
	enemyLimit = 27;
	if (enemies >= enemyLimit) { alarm_set(6, 1); exit; }
	switch (global.finalSpawnList[| global.waveCount]) {
		case 1: timeline_index = timelineDrag_wave14; break;
		case 2: timeline_index = timelineDizz_wave14; break;
		case 3: timeline_index = timelineShld_wave14; break;
		case 4: timeline_index = timelineSpkd_wave14; break;
		case 5: timeline_index = timelineDrag_wave14; break;
		case 6: timeline_index = timelineDizz_wave14; break;
		case 7: timeline_index = timelineShld_wave14; break;
		case 8: timeline_index = timelineSpkd_wave14; break;
	}
} else if (global.wave == 10)  { 
	enemyLimit = -1;
	global.waveCount = 0;
	switch (global.finalMinibossesList[| 0]) {
		case 1: timeline_index = timelineDrag_waveMiniboss2; break;
		case 2: timeline_index = timelineDizz_waveMiniboss2; break;
		case 3: timeline_index = timelineShld_waveMiniboss2; break;
		case 4: timeline_index = timelineSpkd_waveMiniboss2; break;
	}
} else if (global.wave == 11)  { 
	enemyLimit = 29;
	if (enemies >= enemyLimit) { alarm_set(6, 1); exit; }
	switch (global.finalSpawnList[| global.waveCount]) {
		case 1: timeline_index = timelineDrag_wave15; break;
		case 2: timeline_index = timelineDizz_wave15; break;
		case 3: timeline_index = timelineShld_wave15; break;
		case 4: timeline_index = timelineSpkd_wave15; break;
		case 5: timeline_index = timelineDrag_wave15; break;
		case 6: timeline_index = timelineDizz_wave15; break;
		case 7: timeline_index = timelineShld_wave15; break;
		case 8: timeline_index = timelineSpkd_wave15; break;
	}
} else if (global.wave == 12) {
	enemyLimit = 33;
	if (enemies >= enemyLimit) { alarm_set(6, 1); exit; }
	switch (global.finalSpawnList[| global.waveCount]) {
		case 1: timeline_index = timelineDrag_wave17; break;
		case 2: timeline_index = timelineDizz_wave17; break;
		case 3: timeline_index = timelineShld_wave17; break;
		case 4: timeline_index = timelineSpkd_wave17; break;
		case 5: timeline_index = timelineDrag_wave17; break;
		case 6: timeline_index = timelineDizz_wave17; break;
		case 7: timeline_index = timelineShld_wave17; break;
		case 8: timeline_index = timelineSpkd_wave17; break;
	}
} else if (global.wave == 13)  { 
	enemyLimit = 37;
	if (enemies >= enemyLimit) { alarm_set(6, 1); exit; }
	switch (global.finalSpawnList[| global.waveCount]) {
		case 1: timeline_index = timelineDrag_wave19; break;
		case 2: timeline_index = timelineDizz_wave19; break;
		case 3: timeline_index = timelineShld_wave19; break;
		case 4: timeline_index = timelineSpkd_wave19; break;
		case 5: timeline_index = timelineDrag_wave19; break;
		case 6: timeline_index = timelineDizz_wave19; break;
		case 7: timeline_index = timelineShld_wave19; break;
		case 8: timeline_index = timelineSpkd_wave19; break;
	}
} else if (global.wave == 14)  { 
	enemyLimit = -1;
	global.waveCount = 0;
	switch (global.finalBossesList[| 2]) {
		case 1: timeline_index = timelineDrag_waveBoss; break;
		case 2: timeline_index = timelineDizz_waveBoss; break;
		case 3: timeline_index = timelineShld_waveBoss; break;
		case 4: timeline_index = timelineSpkd_waveBoss; break;
	}
} else if (global.wave == 15)  { 
	enemyLimit = 26;
	if (enemies >= enemyLimit) { alarm_set(6, 1); exit; }
	switch (global.finalSpawnList[| global.waveCount]) {
		case 1: timeline_index = timelineDrag_wave22; break;
		case 2: timeline_index = timelineDizz_wave22; break;
		case 3: timeline_index = timelineShld_wave22; break;
		case 4: timeline_index = timelineSpkd_wave22; break;
		case 5: timeline_index = timelineDrag_wave22; break;
		case 6: timeline_index = timelineDizz_wave22; break;
		case 7: timeline_index = timelineShld_wave22; break;
		case 8: timeline_index = timelineSpkd_wave22; break;
	}
} else if (global.wave == 16)  { 
	enemyLimit = 30;
	if (enemies >= enemyLimit) { alarm_set(6, 1); exit; }
	switch (global.finalSpawnList[| global.waveCount]) {
		case 1: timeline_index = timelineDrag_wave24; break;
		case 2: timeline_index = timelineDizz_wave24; break;
		case 3: timeline_index = timelineShld_wave24; break;
		case 4: timeline_index = timelineSpkd_wave24; break;
		case 5: timeline_index = timelineDrag_wave24; break;
		case 6: timeline_index = timelineDizz_wave24; break;
		case 7: timeline_index = timelineShld_wave24; break;
		case 8: timeline_index = timelineSpkd_wave24; break;
	}
} else if (global.wave == 17)  { 
	enemyLimit = -1;
	global.waveCount = 0;
	switch (global.finalMinibossesList[| 0]) {
		case 1: timeline_index = timelineDrag_waveMiniboss2; break;
		case 2: timeline_index = timelineDizz_waveMiniboss2; break;
		case 3: timeline_index = timelineShld_waveMiniboss2; break;
		case 4: timeline_index = timelineSpkd_waveMiniboss2; break;
	}
} else if (global.wave == 18) {
	enemyLimit = 32;
	if (enemies >= enemyLimit) { alarm_set(6, 1); exit; }
	switch (global.finalSpawnList[| global.waveCount]) {
		case 1: timeline_index = timelineDrag_wave25; break;
		case 2: timeline_index = timelineDizz_wave25; break;
		case 3: timeline_index = timelineShld_wave25; break;
		case 4: timeline_index = timelineSpkd_wave25; break;
		case 5: timeline_index = timelineDrag_wave25; break;
		case 6: timeline_index = timelineDizz_wave25; break;
		case 7: timeline_index = timelineShld_wave25; break;
		case 8: timeline_index = timelineSpkd_wave25; break;
	}
} else if (global.wave == 19)  { 
	enemyLimit = 36;
	if (enemies >= enemyLimit) { alarm_set(6, 1); exit; }
	switch (global.finalSpawnList[| global.waveCount]) {
		case 1: timeline_index = timelineDrag_wave27; break;
		case 2: timeline_index = timelineDizz_wave27; break;
		case 3: timeline_index = timelineShld_wave27; break;
		case 4: timeline_index = timelineSpkd_wave27; break;
		case 5: timeline_index = timelineDrag_wave27; break;
		case 6: timeline_index = timelineDizz_wave27; break;
		case 7: timeline_index = timelineShld_wave27; break;
		case 8: timeline_index = timelineSpkd_wave27; break;
	}
} else if (global.wave == 20) {
	enemyLimit = 40;
	if (enemies >= enemyLimit) { alarm_set(6, 1); exit; }
	switch (global.finalSpawnList[| global.waveCount]) {
		case 1: timeline_index = timelineDrag_wave29; break;
		case 2: timeline_index = timelineDizz_wave29; break;
		case 3: timeline_index = timelineShld_wave29; break;
		case 4: timeline_index = timelineSpkd_wave29; break;
		case 5: timeline_index = timelineDrag_wave29; break;
		case 6: timeline_index = timelineDizz_wave29; break;
		case 7: timeline_index = timelineShld_wave29; break;
		case 8: timeline_index = timelineSpkd_wave29; break;
	}
} else if (global.wave == 21)  { 
	enemyLimit = -1;
	global.waveCount = 0;
	switch (global.finalBossesList[| 3]) {
		case 1: timeline_index = timelineDrag_waveBoss; break;
		case 2: timeline_index = timelineDizz_waveBoss; break;
		case 3: timeline_index = timelineShld_waveBoss; break;
		case 4: timeline_index = timelineSpkd_waveBoss; break;
	}
} else if (global.wave == 22)  { 
	enemyLimit = 38;
	timeline_running = false;
	alarm_set(8, 20);
	if (enemies >= enemyLimit) { alarm_set(6, 1); exit; }
} else if (global.wave == 23)  { 
	enemyLimit = 41;
	timeline_running = false;
	alarm_set(8, 20);
	if (enemies >= enemyLimit) { alarm_set(6, 1); exit; }
} else if (global.wave == 24)  { 
	enemyLimit = -1;
	global.waveCount = 0;
	switch (global.finalMinibossesList[| 0]) {
		case 1: timeline_index = timelineDrag_waveMiniboss2; break;
		case 2: timeline_index = timelineDizz_waveMiniboss2; break;
		case 3: timeline_index = timelineShld_waveMiniboss2; break;
		case 4: timeline_index = timelineSpkd_waveMiniboss2; break;
	}
} else if (global.wave == 25)  { 
	enemyLimit = -1;
	global.waveCount = 0;
	switch (global.finalBossesList[| 0]) {
		case 1: timeline_index = timelineDrag_waveBoss; break;
		case 2: timeline_index = timelineDizz_waveBoss; break;
		case 3: timeline_index = timelineShld_waveBoss; break;
		case 4: timeline_index = timelineSpkd_waveBoss; break;
	}
} else if (global.wave >= 26 && global.wave <= 29)  { 
	instance_destroy(obj_spawner_corners);
	enemyLimit = 6;
	timeline_running = false;
	alarm_set(8, 5);
	if (enemies >= enemyLimit) { alarm_set(6, 1); exit; }
} else if (global.wave == 30)  { 
	enemyLimit = -1;
	timeline_index = timeline_finalBoss;
	timeline_loop = 0;
	timeline_position = 0;
	timeline_running = true;
	exit;
}/* else if (global.wave == 46)  { 
	enemyLimit = 42;
	if (enemies >= enemyLimit) { alarm_set(6, 1); exit; }
} else if (global.wave == 47)  { 
	enemyLimit = 45;
	if (enemies >= enemyLimit) { alarm_set(6, 1); exit; }
} else if (global.wave == 48)  { 
	enemyLimit = 48;
	if (enemies >= enemyLimit) { alarm_set(6, 1); exit; }
} else if (global.wave == 49)  { 
	enemyLimit = 51;
	if (enemies >= enemyLimit) { alarm_set(6, 1); exit; }
} else if (global.wave == 50)  { 
	
}*/

if (global.wave <= 21 || global.wave == 25 || global.wave == 30) {
	timeline_loop = 0;
	timeline_position = 98;
	timeline_running = true;
}
if (global.wave == 3 || global.wave == 7 || global.wave == 10 ||
	global.wave == 14 || global.wave == 17 || global.wave == 21 ||
	global.wave == 24 || global.wave == 25/* || global.wave == 45*/) {
		xx = room_width / 2 - 42; yy = room_height / 2 - 44;
		global.wave++;
		global.waveCount = 0;
		with (obj_enemy_fly_move_parent) leave = true;
		exit;
} else if (global.wave == 30) {
	timeline_position = 0;
	exit;
}
global.waveCount++;
if (global.waveCount == 8) {
	global.wave++;
	global.waveCount = 1;
	ds_list_shuffle(global.finalSpawnList);
}

	 if (enemies < enemyLimit / 4)	  alarm_set(6, 10);
else if (enemies < enemyLimit / 3)	  alarm_set(6, 20);
else if (enemies < enemyLimit / 2)	  alarm_set(6, 30);
else if (enemies < enemyLimit / 1.5)  alarm_set(6, 40);
else if (enemies < enemyLimit / 1.25) alarm_set(6, 50);
else if (enemyLimit != -1)			  alarm_set(6, 60); 
alarm_set(7, 5);
if (global.wave < 22) alarm_set(8, 300);