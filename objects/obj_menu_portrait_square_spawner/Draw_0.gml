if (owner != id) {
	draw_set_color(owner.col);
} else draw_set_color(c_teal);
draw_set_alpha(alpha);

draw_rectangle(xx1 + xxx, yy1 + yyy, xx2 + xxx, yy2 + yyy, false);

draw_set_color(c_white);
draw_set_alpha(1);