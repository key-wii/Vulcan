instance_create_layer(x + 270, y, "Enemy", obj_explosion_miniboss);
instance_create_layer(x, y - 270, "Enemy", obj_explosion_miniboss);
audio_play_sound(snd_explode, 0, false);