instance_destroy(flame);
instance_destroy(wheels);
expl = instance_create_layer(x, y, "Enemy", obj_explosion_emitter_miniboss3);
expl.direction = direction + 180;
expl.splitMore = 0;

audio_sound_gain(snd_explosion_large, .01, 90);
event_inherited();