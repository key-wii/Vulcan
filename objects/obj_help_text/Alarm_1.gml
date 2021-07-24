if (talkWidth > .04) {
	talkWidth -= .04;
	alarm_set(1, 1);
} else {
	instance_destroy();
}