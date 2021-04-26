if (other.bull_hit_count > 65) exit;
if (instance_exists(owner))
	if (owner.flameKills > 0)
		with (owner) {
			alarm_set(7, alarm_get(7) + 30);
			if (alarm_get(7) > 79) alarm_set(7, 79);
		}

with(other) {
	var broken_shield = shield < 1 && shielding = true;
	if(broken_shield || !shielding) {
		var negaDmg = damage - 100 - flameHeals;
		damage += other.pow;
		//if (negaDmg < 100) damage += other.pow;
		negaDmg = damage - 100 - flameHeals;
		//if (negaDmg > 100.01) damage -= negaDmg - 100;
		/*var blood = instance_create_layer(x, y, "Walls", obj_blood_player);
		blood.image_index = lives - 1;
		if (damage < 100 && damage > 90) blood.image_index = 1;
		if (damage >= 100) blood.image_index = 0;
		blood.life = blood.image_index * 10;*/
		if (spikesUnlocked) alarm_set(8, 1);
		var explosion = instance_create_layer(other.x + 0, other.y + 0, "Explosions", obj_explosion_small_hit);
		explosion.direction = other.direction + 180;
		explosion.orig_direction = explosion.direction;
		explosion.speed = 1;
		obj_camera.flameShake = clamp(((damage / 5) + 5), 0, 15);
		with(obj_tint_screen_red) {
			visible = true;
			alarm_set(0, 3);
		}
		with(other) instance_destroy();
	}
	if(shield > 0 && shielding) {
		sound_machine(snd_shield_hit, x, y);
	}
}