speed *= .5;
move_bounce_solid(false);
touching_wall = true;
alarm_set(1, 2);
alarm_set(11, 2);
bump_tick = 1;
bump_dir = point_direction(other.x + 20, other.y + 20, x, y);
if (bump_dir >= 315 && bump_dir <= 405) bump_dir = 0;
if (bump_dir >= 45 && bump_dir <= 135) bump_dir = 90;
if (bump_dir >= 135 && bump_dir <= 225) bump_dir = 180;
if (bump_dir >= 225 && bump_dir <= 315) bump_dir = 270;
bump_spd = 11;

if (place_meeting(x, y, other)) {
	for (var i = 0; i < 1000; ++i) {
		if (!place_meeting(x + i, y, other)) {
			x += i;
			break;
		}
		if (!place_meeting(x - i, y, other)) {
			x -= i;
			break;
		}
		if (!place_meeting(x, y - i, other)) {
			y -= i;
			break;
		}
		if (!place_meeting(x, y + i, other)) {
			y += i;
			break;
		}
		if (!place_meeting(x + i, y - i, other)) {
			x += i;
			y -= i;
			break;
		}
		if (!place_meeting(x - i, y - i, other)) {
			x -= i;
			y -= i;
			break;
		}
		if (!place_meeting(x + i, y + i, other)) {
			x += i;
			y += i;
			break;
		}
		if (!place_meeting(x - i, y + i, other)) {
			x -= i;
			y += i;
			break;
		}
	}
}

if (x < 450 + 256 || x > room_width - 530 - 256 ||
	y < 250 + 256 || y > room_height - 340 - 256) {
		x = xInside;
		y = yInside;
}

/*if (prevVspeed < 0) y++;
if (prevHspeed < 0) x++;
if (prevVspeed > 0) y--;
if (prevHspeed > 0) x--;