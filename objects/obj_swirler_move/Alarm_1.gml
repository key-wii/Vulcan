if (!instance_exists(owner)) exit;
if (room == room0)
	if (x < 550 + 256 || y < 350 + 256 || x > room_width - 550 - 256 || y > room_height - 350 - 256)
		with (owner) instance_destroy();
alarm_set(1, 1);
with (owner) {
	if (damage < maxHp) exit;
	instance_destroy();
}