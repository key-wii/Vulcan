//don't explode when destroying self due to being outside boundaries
if (room == room0)
	if (x < 550 || y < 350 || x > room_width - 520 - 256 || y > room_height - 350 - 256)
		with (owner) instance_destroy();
if (damage >= hp) with (owner) instance_destroy();
alarm_set(1, 1);