//if (global.flameKills < 1) exit;
var player_exists = instance_exists(obj_tank_pilot); 
if (global.flameKills > 0 && player_exists) {
	if (global.flameKills == 1) audio_sound_gain(snd_smirk, 0.028, 162);
	else if (global.flameKills == 2) audio_sound_gain(snd_smirk, 0.032, 162);
	else if (global.flameKills == 3) audio_sound_gain(snd_smirk, 0.036, 162);
	else if (global.flameKills == 4) audio_sound_gain(snd_smirk, 0.04, 162);
	else if (global.flameKills == 5) audio_sound_gain(snd_smirk, 0.044, 162);
	else if (global.flameKills == 6) audio_sound_gain(snd_smirk, 0.048, 162);
	else if (global.flameKills == 7) audio_sound_gain(snd_smirk, 0.052, 162);
	else if (global.flameKills == 8) audio_sound_gain(snd_smirk, 0.056, 162);
	else if (global.flameKills >= 9) audio_sound_gain(snd_smirk, 0.06, 162);
	audio_play_sound(snd_smirk, 3, false);
	global.flameKills = 0;
	global.flameWaveKills = 0;
	global.flameSpeedBoost = 0;
	with (obj_tank_pilot) {
		part_type_direction(global.PartHeal, 0, 360, 20, 3);
		part_type_size(global.PartHeal, 1, 1, .02, .02);
		part_particles_create(global.P_System, x, y, global.PartHeal, 3);
		combo = false;
		if (healAmount == 0) healAmount = flameHeals;
		else healAmount += flameHeals;
		var hp = 100 - damage;
		if (hp < 0 && flameHeals > hp * -1) {
			healAmount = flameHeals + hp;
			damage = 100;
		}
		flameHeals = 0;
		healing = true;
		if (flameHeals < hp * -1) healing = false;
		alarm_set(3, 1);
		var smirk = instance_create_layer(x + 22, y - 33, "UI", obj_smirk)
		if (global.flameKills == 2) {
			smirk.image_xscale += .03;
			smirk.image_yscale += .03;
			smirk.x += 5;
			smirk.y -= 5;
		} else if (global.flameKills == 3) {
			smirk.image_xscale += .11;
			smirk.image_yscale += .11;
			smirk.x += 10;
			smirk.y -= 10;
		} else if (global.flameKills == 4) {
			smirk.image_xscale += .19;
			smirk.image_yscale += .19;
			smirk.x += 15;
			smirk.y -= 15;
		} else if (global.flameKills == 5) {
			smirk.image_xscale += .27;
			smirk.image_yscale += .27;
			smirk.x += 20;
			smirk.y -= 20;
		} else if (global.flameKills == 6) {
			smirk.image_xscale += .35;
			smirk.image_yscale += .35;
			smirk.x += 25;
			smirk.y -= 25;
		} else if (global.flameKills == 6) {
			smirk.image_xscale += .43;
			smirk.image_yscale += .43;
			smirk.x += 30;
			smirk.y -= 30;
		} else if (global.flameKills == 7) {
			smirk.image_xscale += .51;
			smirk.image_yscale += .51;
			smirk.x += 35;
			smirk.y -= 35;
		} else if (global.flameKills == 8) {
			smirk.image_xscale += .59;
			smirk.image_yscale += .59;
			smirk.x += 40;
			smirk.y -= 40;
		} else if (global.flameKills == 9) {
			smirk.image_xscale += .67;
			smirk.image_yscale += .67;
			smirk.x += 45;
			smirk.y -= 45;
		} else if (global.flameKills >= 10) {
			smirk.image_xscale += .75;
			smirk.image_yscale += .75;
			smirk.x += 50;
			smirk.y -= 50;
		}
	}
}
var flame_wheels_exist = instance_exists(obj_tank_move_flame);
if (flame_wheels_exist) obj_tank_move_flame.top_speed_boost = 0;
room_speed = 60;