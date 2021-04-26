audio_play_sound(snd_beat_miniboss2, 0, false);
with (obj_tank_pilot) {
	instance_create_layer(x, y - 200, "UI", obj_gun_obtain);
	unlock = 1;
	sprite_index = spPlayerTankY;
}