var noShield = false;
if (shield == id) exit; //noShield = true;
with (shield) {
	var expl = instance_create_layer(x, y, "Enemy_Bullets", obj_explosion_grenade_e);
	var ddir = direction;
	with (expl) {
		moreSpd = 15;
		image_speed *= 1.5;
		image_xscale = 1;
		image_yscale = 1;
		direction = ddir;
		if (!noShield) more = 14;
		alarm_set(5, moreSpd);
		audio_play_sound(snd_explosion_shield, false, false);
	}
	instance_destroy();
}
flash1 = false;
flash2 = false;
flashCount = 20;
alarm_set(6, 20);