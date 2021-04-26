var xx = x;
var yy = y;
move_bounce_solid(false);
x = xx;
y = yy;

/*
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