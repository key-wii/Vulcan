flash1 = true;
if (flashCount == 180) flash2 = true;
else if (flashCount == 209) {
	flash1 = false;
	flash2 = false;
	flashCount = 0;
	var noShield = false;
	if (shield == id) exit; //noShield = true;
	with (shield) {
		var expl = instance_create_layer(x, y, "Enemy_Bullets", obj_explosion_grenade_e);
		var ddir = direction;
		with (expl) {
			moreSpd = 10;
			image_speed *= 1.5 * (15 / moreSpd);
			image_xscale = 2;
			image_yscale = 2;
			direction = ddir;
			if (!noShield) more = 9;
			alarm_set(5, moreSpd);
			audio_play_sound(snd_explosion_shield, false, false);
		}
		instance_destroy();
	}
	shield = id;
	phase = 7;
	alarm_set(11, 60);
	exit;
}
alarm_set(10, 1);