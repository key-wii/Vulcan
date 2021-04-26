event_inherited();
if (move == move.LEFT) {
	adjust_dir += 2;
}
if (move == move.RIGHT) {
	adjust_dir -= 2;
}
if (adjust_dir >= 30) {
	move = move.RIGHT;
}
if (adjust_dir <= 30) {
	move = move.LEFT;
}