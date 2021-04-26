ini_open("saveData.ini");
ini_write_real("Levels Beat", "tutorial beat", true);
ini_close();
with (obj_music_controller_tutorial) {
	audio_stop_sound(currentSong);
	currentSong = msc_win;
	bgm = audio_play_sound(currentSong, false, false);
	intro_length = 0;
	loop_length = 3000;
	full_length = intro_length + loop_length;
}