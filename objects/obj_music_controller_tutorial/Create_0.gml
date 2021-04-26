audio_stop_sound(msc_tutorial); audio_stop_sound(msc_tutorial_suspense);
currentSong = msc_tutorial;
bgm = audio_play_sound(currentSong, 0, false);
intro_length = 4.083;
loop_length = 15.835;
//only play start of song at first
intro_length = 0;
loop_length = 7.85;
full_length = intro_length + loop_length;