if (global.level >= 4 && global.level <= 7) {
	cutscene = true;
	alpha = 1;
	alarm_set(2, 270);
} else alarm_set(3, 1);