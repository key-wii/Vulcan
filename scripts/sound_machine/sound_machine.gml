/// sound_machine(x, y)
function sound_machine(snd, xx, yy) {
	
	with (obj_audio_controller) audio_play_sound_at(snd, xx, yy, 0, 100, fall_max_dis, 1, false, false);
	
}