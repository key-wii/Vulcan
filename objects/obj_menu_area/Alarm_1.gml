if (area == 0) exit;
if (area == 101)
	global.waveEndCombo = -9999;
else global.waveEndCombo = 20;

if (area == 9) {
	global.checkpoint = 0;
	global.level = area;
	global.waveEndCombo = -9999;
	ds_list_shuffle(global.finalSpawnList);
	ds_list_shuffle(global.finalMinibossesList);
	ds_list_shuffle(global.finalBossesList);
} else {
	global.checkpoint = 1;
	global.level = area + 3;
}
global.moving = false;
with (obj_fade_screen) alarm_set(1, 1);
room_goto(room0);