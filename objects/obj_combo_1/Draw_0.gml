//Move text up and down
if (stop == false) {
	if (up == true) {
		if (jitter > 4) {
			draw_set_colour($000000);
			up = false;
			stop = true;
		} else {
			draw_set_colour($25A0DD);
			jitter += 1;
		}
	} else {
		if (jitter < 0) {
			draw_set_colour($000000);
			up = true;
			stop = true;
		} else {
			draw_set_colour($25A0DD);
			jitter -= 1;
		}
	}
} else if (alarm_get(2) < 0 || alarm_get(2) > 5) {
	alarm_set(2, 5);
} else draw_set_colour($FFF8B2);

draw_set_font(fnt_kill_count_7);
draw_text(x - 110, y + 45 - jitter, + string("COMBO ALL ENEMIES"));