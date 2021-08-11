if (do_once == true) {
	if (global.checkpoint == 0) phase = 1;
	else phase = 8;
	if (global.checkpoint == 1) timeline_index = timeline_tutorial1_win;
	else if (global.checkpoint == 2) timeline_index = timeline_tutorial2;
	else if (global.checkpoint == 3) timeline_index = timeline_tutorial2_win;
	else if (global.checkpoint == 4) timeline_index = timeline_tutorial3;
	else if (global.checkpoint >= 5) {
		timeline_index = timeline_tutorial4;
		/*with (obj_music_controller_tutorial) {
			if (currentSong != msc_tutorial_suspense) {
				audio_stop_sound(bgm);
				currentSong = msc_tutorial_suspense;
				if (global.mute == false) bgm = audio_play_sound(currentSong, false, false);
				intro_length = 7.5;
				loop_length = 45.26;
				full_length = intro_length + loop_length;
			}
		}*/
	}
	if (global.checkpoint > 0) {
		timeline_position = 0;
		timeline_running = true;
	}
	do_once = false;
}