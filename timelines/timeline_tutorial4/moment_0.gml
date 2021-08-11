if (global.checkpoint > 5) exit;
obj_tint_screen_red2.visible = true;
with (obj_tint_screen_red2) alarm_set(0, 20);

if (global.checkpoint < 5) {
	/*with (obj_music_controller) {
		audio_stop_sound(bgm);
		currentSong = msc_tutorial_suspense;
		if (global.mute == false) bgm = audio_play_sound(currentSong, false, false);
		intro_length = 7.5;
		loop_length = 45.26;
		full_length = intro_length + loop_length;
	}*/
	with (obj_music_controller) {
		audio_stop_sound(global.bgm);
		global.bgm = audio_play_sound(lv_02, 0, true);
	}
	visible = true;
	global.checkpoint = 5;
}