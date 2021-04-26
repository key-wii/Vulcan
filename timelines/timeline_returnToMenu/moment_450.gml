audio_sound_gain(snd_explosion_large, .12, 250);
audio_sound_gain(snd_explosion_small, .008, 250);
instance_destroy(obj_enemy_parent);
instance_destroy(obj_shell_parent_e);
if (!instance_exists(obj_fade_screen))
	instance_create_layer(0, 0, "UI", obj_fade_screen);
with (obj_fade_screen) {
	visible = true;
	alarm_set(0, 1);
}