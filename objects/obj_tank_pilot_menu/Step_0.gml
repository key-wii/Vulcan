//"inherit" below from obj_parent_tank
if (shield > 0 && shielding = true) shield -= 1;
if (can_shoot < 0) can_shoot += 1;
if (devil_trigger < max_trigger) {
	devil_trigger += devil_refill;
	if (devil_trigger > max_trigger) devil_trigger = max_trigger;
	charges = floor(devil_trigger / 100);
}
if (bull_hit_count > 0 && bull_hit_wait == 0) {
	bull_hit_count -= 1;
}
if (bull_hit_count < 0) bull_hit_count = 0;
if (bull_hit_wait > 0) bull_hit_wait -= 2;
if (bull_hit_wait < 0) bull_hit_wait = 0;
if (ammunition = 0) rainbow = -1;
/*if (healing == true) exit;
if (damage < 100 && !combo) exit;
var hp = 100 - damage;
if (hp + flameHeals + healAmount > 0 && !combo) exit;
var negaDmg = damage - 100 - flameHeals;
if (combo == true && negaDmg <= 100) exit;
//Death
room_speed = 20;
with(controller) alarm_set(10, 3);
instance_destroy();*/

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
	direction += -6 * flame_dir;
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

//increase devil swing charge if holding left click, flaming, and have least 1 devil trigger charge
if (mouse_check_button(mb_left) &&
	flaming && devil_trigger >= 100) {
		devilSwingCharge++;
		//play sound 1 frame before fully charged
		if (devilSwingCharge >= devilSwingFullCharge - 1 && devil_trigger >= 199 &&
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

//Global Right Down (Mouse)
if mouse_check_button(mb_right) {
	if(windup_flame == 0) {
		if(!(weapon == 3)) {
			if(flaming == true) {
				//if (sprite_index != spPlayerTankFl) sprite_index = spPlayerTankFl;
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
					flame.sprite_index = spr_flame_menu;
					flame.image_xscale = 1;
					flame.image_yscale = 1;
					direction += 9 * flame_dir;
				}
				can_move = false;
				flame_timer += 1;
				var flame_wheels_exist = instance_exists(obj_tank_move_flame);
				if(!flame_wheels_exist) {
					instance_create_layer(x + 0, y + 0, "Player", obj_tank_move_flame);
				}
				if (used_charge == false && flame_timer > 3 && !uncharged_press) {
					devil_trigger -= 100;
					charges -= 1;
					used_charge = true;
					global.tankpower = 10;
				}
			}
		}
	}
}

//Keep spinning a bit after flaming
if (flame_end && devil_trigger >= 100) {
	direction += clamp((flame_end_count * flame_dir / 2), 2 * flame_dir, 9 * flame_dir);
	flame_end_count--;
	var flame = instance_create_layer(x + 0, y + 0, "Flame", obj_flame);
	flame.image_xscale -= .1 * clamp(flame_timer, 0, 10);
	flame.image_yscale -= .1 * clamp(flame_timer, 0, 10);
	flame.sprite_index = spr_flame_menu;
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