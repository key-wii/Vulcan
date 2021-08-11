ini_open("saveData.ini");
ini_write_real("Levels Beat", "tutorial beat", true);
ini_close();
/*with (obj_music_controller) {
	audio_stop_sound(global.bgm);
	global.bgm = audio_play_sound(, 0, true);
}*/