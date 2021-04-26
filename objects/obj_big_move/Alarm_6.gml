if (!too_fast && speedBoost < 12) {
	speedBoost += 1;
	alarm_set(6, 290);
} else if (speedBoost < 6) {
	speedBoost += .5;
	alarm_set(6, 300);
}
if (!too_fast && speedBoost > 4) {
	too_fast = true;
	spd /= 2;
	speedBoost /= 2;
}