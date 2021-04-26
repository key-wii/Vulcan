instance_destroy(obj_enemy_parent);
instance_destroy(obj_shell_parent_e);
audio_play_sound(snd_beat_miniboss1, 0, false);
obj_cover_screen_white.visible = true;
with (obj_cover_screen_white) alarm_set(0, 60);