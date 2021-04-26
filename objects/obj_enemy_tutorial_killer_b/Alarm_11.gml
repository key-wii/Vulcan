if (random_range(0, 2) > 1 || sound_count == 4) audio_play_sound(snd_shoot_e, 0, false);
else {
	alarm_set(11, 1);
	sound_count++;
}