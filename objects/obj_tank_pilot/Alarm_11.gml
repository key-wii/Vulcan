hp_draw_adjust = ((damage / 10));
lives = floor((100 - damage) / 10);
if (lives > 10) {
	lives = 10;
}
alarm_set(11, 3);