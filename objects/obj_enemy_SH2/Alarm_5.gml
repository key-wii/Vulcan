var noShield = false;
if (shield == id) exit; //noShield = true;
with (shield) {
	var expl = instance_create_layer(x, y, "Enemy_Bullets", obj_explosion_grenade_e);
	var ddir = direction;
	with (expl) {
		moreSpd = 10;
		image_speed *= 1.5 * (15 / moreSpd);
		image_xscale = 1;
		image_yscale = 1;
		direction = ddir;
		if (!noShield) more = 5;
		alarm_set(5, ceil(moreSpd));
		audio_play_sound(snd_explosion_shield, false, false);
	}
	instance_destroy();
}
flash1 = false;
flash2 = false;
flashCount = 20;
alarm_set(6, 20);
alarm_set(3, 0);
alarm_set(4, 0);