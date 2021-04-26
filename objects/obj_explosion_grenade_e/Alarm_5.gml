if (more > 0) {
	more--;
	var xx = lengthdir_x(sprite_width / 2 + 2, direction);
	var yy = lengthdir_y(sprite_width / 2 + 2, direction);
	var expl = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_explosion_grenade_e);
	var ddir = direction;
	var mmore = more;
	var mSpd = moreSpd;
	var xscale = image_xscale;
	var yscale = image_yscale;
	with (expl) {
		moreSpd = mSpd;
		image_speed *= 1.5 * (15 / mSpd);
		image_xscale = xscale;
		image_yscale = yscale;
		direction = ddir;
		more = mmore;
		alarm_set(5, ceil(mSpd));
		audio_play_sound(snd_explosion_shield, false, false);
	}
}