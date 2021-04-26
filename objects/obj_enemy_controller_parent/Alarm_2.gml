if (room == room0) {
	if (x < 550 + sprite_width) x += sprite_width;
	if (y < 350 + sprite_width) y += sprite_width;
	if (x > room_width - 520 - 256 - sprite_width) x -= sprite_width;
	if (y > room_height - 350 - 256 - sprite_width) y -= sprite_width;
}