//don't explode when destroying self due to being outside boundaries
if (room == room0)
	if (x < 550 + 256 || y < 350 + 256 || x > room_width - 550 - 256 || y > room_height - 350 - 256)
		with (owner) instance_destroy();
if (damage >= hp) owner.damage = damage;
alarm_set(1, 1);