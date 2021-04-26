if (alpha > 0) {
	alpha -= .025;
	alarm_set(1, 5);
} else {
	instance_destroy();
}