var expl = instance_create_layer(x + xx, y + yy, "Explosions", expl_obj);
expl.nosound = true;


if (!inverse && yy > 200) {
	sound_machine(snd_explode, x, y);
	instance_destroy();
} else if (!inverse) sound_machine(snd_explosion_large, x, y);
if (inverse && yy < -200) {
	sound_machine(snd_explode, x, y);
	instance_destroy();
} else if (inverse) sound_machine(snd_explosion_large, x, y);

alarm_set(0, expl_timer);
if (expl_timer > 9) expl_timer -= 1;