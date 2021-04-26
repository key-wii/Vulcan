if (image_alpha > .06) {
	image_alpha -= .02;
	alarm_set(0, 1);
} else alarm_set(1, 6000);