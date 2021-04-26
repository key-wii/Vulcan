if (room == room0)
	if (x < 700 || y < 500 || x > room_width - 400 - 256 || y > room_height - 200 - 256)
		owner.outside_room = true;
	else owner.outside_room = false;
if (damage >= hp) with (owner) instance_destroy();
alarm_set(1, 1);