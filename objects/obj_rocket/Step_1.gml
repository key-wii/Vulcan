if (place_meeting(x, y, obj_enemy_shield_parent) &&
	direction < other.direction + 180 && direction > other.direction - 180) {
		var explosion = instance_create_layer(x + 0, y + 0, "Explosions", obj_explosion_small_e);
		explosion.direction = direction;
		explosion.speed = 4;
		if (target != noone) with (instance_nearest(x, y, obj_enemy_shield_parent)) {
			damage += 15;
			if (damage >= hp) {
				broke = true;
				expl = instance_create_layer(x, y, "Enemy", obj_explosion_large);
				expl.silent = true;
				audio_play_sound(snd_shield_break2, false, false);
			}
			sprite_index = dead_sprite;
			alarm_set(11, 5);
		}
		instance_destroy();
		
		if (global.flameKills > 0) {
			var controller_exists = instance_exists(controller);
			if (controller_exists)
				with (controller) {
					alarm_set(2, alarm_get(2) + 40);
					if (alarm_get(2) > 79) alarm_set(2, 79);
				}
			var boss_controller_exists = instance_exists(obj_boss1_controller);
			if (boss_controller_exists)
				with (obj_boss1_controller) {
					alarm_set(2, alarm_get(2) + 40);
					if (alarm_get(2) > 79) alarm_set(2, 79);
				}
		}
}