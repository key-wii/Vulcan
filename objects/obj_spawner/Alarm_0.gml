if (global.level == 101) {
	timeline_index = timeline_room0; alarm_set(1, 0);
}
else if (global.level == 1) {
	maxCheckpoint = 10;
		 if (global.checkpoint == 1)  { timeline_index = timeline_wave1;  alarm_set(1, 1300 + 360); }
	else if (global.checkpoint == 2)  { timeline_index = timeline_wave2;  alarm_set(1, 1400 + 360); }
	else if (global.checkpoint == 3)  { timeline_index = timeline_wave3;  alarm_set(1, 1200 + 360); }
	else if (global.checkpoint == 4)  { timeline_index = timeline_wave4;  alarm_set(1, 1100 + 360); }
	else if (global.checkpoint == 5)  { timeline_index = timeline_wave5;  alarm_set(1, 1400 + 360); }
	else if (global.checkpoint == 6)  { timeline_index = timeline_wave6;  alarm_set(1, 1200 + 360); }
	else if (global.checkpoint == 7)  { timeline_index = timeline_wave7;  alarm_set(1, 1300 + 360); }
	else if (global.checkpoint == 8)  { timeline_index = timeline_wave8;  alarm_set(1, 1500 + 360); }
	else if (global.checkpoint == 9)  { timeline_index = timeline_wave9;  alarm_set(1, 1300 + 360); }
	else if (global.checkpoint == 10) { timeline_index = timeline_wave10; alarm_set(1, 1300 + 360); }
	else if (global.checkpoint == 11) timeline_index = timeline1_waveMiniboss;
}
else if (global.level == 2) {
	maxCheckpoint = 10;
		 if (global.checkpoint == 1)  { timeline_index = timeline2_wave1;  alarm_set(1, 1300 + 360); }
	else if (global.checkpoint == 2)  { timeline_index = timeline2_wave2;  alarm_set(1, 1200 + 360); }
	else if (global.checkpoint == 3)  { timeline_index = timeline2_wave3;  alarm_set(1, 1400 + 360); }
	else if (global.checkpoint == 4)  { timeline_index = timeline2_wave4;  alarm_set(1, 1100 + 360); }
	else if (global.checkpoint == 5)  { timeline_index = timeline2_wave5;  alarm_set(1, 1200 + 360); }
	else if (global.checkpoint == 6)  { timeline_index = timeline2_wave6;  alarm_set(1, 1400 + 360); }
	else if (global.checkpoint == 7)  { timeline_index = timeline2_wave7;  alarm_set(1, 1300 + 360); }
	else if (global.checkpoint == 8)  { timeline_index = timeline2_wave8;  alarm_set(1, 1300 + 360); }
	else if (global.checkpoint == 9)  { timeline_index = timeline2_wave9;  alarm_set(1, 1500 + 360); }
	else if (global.checkpoint == 10) { timeline_index = timeline2_wave10; alarm_set(1, 1300 + 360); }
	else if (global.checkpoint == 11) timeline_index = timeline2_waveMiniboss;
}
else if (global.level == 3) {
	maxCheckpoint = 10;
		 if (global.checkpoint == 1)  { timeline_index = timeline3_wave1;  alarm_set(1, 1500 + 360); }
	else if (global.checkpoint == 2)  { timeline_index = timeline3_wave2;  alarm_set(1, 1600 + 360); }
	else if (global.checkpoint == 3)  { timeline_index = timeline3_wave3;  alarm_set(1, 1500 + 360); }
	else if (global.checkpoint == 4)  { timeline_index = timeline3_wave4;  alarm_set(1, 1450 + 360); }
	else if (global.checkpoint == 5)  { timeline_index = timeline3_wave5;  alarm_set(1, 1600 + 360); }
	else if (global.checkpoint == 6)  { timeline_index = timeline3_wave6;  alarm_set(1, 1400 + 360); }
	else if (global.checkpoint == 7)  { timeline_index = timeline3_wave7;  alarm_set(1, 1400 + 360); }
	else if (global.checkpoint == 8)  { timeline_index = timeline3_wave8;  alarm_set(1, 1600 + 360); }
	else if (global.checkpoint == 9)  { timeline_index = timeline3_wave9;  alarm_set(1, 1400 + 360); }
	else if (global.checkpoint == 10) { timeline_index = timeline3_wave10; alarm_set(1, 1700 + 360); }
}
else if (global.level == 4) {
	layer_background_change(layer_background_get_id("Background"), background_white);
	layer_background_blend(layer_background_get_id("Background"), $CC6AC8);
	maxCheckpoint = 30;
		 if (global.checkpoint == 1)  { timeline_index = timelineDrag_wave1;  alarm_set(1, 2700 + 360); }
	else if (global.checkpoint == 2)  { timeline_index = timelineDrag_wave2;  alarm_set(1, 2300 + 360); }
	else if (global.checkpoint == 3)  { timeline_index = timelineDrag_wave3;  alarm_set(1, 2300 + 360); }
	else if (global.checkpoint == 4)  { timeline_index = timelineDrag_wave4;  alarm_set(1, 2250 + 360); }
	else if (global.checkpoint == 5)  { timeline_index = timelineDrag_wave5;  alarm_set(1, 2400 + 360); }
	else if (global.checkpoint == 6)  { timeline_index = timelineDrag_wave6;  alarm_set(1, 2300 + 360); }
	else if (global.checkpoint == 7)  { timeline_index = timelineDrag_wave7;  alarm_set(1, 2200 + 360); }
	else if (global.checkpoint == 8)  { timeline_index = timelineDrag_wave8;  alarm_set(1, 2400 + 360); }
	else if (global.checkpoint == 9)  { timeline_index = timelineDrag_wave9;  alarm_set(1, 2200 + 360); }
	else if (global.checkpoint == 10) { timeline_index = timelineDrag_wave10; alarm_set(1, 2600 + 360); }
	else if (global.checkpoint == 101) timeline_index = timelineDrag_waveMiniboss1;
	else if (global.checkpoint == 11) { timeline_index = timelineDrag_wave11; alarm_set(1, 2300 + 360); }
	else if (global.checkpoint == 12) { timeline_index = timelineDrag_wave12; alarm_set(1, 2100 + 360); }
	else if (global.checkpoint == 13) { timeline_index = timelineDrag_wave13; alarm_set(1, 2500 + 360); }
	else if (global.checkpoint == 14) { timeline_index = timelineDrag_wave14; alarm_set(1, 2200 + 360); }
	else if (global.checkpoint == 15) { timeline_index = timelineDrag_wave15; alarm_set(1, 2300 + 360); }
	else if (global.checkpoint == 16) { timeline_index = timelineDrag_wave16; alarm_set(1, 2150 + 360); }
	else if (global.checkpoint == 17) { timeline_index = timelineDrag_wave17; alarm_set(1, 2100 + 360); }
	else if (global.checkpoint == 18) { timeline_index = timelineDrag_wave18; alarm_set(1, 2400 + 360); }
	else if (global.checkpoint == 19) { timeline_index = timelineDrag_wave19; alarm_set(1, 2100 + 360); }
	else if (global.checkpoint == 20) { timeline_index = timelineDrag_wave20; alarm_set(1, 2300 + 360); }
	else if (global.checkpoint == 102) timeline_index = timelineDrag_waveMiniboss2;
	else if (global.checkpoint == 21) { timeline_index = timelineDrag_wave21; alarm_set(1, 2500 + 360); }
	else if (global.checkpoint == 22) { timeline_index = timelineDrag_wave22; alarm_set(1, 2300 + 360); }
	else if (global.checkpoint == 23) { timeline_index = timelineDrag_wave23; alarm_set(1, 2600 + 360); }
	else if (global.checkpoint == 24) { timeline_index = timelineDrag_wave24; alarm_set(1, 2650 + 360); }
	else if (global.checkpoint == 25) { timeline_index = timelineDrag_wave25; alarm_set(1, 2200 + 360); }
	else if (global.checkpoint == 26) { timeline_index = timelineDrag_wave26; alarm_set(1, 2750 + 360); }
	else if (global.checkpoint == 27) { timeline_index = timelineDrag_wave27; alarm_set(1, 2600 + 360); }
	else if (global.checkpoint == 28) { timeline_index = timelineDrag_wave28; alarm_set(1, 2500 + 360); }
	else if (global.checkpoint == 29) { timeline_index = timelineDrag_wave29; alarm_set(1, 2400 + 360); }
	else if (global.checkpoint == 30) { timeline_index = timelineDrag_wave30; alarm_set(1, 2800 + 360); }
	else if (global.checkpoint == 103) timeline_index = timelineDrag_waveBoss;
}
else if (global.level == 5) {
	layer_background_change(layer_background_get_id("Background"), background_white);
	layer_background_blend(layer_background_get_id("Background"), $2EB24D);
	maxCheckpoint = 30;
		 if (global.checkpoint == 1)  { timeline_index = timelineDizz_wave1;  alarm_set(1, 2700 + 360); }
	else if (global.checkpoint == 2)  { timeline_index = timelineDizz_wave2;  alarm_set(1, 2300 + 360); }
	else if (global.checkpoint == 3)  { timeline_index = timelineDizz_wave3;  alarm_set(1, 2300 + 360); }
	else if (global.checkpoint == 4)  { timeline_index = timelineDizz_wave4;  alarm_set(1, 2250 + 360); }
	else if (global.checkpoint == 5)  { timeline_index = timelineDizz_wave5;  alarm_set(1, 2400 + 360); }
	else if (global.checkpoint == 6)  { timeline_index = timelineDizz_wave6;  alarm_set(1, 2300 + 360); }
	else if (global.checkpoint == 7)  { timeline_index = timelineDizz_wave7;  alarm_set(1, 2200 + 360); }
	else if (global.checkpoint == 8)  { timeline_index = timelineDizz_wave8;  alarm_set(1, 2400 + 360); }
	else if (global.checkpoint == 9)  { timeline_index = timelineDizz_wave9;  alarm_set(1, 2200 + 360); }
	else if (global.checkpoint == 10) { timeline_index = timelineDizz_wave10; alarm_set(1, 2600 + 360); }
	else if (global.checkpoint == 101) timeline_index = timelineDizz_waveMiniboss1;
	else if (global.checkpoint == 11) { timeline_index = timelineDizz_wave11; alarm_set(1, 2300 + 360); }
	else if (global.checkpoint == 12) { timeline_index = timelineDizz_wave12; alarm_set(1, 2100 + 360); }
	else if (global.checkpoint == 13) { timeline_index = timelineDizz_wave13; alarm_set(1, 2500 + 360); }
	else if (global.checkpoint == 14) { timeline_index = timelineDizz_wave14; alarm_set(1, 2200 + 360); }
	else if (global.checkpoint == 15) { timeline_index = timelineDizz_wave15; alarm_set(1, 2300 + 360); }
	else if (global.checkpoint == 16) { timeline_index = timelineDizz_wave16; alarm_set(1, 2150 + 360); }
	else if (global.checkpoint == 17) { timeline_index = timelineDizz_wave17; alarm_set(1, 2100 + 360); }
	else if (global.checkpoint == 18) { timeline_index = timelineDizz_wave18; alarm_set(1, 2400 + 360); }
	else if (global.checkpoint == 19) { timeline_index = timelineDizz_wave19; alarm_set(1, 2100 + 360); }
	else if (global.checkpoint == 20) { timeline_index = timelineDizz_wave20; alarm_set(1, 2300 + 360); }
	else if (global.checkpoint == 102) timeline_index = timelineDizz_waveMiniboss2;
	else if (global.checkpoint == 21) { timeline_index = timelineDizz_wave21; alarm_set(1, 2500 + 360); }
	else if (global.checkpoint == 22) { timeline_index = timelineDizz_wave22; alarm_set(1, 2300 + 360); }
	else if (global.checkpoint == 23) { timeline_index = timelineDizz_wave23; alarm_set(1, 2600 + 360); }
	else if (global.checkpoint == 24) { timeline_index = timelineDizz_wave24; alarm_set(1, 2650 + 360); }
	else if (global.checkpoint == 25) { timeline_index = timelineDizz_wave25; alarm_set(1, 2200 + 360); }
	else if (global.checkpoint == 26) { timeline_index = timelineDizz_wave26; alarm_set(1, 2750 + 360); }
	else if (global.checkpoint == 27) { timeline_index = timelineDizz_wave27; alarm_set(1, 2600 + 360); }
	else if (global.checkpoint == 28) { timeline_index = timelineDizz_wave28; alarm_set(1, 2500 + 360); }
	else if (global.checkpoint == 29) { timeline_index = timelineDizz_wave29; alarm_set(1, 2400 + 360); }
	else if (global.checkpoint == 30) { timeline_index = timelineDizz_wave30; alarm_set(1, 2800 + 360); }
	else if (global.checkpoint == 103) timeline_index = timelineDizz_waveBoss;
}
else if (global.level == 6) {
	layer_background_change(layer_background_get_id("Background"), background_white);
	layer_background_blend(layer_background_get_id("Background"), $995655);
	maxCheckpoint = 30;
		 if (global.checkpoint == 1)  { timeline_index = timelineShld_wave1;  alarm_set(1, 2700 + 360); }
	else if (global.checkpoint == 2)  { timeline_index = timelineShld_wave2;  alarm_set(1, 2300 + 360); }
	else if (global.checkpoint == 3)  { timeline_index = timelineShld_wave3;  alarm_set(1, 2300 + 360); }
	else if (global.checkpoint == 4)  { timeline_index = timelineShld_wave4;  alarm_set(1, 2250 + 360); }
	else if (global.checkpoint == 5)  { timeline_index = timelineShld_wave5;  alarm_set(1, 2400 + 360); }
	else if (global.checkpoint == 6)  { timeline_index = timelineShld_wave6;  alarm_set(1, 2300 + 360); }
	else if (global.checkpoint == 7)  { timeline_index = timelineShld_wave7;  alarm_set(1, 2200 + 360); }
	else if (global.checkpoint == 8)  { timeline_index = timelineShld_wave8;  alarm_set(1, 2400 + 360); }
	else if (global.checkpoint == 9)  { timeline_index = timelineShld_wave9;  alarm_set(1, 2200 + 360); }
	else if (global.checkpoint == 10) { timeline_index = timelineShld_wave10; alarm_set(1, 2600 + 360); }
	else if (global.checkpoint == 101) timeline_index = timelineShld_waveMiniboss1;
	else if (global.checkpoint == 11) { timeline_index = timelineShld_wave11; alarm_set(1, 2300 + 360); }
	else if (global.checkpoint == 12) { timeline_index = timelineShld_wave12; alarm_set(1, 2100 + 360); }
	else if (global.checkpoint == 13) { timeline_index = timelineShld_wave13; alarm_set(1, 2500 + 360); }
	else if (global.checkpoint == 14) { timeline_index = timelineShld_wave14; alarm_set(1, 2200 + 360); }
	else if (global.checkpoint == 15) { timeline_index = timelineShld_wave15; alarm_set(1, 2300 + 360); }
	else if (global.checkpoint == 16) { timeline_index = timelineShld_wave16; alarm_set(1, 2150 + 360); }
	else if (global.checkpoint == 17) { timeline_index = timelineShld_wave17; alarm_set(1, 2100 + 360); }
	else if (global.checkpoint == 18) { timeline_index = timelineShld_wave18; alarm_set(1, 2400 + 360); }
	else if (global.checkpoint == 19) { timeline_index = timelineShld_wave19; alarm_set(1, 2100 + 360); }
	else if (global.checkpoint == 20) { timeline_index = timelineShld_wave20; alarm_set(1, 2300 + 360); }
	else if (global.checkpoint == 102) timeline_index = timelineShld_waveMiniboss2;
	else if (global.checkpoint == 21) { timeline_index = timelineShld_wave21; alarm_set(1, 2500 + 360); }
	else if (global.checkpoint == 22) { timeline_index = timelineShld_wave22; alarm_set(1, 2300 + 360); }
	else if (global.checkpoint == 23) { timeline_index = timelineShld_wave23; alarm_set(1, 2600 + 360); }
	else if (global.checkpoint == 24) { timeline_index = timelineShld_wave24; alarm_set(1, 2650 + 360); }
	else if (global.checkpoint == 25) { timeline_index = timelineShld_wave25; alarm_set(1, 2200 + 360); }
	else if (global.checkpoint == 26) { timeline_index = timelineShld_wave26; alarm_set(1, 2750 + 360); }
	else if (global.checkpoint == 27) { timeline_index = timelineShld_wave27; alarm_set(1, 2600 + 360); }
	else if (global.checkpoint == 28) { timeline_index = timelineShld_wave28; alarm_set(1, 2500 + 360); }
	else if (global.checkpoint == 29) { timeline_index = timelineShld_wave29; alarm_set(1, 2400 + 360); }
	else if (global.checkpoint == 30) { timeline_index = timelineShld_wave30; alarm_set(1, 2800 + 360); }
	else if (global.checkpoint == 103) timeline_index = timelineShld_waveBoss;
}
else if (global.level == 7) {
	layer_background_change(layer_background_get_id("Background"), background_white);
	layer_background_blend(layer_background_get_id("Background"), $666024);
	maxCheckpoint = 30;
		 if (global.checkpoint == 1)  { timeline_index = timelineSpkd_wave1;  alarm_set(1, 2700 + 360); }
	else if (global.checkpoint == 2)  { timeline_index = timelineSpkd_wave2;  alarm_set(1, 2300 + 360); }
	else if (global.checkpoint == 3)  { timeline_index = timelineSpkd_wave3;  alarm_set(1, 2300 + 360); }
	else if (global.checkpoint == 4)  { timeline_index = timelineSpkd_wave4;  alarm_set(1, 2250 + 360); }
	else if (global.checkpoint == 5)  { timeline_index = timelineSpkd_wave5;  alarm_set(1, 2400 + 360); }
	else if (global.checkpoint == 6)  { timeline_index = timelineSpkd_wave6;  alarm_set(1, 2300 + 360); }
	else if (global.checkpoint == 7)  { timeline_index = timelineSpkd_wave7;  alarm_set(1, 2200 + 360); }
	else if (global.checkpoint == 8)  { timeline_index = timelineSpkd_wave8;  alarm_set(1, 2400 + 360); }
	else if (global.checkpoint == 9)  { timeline_index = timelineSpkd_wave9;  alarm_set(1, 2200 + 360); }
	else if (global.checkpoint == 10) { timeline_index = timelineSpkd_wave10; alarm_set(1, 2600 + 360); }
	else if (global.checkpoint == 101) timeline_index = timelineSpkd_waveMiniboss1;
	else if (global.checkpoint == 11) { timeline_index = timelineSpkd_wave11; alarm_set(1, 2300 + 360); }
	else if (global.checkpoint == 12) { timeline_index = timelineSpkd_wave12; alarm_set(1, 2100 + 360); }
	else if (global.checkpoint == 13) { timeline_index = timelineSpkd_wave13; alarm_set(1, 2500 + 360); }
	else if (global.checkpoint == 14) { timeline_index = timelineSpkd_wave14; alarm_set(1, 2200 + 360); }
	else if (global.checkpoint == 15) { timeline_index = timelineSpkd_wave15; alarm_set(1, 2300 + 360); }
	else if (global.checkpoint == 16) { timeline_index = timelineSpkd_wave16; alarm_set(1, 2150 + 360); }
	else if (global.checkpoint == 17) { timeline_index = timelineSpkd_wave17; alarm_set(1, 2100 + 360); }
	else if (global.checkpoint == 18) { timeline_index = timelineSpkd_wave18; alarm_set(1, 2400 + 360); }
	else if (global.checkpoint == 19) { timeline_index = timelineSpkd_wave19; alarm_set(1, 2100 + 360); }
	else if (global.checkpoint == 20) { timeline_index = timelineSpkd_wave20; alarm_set(1, 2300 + 360); }
	else if (global.checkpoint == 102) timeline_index = timelineSpkd_waveMiniboss2;
	else if (global.checkpoint == 21) { timeline_index = timelineSpkd_wave21; alarm_set(1, 2500 + 360); }
	else if (global.checkpoint == 22) { timeline_index = timelineSpkd_wave22; alarm_set(1, 2300 + 360); }
	else if (global.checkpoint == 23) { timeline_index = timelineSpkd_wave23; alarm_set(1, 2600 + 360); }
	else if (global.checkpoint == 24) { timeline_index = timelineSpkd_wave24; alarm_set(1, 2650 + 360); }
	else if (global.checkpoint == 25) { timeline_index = timelineSpkd_wave25; alarm_set(1, 2200 + 360); }
	else if (global.checkpoint == 26) { timeline_index = timelineSpkd_wave26; alarm_set(1, 2750 + 360); }
	else if (global.checkpoint == 27) { timeline_index = timelineSpkd_wave27; alarm_set(1, 2600 + 360); }
	else if (global.checkpoint == 28) { timeline_index = timelineSpkd_wave28; alarm_set(1, 2500 + 360); }
	else if (global.checkpoint == 29) { timeline_index = timelineSpkd_wave29; alarm_set(1, 2400 + 360); }
	else if (global.checkpoint == 30) { timeline_index = timelineSpkd_wave30; alarm_set(1, 2800 + 360); }
	else if (global.checkpoint == 103) timeline_index = timelineSpkd_waveBoss;
}
else if (global.level == 9) {
	layer_background_change(layer_background_get_id("Background"), background_white);
	layer_background_blend(layer_background_get_id("Background"), color_get_hue($99CDFF));
	maxCheckpoint = 0;
	xx = room_width / 2; yy = room_height / 2;
	count = 1;
	start = false;
	quickSpawn = false;
	bosses = 3;
	global.midbossBeaten = true;
	alarm_set(6, 1);
	if (global.halfCheckpoint > 0) {
		if (global.halfCheckpoint == .5)  global.wave =  6;
		if (global.halfCheckpoint == 1.5) global.wave = 16;
		if (global.halfCheckpoint == 2.5) global.wave = 26;
		if (global.halfCheckpoint == 3.5) global.wave = 36;
	} else {
		if (global.checkpoint == 1) global.wave = 11;
		if (global.checkpoint == 2) global.wave = 21;
		if (global.checkpoint == 3) global.wave = 31;
		if (global.checkpoint == 4) { global.wave = 41; instance_destroy(obj_spawner_corners); }
		if (global.checkpoint >= 5) global.wave = 45;
	}
}
else if (global.level == -1)
	timeline_index = timeline_waveBoss;
timeline_loop = 0;
timeline_position = 1;
timeline_running = true;