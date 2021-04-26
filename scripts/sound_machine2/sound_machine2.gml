/// sound_machine(x, y, falloff_ref_dis)
function sound_machine2(snd, xx, yy, falloff_ref_dis) {
	
	with (obj_audio_controller) audio_play_sound_at(snd, xx, yy, 0, falloff_ref_dis, fall_max_dis, 1, false, false);
	
}