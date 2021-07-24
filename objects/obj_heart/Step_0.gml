if (room == room0)
	if (x < 550 + 256 || y < 350 + 256 || x > room_width - 550 - 256 || y > room_height - 350 - 256) {
		x = room_width / 2;
		y = room_height / 2;
	}