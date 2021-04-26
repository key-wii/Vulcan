draw_self();

//Move text up and down
if (stop == false) {
	if (up == true) {
		if (jitter > 4) {
			draw_set_colour($2A88E0);
			up = false;
			stop = true;
		} else {
			draw_set_colour($25A0DD);
			jitter += 1;
		}
	} else {
		if (jitter < 0) {
			draw_set_colour($2A88E0);
			up = true;
			stop = true;
		} else {
			draw_set_colour($25A0DD);
			jitter -= 1;
		}
	}
} else if (alarm_get(2) < 0 || alarm_get(2) > 6) {
	alarm_set(2, 6);
} else draw_set_colour($2A88E0);

draw_set_font(fnt_kill_count_5);
draw_text(x - 23, y - 90 - jitter, + string("HOLD"));