//Triggered when player hits with flame or shoots this object
if (hit == 3) {
	alarm_set(0, 1);
	exit;
}
alarm_set(0, 4);