if (minutes == 99 && seconds == 99 && steps == 99) exit;
time++;
steps++;
if (steps == 60 && minutes != 99 && seconds != 99) steps = 0;
if (time mod 60 == 0) {
	seconds++;
	if (minutes == 99) exit;
	if (seconds mod 60 == 0) {
		minutes++;
		seconds = 0;
	}
}