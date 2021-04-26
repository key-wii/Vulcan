//Move text up and down
if (stop == false) {
	if (up == true) {
		if (jitter > 4) {
			draw_set_colour($FFF8B2);
			up = false;
			stop = true;
		} else {
			draw_set_colour($25A0DD);
			jitter += 1;
		}
	} else {
		if (jitter < 0) {
			draw_set_colour($FFF8B2);
			up = true;
			stop = true;
		} else {
			draw_set_colour($25A0DD);
			jitter -= 1;
		}
	}
} else if (alarm_get(2) < 0 || alarm_get(2) > 2) {
	alarm_set(2, 2);
} else draw_set_colour($FFF8B2);

draw_set_font(fnt_kill_count_10);
draw_text(x - 22, y + 45 - jitter * 3, + string("RADICAL"));