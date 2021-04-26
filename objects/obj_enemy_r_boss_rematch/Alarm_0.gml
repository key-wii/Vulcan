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
x = wheels.x + (x_adjust / 2);
y = wheels.y + (y_adjust / 2);
alarm_set(0, 1);