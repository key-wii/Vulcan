if (cutscene || grenading) exit;
if(weapon_wait == 0) {
	weapon += 1;
	if(weapon == 3) {
		weapon = 0;
	}
	ini_open("saveData.ini");
	ini_write_real("Options", "last weapon", weapon);
	ini_close();
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
if (!flaming) {
	if (weapon == 0) {
		sprite_index = spPlayerTankY;
		var justGrenaded = y_gun_reload * shoot_speed;
	}
	if (weapon == 1) {
		sprite_index = spPlayerTankG;
		var justGrenaded = g_gun_reload * shoot_speed;
	}
	if (weapon == 2) {
		sprite_index = spPlayerTankB;
		var justGrenaded = b_gun_reload * shoot_speed;
	}
	if (shieldUnlocked && shoot_rotate == 0 && !shield_break && can_shoot >= justGrenaded) {
		shielding = true;
		shield = 60;
	}
}