var _pos = audio_sound_get_track_position(bgm);
if (_pos > full_length) {
	audio_sound_set_track_position(bgm, _pos - loop_length);
}