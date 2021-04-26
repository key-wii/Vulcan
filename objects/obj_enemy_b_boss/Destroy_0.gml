instance_destroy(wheels);
expl = instance_create_layer(x, y, "Enemy", obj_explosion_emitter_miniboss);
with (obj_spawner_tutorial) {
	timeline_index = timeline_tutorial2_win;
	timeline_loop = 0;
	timeline_position = 0;
	timeline_running = true;
}
audio_sound_gain(snd_explosion_large, .01, 90);
event_inherited();