with(other) {
	var broken_shield = (shield > 0 && shielding == true);
	if (broken_shield) {
		shielding = false;
		shield_break = true;
		sound_machine(snd_shield_break2, x, y);
		alarm_set(9, 600);
	}
	if(broken_shield || !shielding) {
		var negaDmg = damage - 100 - flameHeals;
		if (other.start || damage >= 94 && damage < 100) damage += 1;
		else if (damage >= 80 && damage < 100) damage += floor(40000 / (damage * damage));
		else damage += other.pow;
		if (broken_shield) damage += other.pow;
		//if (negaDmg < 100) damage += other.pow;
		negaDmg = damage - 100 - flameHeals;
		//if (negaDmg > 100.01) damage -= negaDmg - 100;
		/*var blood = instance_create_layer(x, y, "Walls", obj_blood_player);
		blood.image_index = lives - 1;
		if (damage < 100 && damage > 90) blood.image_index = 1;
		if (damage >= 100) blood.image_index = 0;
		blood.life = blood.image_index * 10;*/
		if (spikesUnlocked) alarm_set(8, 1);
		obj_camera.flameShake = clamp(((damage / 5) + 5), 0, 15);
		with(obj_tint_screen_red) {
			visible = true;
			alarm_set(0, 3);
		}
	}
	var explosion = instance_create_layer(x, y, "Explosions", obj_explosion_small_hit);
	explosion.direction = direction;
	with (explosion) {
		orig_direction = direction;
		direction += random_range(-22, 22);
		speed = 7;
		sprite_index = spr_explosion_small__red;
		sfx = false;
		follow = false;
		image_xscale = 2;
		image_yscale = 2;
	}
}
/*var xxx = lengthdir_x(132, direction);
var yyy = lengthdir_y(132, direction);
var explosion = instance_create_layer(x + xxx, y + yyy, "Explosions", obj_explosion_small_hit);
explosion.direction = other.direction + 180;
explosion.orig_direction = explosion.direction;
explosion.speed = 7;
explosion.sprite_index = spr_explosion_small__blue2;
explosion.sfx = false;
explosion.follow = false;
audio_play_sound(snd_flameblue_e, false, false);