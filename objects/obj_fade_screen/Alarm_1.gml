if (i > -1) {
	i -= 1;
	alarm_set(1, 10);
} else {
	instance_destroy();
}