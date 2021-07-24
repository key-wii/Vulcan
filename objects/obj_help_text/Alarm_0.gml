if (talkWidth < 1) {
	talkWidth += .02;
	alarm_set(0, 1);
} else if (alarm_get(1) < 1) {
	alarm_set(1, 400);
}