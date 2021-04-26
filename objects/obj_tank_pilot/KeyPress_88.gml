if (!debug || global.level != 9) exit;
//DEBUG: take damage
if (global.wave mod 5 != 0) global.wave += 5 - (global.wave mod 5);
else global.wave += 5;
global.waveCount = 1;
with (obj_spawner) alarm_set(6, 60);