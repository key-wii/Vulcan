if (silent) exit;
/*smc = instance_number(obj_explosion_large);
if (smc = 0)  vol = .79 * adj;
if (smc = 1)  vol = .79 * adj;
if (smc = 2)  vol = .65 * adj;
if (smc = 3)  vol = .6  * adj;
if (smc = 4)  vol = .55 * adj;
if (smc = 5)  vol = .5  * adj;
if (smc = 6)  vol = .45 * adj;
if (smc = 7)  vol = .3  * adj;
if (smc = 8)  vol = .36 * adj;
if (smc = 9)  vol = .33 * adj;
if (smc = 10) vol = .3  * adj;
if (smc = 11) vol = .25 * adj;
if (smc = 12) vol = .23 * adj;
if (smc = 13) vol = .21 * adj;
if (smc = 14) vol = .20 * adj;
if (smc > 14) vol = .1  * adj;
audio_sound_gain(snd_explosion_large, vol, 2760);*/
if (bomber) {
	var snd = snd_explosion_bomber;
} else {
	if (global.explosionAlt) {
		var snd = snd_explosion_large_alt;
		global.explosionAlt = false;
	} else {
		var snd = snd_explosion_large;
		global.explosionAlt = true;
	}
	with (obj_audio_controller) {
		ds_list_add(explosion_larges, snd);
		var size = ds_list_size(explosion_larges);
		var new_explosions = 0;
		for (i = 1; i < size; i++) {
			if (audio_sound_get_track_position(explosion_larges[| i]) == 0) new_explosions++;
			if (new_explosions >= 8) exit;
		}
	}
}
sound_machine(snd, x, y);