var enemyLimit = 0;
var enemies = instance_number(obj_spawnerandenemyparent_parent);
spawnNum = 4;
if (global.wave == 1) {
	enemyLimit = 18;
	if (enemies >= enemyLimit) { alarm_set(6, 1); exit; }
	switch (global.finalSpawnList[| global.waveCount]) {
		case 1: timeline_index = timelineDrag_wave1; break;
		case 2: timeline_index = timelineDizz_wave1; break;
		case 3: timeline_index = timelineShld_wave1; break;
		case 4: timeline_index = timelineSpkd_wave1; break;
		case 5: timeline_index = timelineDrag_wave1; break;
		case 6: timeline_index = timelineDizz_wave1; break;
		case 7: timeline_index = timelineShld_wave1; break;
		case 8: timeline_index = timelineSpkd_wave1; break;
	}
} else if (global.wave == 2)  { 
	enemyLimit = 20;
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
} else if (global.wave == 3)  { 
	enemyLimit = 22;
	if (enemies >= enemyLimit) { alarm_set(6, 1); exit; }
	switch (global.finalSpawnList[| global.waveCount]) {
		case 1: timeline_index = timelineDrag_wave3; break;
		case 2: timeline_index = timelineDizz_wave3; break;
		case 3: timeline_index = timelineShld_wave3; break;
		case 4: timeline_index = timelineSpkd_wave3; break;
		case 5: timeline_index = timelineDrag_wave3; break;
		case 6: timeline_index = timelineDizz_wave3; break;
		case 7: timeline_index = timelineShld_wave3; break;
		case 8: timeline_index = timelineSpkd_wave3; break;
	}
} else if (global.wave == 4)  { 
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
} else if (global.wave == 5)  { 
	enemyLimit = -1;
	global.waveCount = 0;
	switch (global.finalMinibossesList[| 1]) {
		case 1: timeline_index = timelineDrag_waveMiniboss2; break;
		case 2: timeline_index = timelineDizz_waveMiniboss2; break;
		case 3: timeline_index = timelineShld_waveMiniboss2; break;
		case 4: timeline_index = timelineSpkd_waveMiniboss2; break;
	}
} else if (global.wave == 6) {
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
} else if (global.wave == 7)  { 
	enemyLimit = 28;
	if (enemies >= enemyLimit) { alarm_set(6, 1); exit; }
	switch (global.finalSpawnList[| global.waveCount]) {
		case 1: timeline_index = timelineDrag_wave6; break;
		case 2: timeline_index = timelineDizz_wave6; break;
		case 3: timeline_index = timelineShld_wave6; break;
		case 4: timeline_index = timelineSpkd_wave6; break;
		case 5: timeline_index = timelineDrag_wave6; break;
		case 6: timeline_index = timelineDizz_wave6; break;
		case 7: timeline_index = timelineShld_wave6; break;
		case 8: timeline_index = timelineSpkd_wave6; break;
	}
} else if (global.wave == 8)  { 
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
} else if (global.wave == 9)  { 
	enemyLimit = 32;
	if (enemies >= enemyLimit) { alarm_set(6, 1); exit; }
	switch (global.finalSpawnList[| global.waveCount]) {
		case 1: timeline_index = timelineDrag_wave8; break;
		case 2: timeline_index = timelineDizz_wave8; break;
		case 3: timeline_index = timelineShld_wave8; break;
		case 4: timeline_index = timelineSpkd_wave8; break;
		case 5: timeline_index = timelineDrag_wave8; break;
		case 6: timeline_index = timelineDizz_wave8; break;
		case 7: timeline_index = timelineShld_wave8; break;
		case 8: timeline_index = timelineSpkd_wave8; break;
	}
} else if (global.wave == 10)  { 
	enemyLimit = -1;
	global.waveCount = 0;
	switch (global.finalBossesList[| 1]) {
		case 1: timeline_index = timelineDrag_waveBoss; break;
		case 2: timeline_index = timelineDizz_waveBoss; break;
		case 3: timeline_index = timelineShld_waveBoss; break;
		case 4: timeline_index = timelineSpkd_waveBoss; break;
	}
} else if (global.wave == 11) {
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
} else if (global.wave == 12)  { 
	enemyLimit = 36;
	if (enemies >= enemyLimit) { alarm_set(6, 1); exit; }
	switch (global.finalSpawnList[| global.waveCount]) {
		case 1: timeline_index = timelineDrag_wave10; break;
		case 2: timeline_index = timelineDizz_wave10; break;
		case 3: timeline_index = timelineShld_wave10; break;
		case 4: timeline_index = timelineSpkd_wave10; break;
		case 5: timeline_index = timelineDrag_wave10; break;
		case 6: timeline_index = timelineDizz_wave10; break;
		case 7: timeline_index = timelineShld_wave10; break;
		case 8: timeline_index = timelineSpkd_wave10; break;
	}
} else if (global.wave == 13)  { 
	enemyLimit = 21;
	if (enemies >= enemyLimit) { alarm_set(6, 1); exit; }
	switch (global.finalSpawnList[| global.waveCount]) {
		case 1: timeline_index = timelineDrag_wave11; break;
		case 2: timeline_index = timelineDizz_wave11; break;
		case 3: timeline_index = timelineShld_wave11; break;
		case 4: timeline_index = timelineSpkd_wave11; break;
		case 5: timeline_index = timelineDrag_wave11; break;
		case 6: timeline_index = timelineDizz_wave11; break;
		case 7: timeline_index = timelineShld_wave11; break;
		case 8: timeline_index = timelineSpkd_wave11; break;
	}
} else if (global.wave == 14)  { 
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
} else if (global.wave == 15)  { 
	enemyLimit = -1;
	global.waveCount = 0;
	switch (global.finalMinibossesList[| 2]) {
		case 1: timeline_index = timelineDrag_waveMiniboss2; break;
		case 2: timeline_index = timelineDizz_waveMiniboss2; break;
		case 3: timeline_index = timelineShld_waveMiniboss2; break;
		case 4: timeline_index = timelineSpkd_waveMiniboss2; break;
	}
} else if (global.wave == 16) {
	enemyLimit = 25;
	if (enemies >= enemyLimit) { alarm_set(6, 1); exit; }
	switch (global.finalSpawnList[| global.waveCount]) {
		case 1: timeline_index = timelineDrag_wave13; break;
		case 2: timeline_index = timelineDizz_wave13; break;
		case 3: timeline_index = timelineShld_wave13; break;
		case 4: timeline_index = timelineSpkd_wave13; break;
		case 5: timeline_index = timelineDrag_wave13; break;
		case 6: timeline_index = timelineDizz_wave13; break;
		case 7: timeline_index = timelineShld_wave13; break;
		case 8: timeline_index = timelineSpkd_wave13; break;
	}
} else if (global.wave == 17)  { 
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
} else if (global.wave == 18)  { 
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
} else if (global.wave == 19)  { 
	enemyLimit = 31;
	if (enemies >= enemyLimit) { alarm_set(6, 1); exit; }
	switch (global.finalSpawnList[| global.waveCount]) {
		case 1: timeline_index = timelineDrag_wave16; break;
		case 2: timeline_index = timelineDizz_wave16; break;
		case 3: timeline_index = timelineShld_wave16; break;
		case 4: timeline_index = timelineSpkd_wave16; break;
		case 5: timeline_index = timelineDrag_wave16; break;
		case 6: timeline_index = timelineDizz_wave16; break;
		case 7: timeline_index = timelineShld_wave16; break;
		case 8: timeline_index = timelineSpkd_wave16; break;
	}
} else if (global.wave == 20)  { 
	enemyLimit = -1;
	global.waveCount = 0;
	switch (global.finalBossesList[| 2]) {
		case 1: timeline_index = timelineDrag_waveBoss; break;
		case 2: timeline_index = timelineDizz_waveBoss; break;
		case 3: timeline_index = timelineShld_waveBoss; break;
		case 4: timeline_index = timelineSpkd_waveBoss; break;
	}
} else if (global.wave == 21) {
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
} else if (global.wave == 22)  { 
	enemyLimit = 35;
	if (enemies >= enemyLimit) { alarm_set(6, 1); exit; }
	switch (global.finalSpawnList[| global.waveCount]) {
		case 1: timeline_index = timelineDrag_wave18; break;
		case 2: timeline_index = timelineDizz_wave18; break;
		case 3: timeline_index = timelineShld_wave18; break;
		case 4: timeline_index = timelineSpkd_wave18; break;
		case 5: timeline_index = timelineDrag_wave18; break;
		case 6: timeline_index = timelineDizz_wave18; break;
		case 7: timeline_index = timelineShld_wave18; break;
		case 8: timeline_index = timelineSpkd_wave18; break;
	}
} else if (global.wave == 23)  { 
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
} else if (global.wave == 24)  { 
	enemyLimit = 39;
	if (enemies >= enemyLimit) { alarm_set(6, 1); exit; }
	switch (global.finalSpawnList[| global.waveCount]) {
		case 1: timeline_index = timelineDrag_wave20; break;
		case 2: timeline_index = timelineDizz_wave20; break;
		case 3: timeline_index = timelineShld_wave20; break;
		case 4: timeline_index = timelineSpkd_wave20; break;
		case 5: timeline_index = timelineDrag_wave20; break;
		case 6: timeline_index = timelineDizz_wave20; break;
		case 7: timeline_index = timelineShld_wave20; break;
		case 8: timeline_index = timelineSpkd_wave20; break;
	}
} else if (global.wave == 25)  { 
	enemyLimit = -1;
	global.waveCount = 0;
	switch (global.finalMinibossesList[| 3]) {
		case 1: timeline_index = timelineDrag_waveMiniboss2; break;
		case 2: timeline_index = timelineDizz_waveMiniboss2; break;
		case 3: timeline_index = timelineShld_waveMiniboss2; break;
		case 4: timeline_index = timelineSpkd_waveMiniboss2; break;
	}
} else if (global.wave == 26) {
	enemyLimit = 24;
	if (enemies >= enemyLimit) { alarm_set(6, 1); exit; }
	switch (global.finalSpawnList[| global.waveCount]) {
		case 1: timeline_index = timelineDrag_wave21; break;
		case 2: timeline_index = timelineDizz_wave21; break;
		case 3: timeline_index = timelineShld_wave21; break;
		case 4: timeline_index = timelineSpkd_wave21; break;
		case 5: timeline_index = timelineDrag_wave21; break;
		case 6: timeline_index = timelineDizz_wave21; break;
		case 7: timeline_index = timelineShld_wave21; break;
		case 8: timeline_index = timelineSpkd_wave21; break;
	}
} else if (global.wave == 27)  { 
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
} else if (global.wave == 28)  { 
	enemyLimit = 28;
	if (enemies >= enemyLimit) { alarm_set(6, 1); exit; }
	switch (global.finalSpawnList[| global.waveCount]) {
		case 1: timeline_index = timelineDrag_wave23; break;
		case 2: timeline_index = timelineDizz_wave23; break;
		case 3: timeline_index = timelineShld_wave23; break;
		case 4: timeline_index = timelineSpkd_wave23; break;
		case 5: timeline_index = timelineDrag_wave23; break;
		case 6: timeline_index = timelineDizz_wave23; break;
		case 7: timeline_index = timelineShld_wave23; break;
		case 8: timeline_index = timelineSpkd_wave23; break;
	}
} else if (global.wave == 29)  { 
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
} else if (global.wave == 30)  { 
	enemyLimit = -1;
	global.waveCount = 0;
	switch (global.finalBossesList[| 3]) {
		case 1: timeline_index = timelineDrag_waveBoss; break;
		case 2: timeline_index = timelineDizz_waveBoss; break;
		case 3: timeline_index = timelineShld_waveBoss; break;
		case 4: timeline_index = timelineSpkd_waveBoss; break;
	}
} else if (global.wave == 31) {
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
} else if (global.wave == 32)  { 
	enemyLimit = 34;
	if (enemies >= enemyLimit) { alarm_set(6, 1); exit; }
	switch (global.finalSpawnList[| global.waveCount]) {
		case 1: timeline_index = timelineDrag_wave26; break;
		case 2: timeline_index = timelineDizz_wave26; break;
		case 3: timeline_index = timelineShld_wave26; break;
		case 4: timeline_index = timelineSpkd_wave26; break;
		case 5: timeline_index = timelineDrag_wave26; break;
		case 6: timeline_index = timelineDizz_wave26; break;
		case 7: timeline_index = timelineShld_wave26; break;
		case 8: timeline_index = timelineSpkd_wave26; break;
	}
} else if (global.wave == 33)  { 
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
} else if (global.wave == 34)  { 
	enemyLimit = 38;
	if (enemies >= enemyLimit) { alarm_set(6, 1); exit; }
	switch (global.finalSpawnList[| global.waveCount]) {
		case 1: timeline_index = timelineDrag_wave28; break;
		case 2: timeline_index = timelineDizz_wave28; break;
		case 3: timeline_index = timelineShld_wave28; break;
		case 4: timeline_index = timelineSpkd_wave28; break;
		case 5: timeline_index = timelineDrag_wave28; break;
		case 6: timeline_index = timelineDizz_wave28; break;
		case 7: timeline_index = timelineShld_wave28; break;
		case 8: timeline_index = timelineSpkd_wave28; break;
	}
} else if (global.wave == 35)  { 
	enemyLimit = -1;
	global.waveCount = 0;
	switch (global.finalMinibossesList[| 0]) {
		case 1: timeline_index = timelineDrag_waveMiniboss2; break;
		case 2: timeline_index = timelineDizz_waveMiniboss2; break;
		case 3: timeline_index = timelineShld_waveMiniboss2; break;
		case 4: timeline_index = timelineSpkd_waveMiniboss2; break;
	}
} else if (global.wave == 36) {
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
} else if (global.wave == 37)  { 
	enemyLimit = 42;
	if (enemies >= enemyLimit) { alarm_set(6, 1); exit; }
	switch (global.finalSpawnList[| global.waveCount]) {
		case 1: timeline_index = timelineDrag_wave30; break;
		case 2: timeline_index = timelineDizz_wave30; break;
		case 3: timeline_index = timelineShld_wave30; break;
		case 4: timeline_index = timelineSpkd_wave30; break;
		case 5: timeline_index = timelineDrag_wave30; break;
		case 6: timeline_index = timelineDizz_wave30; break;
		case 7: timeline_index = timelineShld_wave30; break;
		case 8: timeline_index = timelineSpkd_wave30; break;
	}
} else if (global.wave == 38)  { 
	enemyLimit = 38;
	timeline_running = false;
	alarm_set(8, 20);
	if (enemies >= enemyLimit) { alarm_set(6, 1); exit; }
} else if (global.wave == 39)  { 
	enemyLimit = 41;
	timeline_running = false;
	alarm_set(8, 20);
	if (enemies >= enemyLimit) { alarm_set(6, 1); exit; }
} else if (global.wave == 40)  { 
	enemyLimit = -1;
	global.waveCount = 0;
	switch (global.finalBossesList[| 0]) {
		case 1: timeline_index = timelineDrag_waveBoss; break;
		case 2: timeline_index = timelineDizz_waveBoss; break;
		case 3: timeline_index = timelineShld_waveBoss; break;
		case 4: timeline_index = timelineSpkd_waveBoss; break;
	}
} else if (global.wave >= 41 && global.wave <= 44)  { 
	instance_destroy(obj_spawner_corners);
	enemyLimit = 6;
	timeline_running = false;
	alarm_set(8, 5);
	if (enemies >= enemyLimit) { alarm_set(6, 1); exit; }
} else if (global.wave == 45)  { 
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

if (global.wave <= 37 || global.wave == 40 || global.wave == 45) {
	timeline_loop = 0;
	timeline_position = 98;
	timeline_running = true;
}
if (global.wave == 5 || global.wave == 10 || global.wave == 15 ||
	global.wave == 20 || global.wave == 25 || global.wave == 30 ||
	global.wave == 35 || global.wave == 40/* || global.wave == 45*/) {
		xx = room_width / 2 - 42; yy = room_height / 2 - 44;
		global.wave++;
		global.waveCount = 0;
		with (obj_enemy_fly_move_parent) leave = true;
		exit;
} else if (global.wave == 45) {
	timeline_position = 0;
	exit;
}
global.waveCount++;
if (global.waveCount == 8) {
	global.wave++;
	global.waveCount = 1;
	ds_list_shuffle(global.finalSpawnList);
}

	 if (enemies < enemyLimit / 4)	  alarm_set(6, 30);
else if (enemies < enemyLimit / 3)	  alarm_set(6, 60);
else if (enemies < enemyLimit / 2)	  alarm_set(6, 110);
else if (enemies < enemyLimit / 1.5)  alarm_set(6, 220);
else if (enemies < enemyLimit / 1.25) alarm_set(6, 280);
else if (enemyLimit != -1)			  alarm_set(6, 340); 
alarm_set(7, 5);
if (global.wave < 38) alarm_set(8, 300);