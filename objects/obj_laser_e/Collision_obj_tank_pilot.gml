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
		damage += other.pow;
		if (broken_shield) damage += other.pow;
		devil_trigger -= devil_refill * 2;
		if (devil_trigger < -max_trigger) devil_trigger = -max_trigger;
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
}
var explosion = instance_create_layer(x, y, "Explosions", obj_explosion_small_hit);
var ddir = irandom_range(1, 2);
if (ddir == 1) ddir = 90; if (ddir == 2) ddir = -90;
explosion.direction = other.direction + 180;
//if (point_direction(explosion.x, explosion.y, other.x, other.y) > direction) explosion.direction += ddir;
explosion.direction += ddir;
explosion.orig_direction = explosion.direction;
explosion.speed = 12;
explosion.sprite_index = spr_explosion_small__red;
explosion.sfx = false;
explosion.follow = false;
with (obj_audio_controller) audio_play_sound_at(snd_laserhit, x, y, 0, 100, fall_max_dis, 1, false, false);