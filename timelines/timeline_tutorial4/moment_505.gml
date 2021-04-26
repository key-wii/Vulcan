audio_play_sound(snd_beat_miniboss2, 0, false);
with (obj_tank_pilot) {
	var gun = instance_create_layer(x, y - 200, "UI", obj_gun_obtain);
	gun.sprite_index = spr_gun_B;
	unlock = 3;
}
