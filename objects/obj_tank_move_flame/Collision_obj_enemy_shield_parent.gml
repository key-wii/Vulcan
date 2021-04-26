/*move_bounce_solid(false)
speed += 2;
if (global.wall_grinding == false) alarm_set(1, 30);
bump_tick = 4;
bump_dir = point_direction(other.x + 20, other.y + 20, x, y);
if (bump_dir >= 315 && bump_dir <= 405) bump_dir = 0;
if (bump_dir >= 45 && bump_dir <= 135) bump_dir = 90;
if (bump_dir >= 135 && bump_dir <= 225) bump_dir = 180;
if (bump_dir >= 225 && bump_dir <= 315) bump_dir = 270;
//gravity_direction = bump_dir; gravity = 12;

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
