xx = lengthdir_x(dis, direction); xx += random_range(-4, 4);
yy = lengthdir_y(dis, direction); yy += random_range(-4, 4);
var expl = instance_create_layer(x + xx, y + yy, "Explosions", expl_obj);
expl.nosound = true;

if (dis > maxDis) {
	sound_machine(snd_explode, x, y);
	instance_destroy();
} else with (obj_audio_controller) sound_machine(snd_explosion_large, x, y);

count += 1;

alarm_set(0, expl_timer);
if (expl_timer > 8)
	expl_timer -= 2;
if (count > 4) {
	expl.image_xscale = .5;
	expl.image_yscale = .5;
} else if (count > 2) {
	expl.image_xscale = .75;
	expl.image_yscale = .75;
} 