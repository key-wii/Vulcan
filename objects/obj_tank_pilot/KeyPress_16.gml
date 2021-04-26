if (debug_lock > 0) {
	debug_lock -= 1;
	alarm_set (2, 70);
	exit;
} else if (debug_lock == 0) {
	debug_lock = -1;
	alarm_set (2, 0);
}
if (debug == true) {
	audio_play_sound(snd_debug_unlocked, false, false);
	debug = false;
	exit;
}
if (debug == false) {
	audio_play_sound(snd_debug_unlocked, false, false);
	debug = true;
}