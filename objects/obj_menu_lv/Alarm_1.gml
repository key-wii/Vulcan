if (level == 0) exit;
if (level > 0) global.waveEndCombo = levelWaveEndCombo;
if (level == -1) {
	global.checkpoint = 101;
	global.waveEndCombo = -9999;
}
else global.checkpoint = 1;

global.level = level;
global.moving = false;
with (obj_fade_screen) alarm_set(1, 1);
room_goto(room0);