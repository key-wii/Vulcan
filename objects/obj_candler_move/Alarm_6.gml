if (object_index == obj_enemy_laser) exit;
if (!too_fast && speedBoost < 12) {
	speedBoost += 2;
	alarm_set(6, 300);
} else if (speedBoost < 6) {
	speedBoost += 1;
	alarm_set(6, 300);
}
if (!too_fast && speedBoost > 1) {
	too_fast = true;
	spd /= 2;
	speedBoost /= 2;
}