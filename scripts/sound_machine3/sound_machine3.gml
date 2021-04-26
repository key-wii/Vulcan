/// sound_machine(x, y, falloff_ref_dis, falloff_factor)
function sound_machine3(snd, xx, yy, falloff_ref_dis, falloff_factor) {
	
	with (obj_audio_controller) audio_play_sound_at(snd, xx, yy, 0, falloff_ref_dis, fall_max_dis, falloff_factor, false, false);
	
}