/*if (global.mute == false) {
	audio_stop_sound(currentSong);
	global.mute = true;
	exit;
}
if (global.mute == true) {
	bgm = audio_play_sound(currentSong, false, false);
	global.mute = false;
	exit;
}