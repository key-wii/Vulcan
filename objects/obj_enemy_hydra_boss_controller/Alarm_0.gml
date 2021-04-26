if (!instance_exists(head[0]) || !instance_exists(head[1]) ||
	!instance_exists(head[2])) {
		alarm_set(1, 399);
} else {
	alarm_set(0, 1);
}