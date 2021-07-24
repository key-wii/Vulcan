if (damage > maxHp - 200) {
	alarm_set(4, 1);
	exit;
}
//speed up rotation
if (spinSpd < 0 && !swung && devil_trigger >= 100) {
	audio_play_sound(snd_devil_swing, false, false);
	spinSpd = 20;
	sprite_index = spPlayerTankFl_big;
	devil_trigger -= 200;
} else if (spinSpd > 0 && swung && devil_trigger >= 100) {
	audio_play_sound(snd_devil_swing, false, false);
	spinSpd = -20;
	sprite_index = spPlayerTankFl_big;
	devil_trigger -= 200;
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