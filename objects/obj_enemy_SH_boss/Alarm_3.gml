if (shield == id) {
	flashCount = -1;
	exit;
}
if (shield.damage >= shield.hp - 60) {
	flash1 = true;
	alarm_set(4, 160);
} else alarm_set(3, 2);