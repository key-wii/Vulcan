just_collided = true;
collided_with = other;
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
/*if (x < other.x) x -= 1;
else if (x > other.x) x += 1;
if (y < other.y) y -= 1;
else if (y > other.y) y += 1*/

/*move_bounce_solid(false);
var ddir = point_direction(other.x, other.y, x, y);
x += lengthdir_x(2, ddir);
y += lengthdir_y(2, ddir);*/