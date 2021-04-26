if (level == 1 || level == 2) {
	waves = 11;
	levelWaveEndCombo = 10;
}
else if (level == 3) {
	waves = 10;
	levelWaveEndCombo = 15;
}
else levelWaveEndCombo = 0;
if (level == 2) {
	up = false;
	yyy = maxWiggle;
}