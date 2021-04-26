if (grenading) exit;
if(weapon_wait == 0) {
	weapon += 1;
	if(weapon == 3) {
		weapon = 0;
	}
	audio_play_sound(snd_select_bullet, 0, 0);
	weapon_wait = 1;
	alarm_set(0, 10);
	alarm_set(1, 0);
	if (just_shot && global.flameKills > 0)
		with (controller) {
			alarm_set(2, alarm_get(2) + 20);
			if (alarm_get(2) > 79) alarm_set(2, 79);
		}
	just_shot = false;
}
/*if (!flaming) {
	if (weapon == 0) sprite_index = spPlayerTankY;
	if (weapon == 1) sprite_index = spPlayerTankG;
	if (weapon == 2) sprite_index = spPlayerTankB;
}