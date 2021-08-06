if (global.level == 7 && global.checkpoint < 100) {
	if (!audio_is_playing(lv_spiked)) {
		audio_stop_sound(global.bgm);
		global.bgm = audio_play_sound(lv_spiked, 0, true);
		audio_sound_set_track_position(global.bgm, 402.2);
	}
} else alarm_set(4, 40);