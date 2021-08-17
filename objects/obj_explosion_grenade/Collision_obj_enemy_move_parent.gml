if (other.object_index == obj_menu_char_move) {
	with (other.owner) {
		spin = 372;
		charCount = 0;
		sprite_index = dead_sprite;
		alarm_set(9, 10);
	}
	exit;
}
//if (counter && other.tempBlock) exit;
if (other.grenadeAlreadyHitIndex <= alreadyHit) exit;
alreadyHit++;
other.grenadeAlreadyHitIndex = alreadyHit;

var controller_exists = instance_exists(controller);
if (global.flameKills > 0) {
	if (controller_exists)
		with (controller) {
			alarm_set(2, alarm_get(2) + 12);
			if (alarm_get(2) > 85) alarm_set(2, 85);
		}
	var boss_controller_exists = instance_exists(obj_boss1_controller);
	if (boss_controller_exists)
		with (obj_boss1_controller) {
			alarm_set(2, alarm_get(2) + 12);
			if (alarm_get(2) > 85) alarm_set(2, 85);
		}
}

if (!instance_exists(other.owner)) exit;
var chainExpl = false;
if (chain) chainExpl = true;
if (counter && global.flameKills > 0) other.owner.hitting = true;

var player_exists = instance_exists(obj_tank_pilot);
var ppow = pow;
with(other) {
	with (owner) {
		if (chainExpl) {
			chainKill = true;
			if (player_exists)
				if (obj_tank_pilot.devilSwinging)
					hitting = true;
		}
		burnt += 40;
		var block = false;
		if (object_index == obj_enemy_tutorial_dumdum) {
			if (color != color.yellow) block = true;
			else block = false;
		} else block = false;
	}
		
	var broken_shield = shield < 1 && shielding = true;
	if((broken_shield || !shielding) && block == false) {
		if (miniboss == false) {
			damage += ppow;
			owner.damage += ppow;
		} else {
			damage += 3 * ppow;
			owner.damage += 3 * ppow;
		}
		if (owner.max_trigger > 0) {
			owner.devil_trigger = 0;
			owner.devil_trigger -= power(owner.max_trigger / 100, 3);
			owner.red_skull = 20;
		}
		//alarm for allowing enemy to get hit by grenades while trying to prevent taking more damage
		//from multiple explosions (and the same explosion)
		alarm_set(5, 60);
		//enemy blinks white and moves a bit in opposite direction
		with (owner) {
			sprite_index = dead_sprite;
			alarm_set(9, 10);
		}
		owner.x_adjust = lengthdir_x(8, point_direction(other.x, other.y, x, y));
		owner.y_adjust = lengthdir_y(8, point_direction(other.x, other.y, x, y));
		//explosion
		with (other) {
			var explosion = instance_create_layer(x + 0, y + 0, "Explosions", obj_explosion_small);
			explosion.direction = direction;
			explosion.speed = 5;
			explosion.image_alpha = .1;
		}
	}
	if((shield > 0 && shielding) || block = true) sound_machine(snd_shield_hit, x, y);
	if (object_index != obj_boss_parent || !combo) {
		if (damage >= hp) {
			/*var kill_X = */instance_create_layer(x, y, "UI", obj_kill_X);
			obj_camera.plusShake = screenShake * 3;
			if (controller_exists && !owner.hydra && (!owner.slime || owner.childrenLeft == 0))
				with (controller) kills++;
			if (owner.object_index == obj_enemy_bomber) owner.dddir = other.direction;
			/*if (player_exists)
				if (obj_tank_pilot.devilSwinging) {
					with (obj_tank_pilot) {
						combo = true;
						if (flameHeals < 0) flameHeals = 0;
						flameHeals += 10;
						var hhp = 100 - damage;
						if (hhp + flameHeals > 100) flameHeals = 100 - hhp;
						if (flameHeals < 0) flameHeals = 0;
					}
					room_speed = 45;
					with(controller) alarm_set(5, 1);
					//Flame kills between 10 and 99 boost speed
					var wheels_exist = instance_exists(obj_tank_move_flame);
					if (wheels_exist && global.flameKills > 9 && global.flameKills < 100)
						obj_tank_move_flame.top_speed_boost += .006;
						global.flameSpeedBoost += .007;
					//Flame kills 100 and above heal .1 damage
					if (player_exists && global.flameKills >= 100 && obj_tank_pilot.damage > 0)
						obj_tank_pilot.damage -= (global.flameKills mod 10) * .05;
				}*/
		}
	} else if (object_index = obj_boss_parent && !combo) {
		if (damage >= hp) {
			var kill_X = instance_create_layer(x, y, "UI", obj_kill_X);
			kill_X.image_xscale = 3;
			kill_X.image_yscale = 3;
			obj_camera.plusShake = screenShake * 3;
			if (controller_exists && !owner.hydra && (!owner.slime || owner.childrenLeft == 0))
				with (controller) kills++;
			/*if (player_exists)
				if (obj_tank_pilot.devilSwinging) {
					with (obj_tank_pilot) {
						combo = true;
						if (flameHeals < 0) flameHeals = 0;
						flameHeals += 10;
						var hhp = 100 - damage;
						if (hhp + flameHeals > 100) flameHeals = 100 - hhp;
						if (flameHeals < 0) flameHeals = 0;
					}
					room_speed = 45;
					with(controller) alarm_set(5, 1);
					//Flame kills between 10 and 99 boost speed
					var wheels_exist = instance_exists(obj_tank_move_flame);
					if (wheels_exist && global.flameKills > 9 && global.flameKills < 100)
						obj_tank_move_flame.top_speed_boost += .006;
						global.flameSpeedBoost += .007;
					//Flame kills 100 and above heal .1 damage
					if (player_exists && global.flameKills >= 100 && obj_tank_pilot.damage > 0)
						obj_tank_pilot.damage -= (global.flameKills mod 10) * .05;
				}*/
		}
	}
}