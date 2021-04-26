if (flame != id) {
	instance_destroy(flame);
	flame = id;
	alarm_set(6, 5);
	exit;
} else {
	flameCount = 0;
	flaming = false;
	spinSpd = -12;
	alarm_set(5, 50);
}