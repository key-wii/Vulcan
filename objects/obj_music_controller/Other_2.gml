global.bgm = audio_play_sound(lv_0, 0, true);
global.pauseSong = msc_pause;
global.pauseBgm = audio_play_sound(global.pauseSong, 0, true);
audio_stop_sound(lv_0);
audio_pause_sound(global.pauseBgm);