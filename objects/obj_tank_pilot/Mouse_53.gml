if (!flaming && grenadeCharge > grenadeFullCharge) exit;
if (cutscene || grenading || devilSwinging || clicked_ui) exit;
shielding = false
if(shielding = false) {
	//change direction if flaming, otherwise shoot
	var flame_wheels_exist = instance_exists(obj_tank_move_flame);
	if(flame_wheels_exist && !preDevilSwing) {
		if (devil_trigger >= 100 &&
			devilSwingCharge < devilSwingFullCharge) {
				audio_play_sound(snd_change_rotation, false, false);
				if (bull_hit_count < 45) {
					devil_trigger -= 100;
					charges -= 1;
				}
				if (flame_dir == 1) {
					direction += -40;
					flame_dir = -1;
					exit;
				}
				if (flame_dir == -1) {
					direction += 40;
					flame_dir = 1;
					exit;
				}
			} else {
				audio_play_sound(snd_devil_trigger_fail, false, false);
				exit;
			}
	}
	var mTrigger = 200;//clamp(max_trigger, 100, 600);
	if (preDevilSwing && devil_trigger >= mTrigger && bull_hit_count < 45) {
		devil_trigger -= 400;
		charges -= 4;
	} else if (preDevilSwing) {
		audio_play_sound(snd_devil_trigger_fail, false, false);
		exit;
	}
	if(can_shoot == 0) {
		shoot_rotate = 20;
		just_shot = true;
		if(weapon == 0) {
			audio_play_sound(snd_shoot1, 0, 0);
			if (global.flameKills > 0)
				with (controller) {
					alarm_set(2, alarm_get(2) + 10);
					if (alarm_get(2) > 75) alarm_set(2, 75);
				}
			var bull = instance_create_layer(self.x + 0, self.y + 0, "Player_Bullets", obj_shell);
			bull.direction = direction;
			bull.image_angle = direction;
			bull.orig_speed = 29;
			can_shoot = y_gun_reload * shoot_speed;
			x_adjust = lengthdir_x(3, direction + 180);
			y_adjust = lengthdir_y(3, direction + 180);
			//exit;
		}
		if(weapon == 1) {
			audio_play_sound(snd_shoot2, 0, 0);
			if (global.flameKills > 0)
				with (controller) {
					alarm_set(2, alarm_get(2) + 25);
					if (alarm_get(2) > 75) alarm_set(2, 75);
				}
			var bull = instance_create_layer(self.x + 0, self.y + 0, "Player_Bullets", obj_bouncer);
			bull.direction = direction;
			bull.image_angle = direction;
			bull.orig_speed = 16;
			can_shoot = g_gun_reload * shoot_speed;
			x_adjust = lengthdir_x(8, direction + 180);
			y_adjust = lengthdir_y(8, direction + 180);
			//exit;
		}
		if(weapon == 2) {
			audio_play_sound(snd_shoot3, 0, 0);
			if (global.flameKills > 0)
				with (controller) {
					alarm_set(2, alarm_get(2) + 35);
					if (alarm_get(2) > 75) alarm_set(2, 75);
				}
			var bull = instance_create_layer(self.x + 0, self.y + 0, "Player_Bullets", obj_rocket);
			bull.direction = direction;
			bull.image_angle = direction;
			bull.orig_speed = 10;
			can_shoot = b_gun_reload * shoot_speed;
			x_adjust = lengthdir_x(15, direction + 180);
			y_adjust = lengthdir_y(15, direction + 180);
			//exit;
		}
		if (dizzyUnlocked && dizzy_shoot == 0) {
			var xx = lengthdir_x(sprite_width / 2, direction);
			var yy = lengthdir_y(sprite_width / 2, direction);
			var bull1 = instance_create_layer(self.x + xx, self.y + yy, "Player_Bullets", obj_dizzy);
			bull1.direction = direction + 45;
			bull1.image_angle = direction;
			bull1.orig_speed = 10.6;
			var bull2 = instance_create_layer(self.x + xx, self.y + yy, "Player_Bullets", obj_dizzy);
			bull2.direction = direction - 45;
			bull2.image_angle = direction;
			bull2.orig_speed = 10.6;
			dizzy_shoot = dizzy_reload * shoot_speed;
			//exit;
		}
		alarm_set(1, 0);
	} else if
	   ((weapon == 0 && can_shoot < 0 && can_shoot > y_gun_reload + 5) ||
		(weapon == 1 && can_shoot < 0 && can_shoot > g_gun_reload + 10) || 
		(weapon == 2 && can_shoot < 0 && can_shoot > b_gun_reload + 15)) {
			//Crisp shooting so player doesn't have to be frame perfect when spamming shoot button
			alarm_set(1, abs(can_shoot));
	}
}