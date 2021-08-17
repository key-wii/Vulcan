//jumps to this position when obj_enemy_s_final is killed
global.checkpoint = 5;

if (!audio_is_playing(msc_final_boss)) {
	audio_stop_sound(global.bgm);
	global.bgm = audio_play_sound(msc_final_boss, 0, true);
}