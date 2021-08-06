//DEBUG
if (!debug) exit;
if (global.level != 9) {
	global.checkpoint++;
	if (global.checkpoint == 31) global.checkpoint = 101;
	with (obj_spawner) alarm_set(0, 1);
	exit;
}
if (global.wave mod 5 != 0) global.wave += 5 - (global.wave mod 5);
else global.wave += 5;
global.waveCount = 1;
with (obj_spawner) alarm_set(6, 60);