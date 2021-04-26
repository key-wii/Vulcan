//don't explode when destroying self due to being outside boundaries
if (room == room0)
	if (x < 650 || y < 600 || x > room_width - 600 - 256 || y > room_height - 450 - 256)
		owner.outside_room = true;
	else owner.outside_room = false;
if (damage >= hp) with (owner) instance_destroy();
alarm_set(1, 1);