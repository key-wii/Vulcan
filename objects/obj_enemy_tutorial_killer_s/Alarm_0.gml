//Destroy self if wheels don't exist
if !instance_exists(wheels) instance_destroy();
//Wheels slowdown if hit
/*if (hitting == true) {
	wheels.hitting = true;
} else {
	wheels.hitting = false;
}*/
//Jump to wheels position
x = wheels.x;
y = wheels.y;
alarm_set(0, 1);