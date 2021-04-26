//don't explode when destroying self due to being outside boundaries
if (room == room0)
	if (x < 520 || y < 520 || x > room_width - 520 || y > room_height - 520)
		with (owner) instance_destroy();
if (damage >= hp) with (owner) instance_destroy();
alarm_set(1, 1);