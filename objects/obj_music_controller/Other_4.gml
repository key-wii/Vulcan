if (global.unpausing) {
	audio_resume_sound(global.bgm);
	exit;
}

if (room == room_tutorial) {
	if (global.checkpoint < 5 && !audio_is_playing(lv_0)) {
		audio_stop_sound(global.bgm);
		global.bgm = audio_play_sound(lv_0, 0, true);
	} else if (global.checkpoint >= 5 && !audio_is_playing(lv_02)) {
		audio_stop_sound(global.bgm);
		global.bgm = audio_play_sound(lv_02, 0, true);
	}
}
else if (global.level == 4 && !audio_is_playing(lv_dragon)) {
	audio_stop_sound(global.bgm);
	global.bgm = audio_play_sound(lv_dragon, 0, true);
}
else if (global.level == 5 && !audio_is_playing(lv_dizzy)) {
	audio_stop_sound(global.bgm);
	global.bgm = audio_play_sound(lv_dizzy, 0, true);
}
else if (global.level == 6 && !audio_is_playing(lv_shield)) {
	audio_stop_sound(global.bgm);
	global.bgm = audio_play_sound(lv_shield, 0, true);
}
else if (global.level == 7 && !audio_is_playing(lv_spiked)) {
	audio_stop_sound(global.bgm);
	global.bgm = audio_play_sound(lv_spiked, 0, true);
}
else if (global.level == 7 && !audio_is_playing(lv_spiked)) {
	audio_stop_sound(global.bgm);
	global.bgm = audio_play_sound(lv_spiked, 0, true);
}
else if (global.level == 9 && !audio_is_playing(Arzni)) {
	audio_stop_sound(global.bgm);
	global.bgm = audio_play_sound(Arzni, 0, true);
	var ran = irandom_range(1, 7);
	switch (ran) {
		case 1: audio_sound_set_track_position(global.bgm, 0); break;
		case 2: audio_sound_set_track_position(global.bgm, 108.67); break;
		case 3: audio_sound_set_track_position(global.bgm, 244.43); break;
		case 4: audio_sound_set_track_position(global.bgm, 754.97); break;
		case 5: audio_sound_set_track_position(global.bgm, 860.2); break;
		case 6: audio_sound_set_track_position(global.bgm, 966.21); break;
		case 7: audio_sound_set_track_position(global.bgm, 1298.96); break;
	}
}
else if (room == room_menu) {
	audio_stop_sound(global.bgm);
	ini_open("saveData.ini");
	var beatGame = ini_read_real("Bosses Beat", "boss final beat", false);
	ini_close();
	if (beatGame) global.bgm = audio_play_sound(msc_menu_beat, 0, true);
	else global.bgm = audio_play_sound(msc_menu, 0, true);
}
else if (room == room_pause) {
	if (global.level == 9 && global.pauseSong != msc_pause_final) {
		audio_stop_sound(global.pauseBgm);
		global.pauseSong = msc_pause_final;
		global.pauseBgm = audio_play_sound(global.pauseSong, 0, true);
	}
	else if (global.level != 9 && global.pauseSong != msc_pause) {
		audio_stop_sound(global.pauseBgm);
		global.pauseSong = msc_pause;
		global.pauseBgm = audio_play_sound(global.pauseSong, 0, true);
	}
	else audio_resume_sound(global.pauseBgm);
}