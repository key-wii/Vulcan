//speed up rotation
if (desperationCooldown < 4010) exit;
if (spinSpd < 0 && !swung) {
	audio_play_sound(snd_devil_swing, false, false);
	spinSpd = 14;
	sprite_index = spPlayerTankFl_big;
} else if (spinSpd > 0 && swung) {
	audio_play_sound(snd_devil_swing, false, false);
	spinSpd = -14;
	sprite_index = spPlayerTankFl_big;
}
if (spinSpd < topSpinSpd && swung) {
	swung = false;
	spinSpd += 1;
	alarm_set(2, 110 + irandom_range(0, 40));
} else if (spinSpd > -topSpinSpd && !swung) {
	swung = true;
	spinSpd -= 1;
	alarm_set(2, 110 + irandom_range(0, 40));
}