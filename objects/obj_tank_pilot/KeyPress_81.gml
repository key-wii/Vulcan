if(weapon_wait == 0) {
	weapon += 1;
	if(weapon == 3) {
		weapon = 0;
	}
	audio_play_sound(snd_select_bullet, 0, 0);
	weapon_wait = 1;
	alarm_set(0, 10);
	alarm_set(1, 0);
}
if (!flaming) {
	if (weapon == 0) sprite_index = spPlayerTankY;
	if (weapon == 1) sprite_index = spPlayerTankG;
	if (weapon == 2) sprite_index = spPlayerTankB;
}