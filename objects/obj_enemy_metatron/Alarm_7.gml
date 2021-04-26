if (windup == 0) {
	if (shield == id) {
		shield = instance_create_layer(x, y, "Enemy_UI", obj_enemy_SH_shield_miniboss);
		shield.owner = id;
		with (shield) {
			image_xscale = 1.5;
			image_yscale = 1.5;
			hp = 999999;
			rotate = true;
			rotating = true;
			rot_spd = 0;
			rot_dir = 1;
			default_sprite = spr_enemy_shield_boss_final;
			sprite_index = default_sprite;
			dead_sprite = spr_enemy_shield_boss_final;
		}
		shootCount = 0;
		audio_play_sound(snd_shield_create, false, false);
		alarm_set(7, 30);
		if (global.checkpoint == 5) global.checkpoint = 6;
	} else {
		if (burnt < 1) {
			var ddir = direction;
			var xx = lengthdir_x(sprite_width / 2 + shield.sprite_width / 2, ddir);
			var yy = lengthdir_y(sprite_width / 2 + shield.sprite_width / 2, ddir);
			bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_shell_e);
			bull.direction = ddir;
			bull.image_angle = bull.direction;
			bull.speed = 60;
			bull.image_xscale = 3;
			bull.image_yscale = 3;
			if (shootCount mod 3 == 0) audio_play_sound(snd_shoot_e, false, false);
			shootCount++;
		}
		alarm_set(7, 2);
	}
} else alarm_set(7, 1);