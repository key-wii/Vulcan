if (global.checkpoint > maxCheckpoint) exit;
if (global.level == 1) {	
	maxCheckpoint = 10;
		 if (global.checkpoint == 1) { timeline_index = timeline_wave2; alarm_set(1, 1400); }
	else if (global.checkpoint == 2) { timeline_index = timeline_wave3; alarm_set(1, 1200); }
	else if (global.checkpoint == 3) { timeline_index = timeline_wave4; alarm_set(1, 1100); }
	else if (global.checkpoint == 4) { timeline_index = timeline_wave5; alarm_set(1, 1400); }
	else if (global.checkpoint == 5) { timeline_index = timeline_wave6; alarm_set(1, 1200); }
	else if (global.checkpoint == 6) { timeline_index = timeline_wave7; alarm_set(1, 1300); }
	else if (global.checkpoint == 7) { timeline_index = timeline_wave8; alarm_set(1, 1500); }
	else if (global.checkpoint == 8) { timeline_index = timeline_wave9; alarm_set(1, 1300); }
	else if (global.checkpoint == 9) { timeline_index = timeline_wave10; alarm_set(1, 1300); }
	else if (global.checkpoint == 10) timeline_index = timeline1_waveMiniboss;
	else exit;
}
else if (global.level == 2) {	
	maxCheckpoint = 10;
		 if (global.checkpoint == 1) { timeline_index = timeline2_wave2; alarm_set(1, 1400); }
	else if (global.checkpoint == 2) { timeline_index = timeline2_wave3; alarm_set(1, 1200); }
	else if (global.checkpoint == 3) { timeline_index = timeline2_wave4; alarm_set(1, 1100); }
	else if (global.checkpoint == 4) { timeline_index = timeline2_wave5; alarm_set(1, 1400); }
	else if (global.checkpoint == 5) { timeline_index = timeline2_wave6; alarm_set(1, 1200); }
	else if (global.checkpoint == 6) { timeline_index = timeline2_wave7; alarm_set(1, 1300); }
	else if (global.checkpoint == 7) { timeline_index = timeline2_wave8; alarm_set(1, 1500); }
	else if (global.checkpoint == 8) { timeline_index = timeline2_wave9; alarm_set(1, 1300); }
	else if (global.checkpoint == 9) { timeline_index = timeline2_wave10; alarm_set(1, 1300); }
	else if (global.checkpoint == 10) timeline_index = timeline2_waveMiniboss;
	else exit;
}
else if (global.level == 3) {
	maxCheckpoint = 10;
		 if (global.checkpoint == 1) { timeline_index = timeline3_wave2; alarm_set(1, 1400); }
	else if (global.checkpoint == 2) { timeline_index = timeline3_wave3; alarm_set(1, 1200); }
	else if (global.checkpoint == 3) { timeline_index = timeline3_wave4; alarm_set(1, 1100); }
	else if (global.checkpoint == 4) { timeline_index = timeline3_wave5; alarm_set(1, 1400); }
	else if (global.checkpoint == 5) { timeline_index = timeline3_wave6; alarm_set(1, 1200); }
	else if (global.checkpoint == 6) { timeline_index = timeline3_wave7; alarm_set(1, 1300); }
	else if (global.checkpoint == 7) { timeline_index = timeline3_wave8; alarm_set(1, 1500); }
	else if (global.checkpoint == 8) { timeline_index = timeline3_wave9; alarm_set(1, 1300); }
	else if (global.checkpoint == 9) { timeline_index = timeline3_wave10; alarm_set(1, 1300); }
	else if (global.checkpoint == 10) {
		timeline_index = timeline_returnToMenu;
		returnToMenu = true;
		ini_open("saveData.ini");
		ini_write_real("Levels Beat", "level 3 beat", true);
		ini_close();
	} else exit;
}
else if (global.level == 4) {
	maxCheckpoint = 30;
		 if (global.checkpoint == 1)  { timeline_index = timelineDrag_wave2;  alarm_set(1, 2300); }
	else if (global.checkpoint == 2)  { timeline_index = timelineDrag_wave3;  alarm_set(1, 2400); }
	else if (global.checkpoint == 3)  { timeline_index = timelineDrag_wave4;  alarm_set(1, 2250); }
	else if (global.checkpoint == 4)  { timeline_index = timelineDrag_wave5;  alarm_set(1, 2400); }
	else if (global.checkpoint == 5)  { timeline_index = timelineDrag_wave6;  alarm_set(1, 2300); }
	else if (global.checkpoint == 6)  { timeline_index = timelineDrag_wave7;  alarm_set(1, 2200); }
	else if (global.checkpoint == 7)  { timeline_index = timelineDrag_wave8;  alarm_set(1, 2400); }
	else if (global.checkpoint == 8)  { timeline_index = timelineDrag_wave9;  alarm_set(1, 2200); }
	else if (global.checkpoint == 9)  { timeline_index = timelineDrag_wave10; alarm_set(1, 2600); }
	else if (global.checkpoint == 10) timeline_index = timelineDrag_waveMiniboss1;
	else if (global.checkpoint == 101) { timeline_index = timelineDrag_wave11; alarm_set(1, 2200);
		if (!instance_exists(obj_spawner_corners)) instance_create_layer(x, y, "UI", obj_spawner_corners); }
	else if (global.checkpoint == 11) { timeline_index = timelineDrag_wave12; alarm_set(1, 2100); }
	else if (global.checkpoint == 12) { timeline_index = timelineDrag_wave13; alarm_set(1, 2500); }
	else if (global.checkpoint == 13) { timeline_index = timelineDrag_wave14; alarm_set(1, 2200); }
	else if (global.checkpoint == 14) { timeline_index = timelineDrag_wave15; alarm_set(1, 2300); }
	else if (global.checkpoint == 15) { timeline_index = timelineDrag_wave16; alarm_set(1, 2150); }
	else if (global.checkpoint == 16) { timeline_index = timelineDrag_wave17; alarm_set(1, 2100); }
	else if (global.checkpoint == 17) { timeline_index = timelineDrag_wave18; alarm_set(1, 2400); }
	else if (global.checkpoint == 18) { timeline_index = timelineDrag_wave19; alarm_set(1, 2100); }
	else if (global.checkpoint == 19) { timeline_index = timelineDrag_wave20; alarm_set(1, 2300); }
	else if (global.checkpoint == 20) timeline_index = timelineDrag_waveMiniboss2;
	else if (global.checkpoint == 102) { timeline_index = timelineDrag_wave21; alarm_set(1, 2500);
		if (!instance_exists(obj_spawner_corners)) instance_create_layer(x, y, "UI", obj_spawner_corners); }
	else if (global.checkpoint == 21) { timeline_index = timelineDrag_wave22; alarm_set(1, 2300); }
	else if (global.checkpoint == 22) { timeline_index = timelineDrag_wave23; alarm_set(1, 2600); }
	else if (global.checkpoint == 23) { timeline_index = timelineDrag_wave24; alarm_set(1, 2650); }
	else if (global.checkpoint == 24) { timeline_index = timelineDrag_wave25; alarm_set(1, 2200); }
	else if (global.checkpoint == 25) { timeline_index = timelineDrag_wave26; alarm_set(1, 2750); }
	else if (global.checkpoint == 26) { timeline_index = timelineDrag_wave27; alarm_set(1, 2600); }
	else if (global.checkpoint == 27) { timeline_index = timelineDrag_wave28; alarm_set(1, 2500); }
	else if (global.checkpoint == 28) { timeline_index = timelineDrag_wave29; alarm_set(1, 2400); }
	else if (global.checkpoint == 29) { timeline_index = timelineDrag_wave30; alarm_set(1, 2800); }
	else if (global.checkpoint == 30) timeline_index = timelineDrag_waveBoss;
	else exit;
}
else if (global.level == 5) {
	maxCheckpoint = 30;
		 if (global.checkpoint == 1)  { timeline_index = timelineDizz_wave2;  alarm_set(1, 2300); }
	else if (global.checkpoint == 2)  { timeline_index = timelineDizz_wave3;  alarm_set(1, 2400); }
	else if (global.checkpoint == 3)  { timeline_index = timelineDizz_wave4;  alarm_set(1, 2250); }
	else if (global.checkpoint == 4)  { timeline_index = timelineDizz_wave5;  alarm_set(1, 2400); }
	else if (global.checkpoint == 5)  { timeline_index = timelineDizz_wave6;  alarm_set(1, 2300); }
	else if (global.checkpoint == 6)  { timeline_index = timelineDizz_wave7;  alarm_set(1, 2200); }
	else if (global.checkpoint == 7)  { timeline_index = timelineDizz_wave8;  alarm_set(1, 2400); }
	else if (global.checkpoint == 8)  { timeline_index = timelineDizz_wave9;  alarm_set(1, 2200); }
	else if (global.checkpoint == 9)  { timeline_index = timelineDizz_wave10; alarm_set(1, 2600); }
	else if (global.checkpoint == 10) timeline_index = timelineDizz_waveMiniboss1;
	else if (global.checkpoint == 101) { timeline_index = timelineDizz_wave11; alarm_set(1, 2200);
		if (!instance_exists(obj_spawner_corners)) instance_create_layer(x, y, "UI", obj_spawner_corners); }
	else if (global.checkpoint == 11) { timeline_index = timelineDizz_wave12; alarm_set(1, 2100); }
	else if (global.checkpoint == 12) { timeline_index = timelineDizz_wave13; alarm_set(1, 2500); }
	else if (global.checkpoint == 13) { timeline_index = timelineDizz_wave14; alarm_set(1, 2200); }
	else if (global.checkpoint == 14) { timeline_index = timelineDizz_wave15; alarm_set(1, 2300); }
	else if (global.checkpoint == 15) { timeline_index = timelineDizz_wave16; alarm_set(1, 2150); }
	else if (global.checkpoint == 16) { timeline_index = timelineDizz_wave17; alarm_set(1, 2100); }
	else if (global.checkpoint == 17) { timeline_index = timelineDizz_wave18; alarm_set(1, 2400); }
	else if (global.checkpoint == 18) { timeline_index = timelineDizz_wave19; alarm_set(1, 2100); }
	else if (global.checkpoint == 19) { timeline_index = timelineDizz_wave20; alarm_set(1, 2300); }
	else if (global.checkpoint == 20) timeline_index = timelineDizz_waveMiniboss2;
	else if (global.checkpoint == 102) { timeline_index = timelineDizz_wave21; alarm_set(1, 2500);
		if (!instance_exists(obj_spawner_corners)) instance_create_layer(x, y, "UI", obj_spawner_corners); }
	else if (global.checkpoint == 21) { timeline_index = timelineDizz_wave22; alarm_set(1, 2300); }
	else if (global.checkpoint == 22) { timeline_index = timelineDizz_wave23; alarm_set(1, 2600); }
	else if (global.checkpoint == 23) { timeline_index = timelineDizz_wave24; alarm_set(1, 2650); }
	else if (global.checkpoint == 24) { timeline_index = timelineDizz_wave25; alarm_set(1, 2200); }
	else if (global.checkpoint == 25) { timeline_index = timelineDizz_wave26; alarm_set(1, 2750); }
	else if (global.checkpoint == 26) { timeline_index = timelineDizz_wave27; alarm_set(1, 2600); }
	else if (global.checkpoint == 27) { timeline_index = timelineDizz_wave28; alarm_set(1, 2500); }
	else if (global.checkpoint == 28) { timeline_index = timelineDizz_wave29; alarm_set(1, 2400); }
	else if (global.checkpoint == 29) { timeline_index = timelineDizz_wave30; alarm_set(1, 2800); }
	else if (global.checkpoint == 30) timeline_index = timelineDizz_waveBoss;
	else exit;
}
else if (global.level == 6) {
	maxCheckpoint = 30;
		 if (global.checkpoint == 1)  { timeline_index = timelineShld_wave2;  alarm_set(1, 2300); }
	else if (global.checkpoint == 2)  { timeline_index = timelineShld_wave3;  alarm_set(1, 2400); }
	else if (global.checkpoint == 3)  { timeline_index = timelineShld_wave4;  alarm_set(1, 2250); }
	else if (global.checkpoint == 4)  { timeline_index = timelineShld_wave5;  alarm_set(1, 2400); }
	else if (global.checkpoint == 5)  { timeline_index = timelineShld_wave6;  alarm_set(1, 2300); }
	else if (global.checkpoint == 6)  { timeline_index = timelineShld_wave7;  alarm_set(1, 2200); }
	else if (global.checkpoint == 7)  { timeline_index = timelineShld_wave8;  alarm_set(1, 2400); }
	else if (global.checkpoint == 8)  { timeline_index = timelineShld_wave9;  alarm_set(1, 2200); }
	else if (global.checkpoint == 9)  { timeline_index = timelineShld_wave10; alarm_set(1, 2600); }
	else if (global.checkpoint == 10) timeline_index = timelineShld_waveMiniboss1;
	else if (global.checkpoint == 101) { timeline_index = timelineShld_wave11; alarm_set(1, 2200);
		if (!instance_exists(obj_spawner_corners)) instance_create_layer(x, y, "UI", obj_spawner_corners); }
	else if (global.checkpoint == 11) { timeline_index = timelineShld_wave12; alarm_set(1, 2100); }
	else if (global.checkpoint == 12) { timeline_index = timelineShld_wave13; alarm_set(1, 2500); }
	else if (global.checkpoint == 13) { timeline_index = timelineShld_wave14; alarm_set(1, 2200); }
	else if (global.checkpoint == 14) { timeline_index = timelineShld_wave15; alarm_set(1, 2300); }
	else if (global.checkpoint == 15) { timeline_index = timelineShld_wave16; alarm_set(1, 2150); }
	else if (global.checkpoint == 16) { timeline_index = timelineShld_wave17; alarm_set(1, 2100); }
	else if (global.checkpoint == 17) { timeline_index = timelineShld_wave18; alarm_set(1, 2400); }
	else if (global.checkpoint == 18) { timeline_index = timelineShld_wave19; alarm_set(1, 2100); }
	else if (global.checkpoint == 19) { timeline_index = timelineShld_wave20; alarm_set(1, 2300); }
	else if (global.checkpoint == 20) timeline_index = timelineShld_waveMiniboss2;
	else if (global.checkpoint == 102) { timeline_index = timelineShld_wave21; alarm_set(1, 2500);
		if (!instance_exists(obj_spawner_corners)) instance_create_layer(x, y, "UI", obj_spawner_corners); }
	else if (global.checkpoint == 21) { timeline_index = timelineShld_wave22; alarm_set(1, 2300); }
	else if (global.checkpoint == 22) { timeline_index = timelineShld_wave23; alarm_set(1, 2600); }
	else if (global.checkpoint == 23) { timeline_index = timelineShld_wave24; alarm_set(1, 2650); }
	else if (global.checkpoint == 24) { timeline_index = timelineShld_wave25; alarm_set(1, 2200); }
	else if (global.checkpoint == 25) { timeline_index = timelineShld_wave26; alarm_set(1, 2750); }
	else if (global.checkpoint == 26) { timeline_index = timelineShld_wave27; alarm_set(1, 2600); }
	else if (global.checkpoint == 27) { timeline_index = timelineShld_wave28; alarm_set(1, 2500); }
	else if (global.checkpoint == 28) { timeline_index = timelineShld_wave29; alarm_set(1, 2400); }
	else if (global.checkpoint == 29) { timeline_index = timelineShld_wave30; alarm_set(1, 2800); }
	else if (global.checkpoint == 30) timeline_index = timelineShld_waveBoss;
	else exit;
}
else if (global.level == 7) {
	maxCheckpoint = 30;
		 if (global.checkpoint == 1)  { timeline_index = timelineSpkd_wave2;  alarm_set(1, 2300); }
	else if (global.checkpoint == 2)  { timeline_index = timelineSpkd_wave3;  alarm_set(1, 2400); }
	else if (global.checkpoint == 3)  { timeline_index = timelineSpkd_wave4;  alarm_set(1, 2250); }
	else if (global.checkpoint == 4)  { timeline_index = timelineSpkd_wave5;  alarm_set(1, 2400); }
	else if (global.checkpoint == 5)  { timeline_index = timelineSpkd_wave6;  alarm_set(1, 2300); }
	else if (global.checkpoint == 6)  { timeline_index = timelineSpkd_wave7;  alarm_set(1, 2200); }
	else if (global.checkpoint == 7)  { timeline_index = timelineSpkd_wave8;  alarm_set(1, 2400); }
	else if (global.checkpoint == 8)  { timeline_index = timelineSpkd_wave9;  alarm_set(1, 2200); }
	else if (global.checkpoint == 9)  { timeline_index = timelineSpkd_wave10; alarm_set(1, 2600); }
	else if (global.checkpoint == 10) timeline_index = timelineSpkd_waveMiniboss1;
	else if (global.checkpoint == 101) { timeline_index = timelineSpkd_wave11; alarm_set(1, 2200);
		if (!instance_exists(obj_spawner_corners)) instance_create_layer(x, y, "UI", obj_spawner_corners); }
	else if (global.checkpoint == 11) { timeline_index = timelineSpkd_wave12; alarm_set(1, 2100); }
	else if (global.checkpoint == 12) { timeline_index = timelineSpkd_wave13; alarm_set(1, 2500); }
	else if (global.checkpoint == 13) { timeline_index = timelineSpkd_wave14; alarm_set(1, 2200); }
	else if (global.checkpoint == 14) { timeline_index = timelineSpkd_wave15; alarm_set(1, 2300); }
	else if (global.checkpoint == 15) { timeline_index = timelineSpkd_wave16; alarm_set(1, 2150); }
	else if (global.checkpoint == 16) { timeline_index = timelineSpkd_wave17; alarm_set(1, 2100); }
	else if (global.checkpoint == 17) { timeline_index = timelineSpkd_wave18; alarm_set(1, 2400); }
	else if (global.checkpoint == 18) { timeline_index = timelineSpkd_wave19; alarm_set(1, 2100); }
	else if (global.checkpoint == 19) { timeline_index = timelineSpkd_wave20; alarm_set(1, 2300); }
	else if (global.checkpoint == 20) timeline_index = timelineSpkd_waveMiniboss2;
	else if (global.checkpoint == 102) { timeline_index = timelineSpkd_wave21; alarm_set(1, 2500);
		if (!instance_exists(obj_spawner_corners)) instance_create_layer(x, y, "UI", obj_spawner_corners); }
	else if (global.checkpoint == 21) { timeline_index = timelineSpkd_wave22; alarm_set(1, 2300); }
	else if (global.checkpoint == 22) { timeline_index = timelineSpkd_wave23; alarm_set(1, 2600); }
	else if (global.checkpoint == 23) { timeline_index = timelineSpkd_wave24; alarm_set(1, 2650); }
	else if (global.checkpoint == 24) { timeline_index = timelineSpkd_wave25; alarm_set(1, 2200); }
	else if (global.checkpoint == 25) { timeline_index = timelineSpkd_wave26; alarm_set(1, 2750); }
	else if (global.checkpoint == 26) { timeline_index = timelineSpkd_wave27; alarm_set(1, 2600); }
	else if (global.checkpoint == 27) { timeline_index = timelineSpkd_wave28; alarm_set(1, 2500); }
	else if (global.checkpoint == 28) { timeline_index = timelineSpkd_wave29; alarm_set(1, 2400); }
	else if (global.checkpoint == 29) { timeline_index = timelineSpkd_wave30; alarm_set(1, 2800); }
	else if (global.checkpoint == 30) timeline_index = timelineSpkd_waveBoss;
	else exit;
}
if instance_exists(obj_tank_pilot) {
	nw = instance_create_layer(obj_tank_pilot.x, obj_tank_pilot.y, "Floor", obj_nextwave);
	if (skip) nw.sprite_index = spr_next_wave_skip;
}
timeline_loop = 0;
timeline_position = 1;
timeline_running = true;
global.flameWaveKills = 0;
alarm_set(10, 5);

if (returnToMenu)
	timeline_position = 200;