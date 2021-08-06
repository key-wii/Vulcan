event_inherited();
//timer += 1;
//if (damage > 0 && debug) damage -= 25;

//Jump to the wheels
var wheels_exist = instance_exists(obj_tank_move);
if(wheels_exist) {
	x = obj_tank_move.x + x_adjust;
	y = obj_tank_move.y + y_adjust;
}
var flame_wheels_exist = instance_exists(obj_tank_move_flame);
if(flame_wheels_exist) {
	x = obj_tank_move_flame.x;
	y = obj_tank_move_flame.y;
}
if (x_adjust > 1) x_adjust -= 2;
if (y_adjust > 1) y_adjust -= 2;
if (x_adjust < -1) x_adjust += 2;
if (y_adjust < -1) y_adjust += 2;
if (x_adjust > -1 && x_adjust < 1) x_adjust = 0;
if (y_adjust > -1 && y_adjust < 1) y_adjust = 0;

//Everything below is for flaming
if (uncharged_press) exit;

//Windup On Initial Right Click
if(windup_flame > windupMax) {
	direction += -8 * flame_dir;
	windup_flame += -1;
	can_move = false;
}
if(0 < windup_flame < windupMax + 1) {
	windup_flame += -1;
	can_move = false;
}
if(windup_flame < 0) {
	windup_flame = 0;
	can_move = true;
}

if (chargeUnlocked) {
	//increase devil swing charge if holding left click, flaming, and have least 1 devil trigger charge
	if (mouse_check_button(mb_left) &&
		flaming && devil_trigger >= 100) {
			devilSwingCharge++;
			//play sound 1 frame before fully charged
			if (devilSwingCharge >= devilSwingFullCharge - 1 && devil_trigger >= 200 &&
				chargedSound == false) {
					audio_play_sound(snd_charge, false, false);
					chargedSound = true;
			}
		}
	else if (!mouse_check_button(mb_left) &&
		flaming) {
			devilSwingCharge = 0;
			chargedSound = false;
	}
}

//Global Right Down (Mouse)
if mouse_check_button(mb_right) {
	if(windup_flame == 0) {
		if(!(weapon == 3)) {
			if(flaming == true) {
				if (!got_heart && bull_hit_count >= 60) sprite_index = spPlayerTankFl_hyper;
				else if (!got_heart && bull_hit_count >= 45) sprite_index = spPlayerTankFl_almostHyper;
				else if (sprite_index != spPlayerTankFl && !got_heart) sprite_index = spPlayerTankFl;
				var wheels_exist = instance_exists(obj_tank_move);
				if(wheels_exist) {
					with(obj_tank_move) instance_destroy();
				}
				if (flame_sound = 1) {
					audio_play_sound(snd_flame, 0, 0);
					flame_sound += 1;
				} else {
					flame_sound += 1;
					if (flame_sound = 4) flame_sound = 1;
				}
				var flame = instance_create_layer(x + 0, y + 0, "Flame", obj_flame);
				if (bull_hit_count > 30) {
					flame.sprite_index = spr_flame_big_hitbox;
					direction += 5 * flame_dir;
					if (bull_hit_count > 45) direction += 5 * flame_dir;
					if (bull_hit_count > 60) direction += 5 * flame_dir;
				}
				if (flame_timer < 4) {
					flame.image_xscale -= .2 * (4 - flame_timer);
					flame.image_yscale -= .2 * (4 - flame_timer);
				} else {
					flame.image_xscale = 1;
					flame.image_yscale = 1;
					direction += 10 * flame_dir;
				}
				//shrink flame when it hits enemy's shield
				with (flame) {
					var shld = instance_nearest(x, y, obj_enemy_shield_parent);
					if (place_meeting(x, y, shld)) {
						if (!instance_exists(obj_tank_pilot)) exit;
						var sprLen = point_distance(obj_tank_pilot.x, obj_tank_pilot.y, shld.x, shld.y);
						if (instance_exists(shld.owner) && !shld.owner.SH) break;
						else if (shld.object_index == obj_enemy_SH_shield_miniboss) var len = 2;
						else var len = 1;
						if (sprLen < 140 * len && sprLen >= 125 * len) {
							if (len == 2) len = 1.5;
							image_xscale = .25 / ((sprite_width / 2) / sprLen * len);
							image_yscale = .25 / ((sprite_width / 2) / sprLen) * len;
							x += lengthdir_x(sprLen / 5, direction);
							y += lengthdir_y(sprLen / 5, direction);
							particleMachine.x = x + lengthdir_x(sprite_width * image_xscale, direction);
							particleMachine.y = y + lengthdir_y(sprite_width * image_xscale, direction);
							particleMachine.small = true;
						} else if (sprLen < 125 * len) {
							if (len == 2) len = 1.5;
							image_xscale = 0;
							image_yscale = 0;
							var ddir = point_direction(shld.x, shld.y, x, y);
							particleMachine.x = shld.x + lengthdir_x(sprLen / 2 * len, ddir);
							particleMachine.y = shld.y + lengthdir_y(sprLen / 2 * len, ddir);
							particleMachine.small = true;
						} else {
							if (len == 2) len = 1.5;
							image_xscale = .5 / ((sprite_width / 2) / sprLen * len);
							image_yscale = .5 / ((sprite_width / 2) / sprLen * len);
							x += lengthdir_x(sprLen / 9, direction);
							y += lengthdir_y(sprLen / 9, direction);
							particleMachine.x = x + lengthdir_x(sprite_width * image_xscale, direction);
							particleMachine.y = y + lengthdir_y(sprite_width * image_xscale, direction);
						}
					}
				}
				can_move = false;
				flame_timer += 1;
				var flame_wheels_exist = instance_exists(obj_tank_move_flame);
				if(!flame_wheels_exist) {
					instance_create_layer(x + 0, y + 0, "Player", obj_tank_move_flame);
				}
				if (used_charge == false && flame_timer > 3 && !uncharged_press && !got_heart) {
					devil_trigger -= 100;
					charges -= 1;
					used_charge = true;
					global.tankpower = 10;
				}
			}
		}
	}
	/*if(windup_flame = 0 && rainbow = 3 && fix = 1 && ammunition > 0) {
		with(obj_tank_move) instance_destroy();
		audio_play_sound(snd_flame, 0, 0);
		//more code here when using flaming rainbow power
	}*/
}

//Keep spinning a bit after flaming
if (flame_end && devil_trigger >= 100) {
	direction += clamp((flame_end_count * flame_dir / 2), 2 * flame_dir, 9 * flame_dir);
	flame_end_count--;
	var flame = instance_create_layer(x + 0, y + 0, "Flame", obj_flame);
	flame.image_xscale -= .1 * clamp(flame_timer, 0, 10);
	flame.image_yscale -= .1 * clamp(flame_timer, 0, 10);
	flame_timer++;
} else {
	//If tank_move doesn't exist, create tank_move_flame
	var wheels = false;
	wheels = instance_exists(obj_tank_move);
	if(!wheels) {
		var flaming_wheels = false;
		flaming_wheels = instance_exists(obj_tank_move_flame);
		if(!flaming_wheels) {
			flaming_wheels = instance_create_layer(x + 0, y + 0, "Player", obj_tank_move);
		}
	}
}