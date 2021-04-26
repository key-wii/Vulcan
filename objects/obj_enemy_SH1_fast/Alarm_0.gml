//Destroy self if wheels don't exist
if (!instance_exists(wheels)) {
	instance_destroy();
	exit;
}
//Wheels slowdown if hit
if (hitting == true) {
	wheels.hitting = true;
} else {
	wheels.hitting = false;
}
//Jump to wheels position
x = wheels.x + x_adjust;
y = wheels.y + y_adjust;
//shield jump to self's position
if (shield != id) {
	shield.x = x;
	shield.y = y;
}
alarm_set(0, 1);