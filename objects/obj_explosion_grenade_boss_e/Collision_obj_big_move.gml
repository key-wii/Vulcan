if (!instance_exists(other.owner)) {
	instance_destroy(other);
	exit;
}
if (other.grenadeAlreadyHit == id) exit;
if (instance_exists(obj_boss_parent))
	if (obj_boss_parent.flameKills > 0)
		with (obj_boss_parent) {
			alarm_set(7, alarm_get(7) + 12);
			if (alarm_get(7) > 85) alarm_set(7, 85);
		}

var pow = 10;
var ddevil = devil;
with(other) {
	grenadeAlreadyHit = other.id;
	with (owner)
		burnt += 40;
		
	var broken_shield = shield < 1 && shielding = true;
	if(broken_shield || !shielding) {
		if (miniboss == false) {
			damage += pow;
			owner.damage += pow;
		} else {
			damage += 3 * pow;
			owner.damage += 3 * pow;
		}
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
		}
	}
	if(shield > 0 && shielding) audio_play_sound(snd_shield_hit, 0, 0);
	if (damage >= hp) {
		/*var kill_X = */instance_create_layer(x, y, "UI", obj_kill_X);
		obj_camera.plusShake = screenShake * 3;
		if (ddevil && instance_exists(obj_boss_parent)) {
			with (obj_boss_parent) {
				combo = true;
				//boss can cheat death and heal too
				flameKills += 1;
				if (flameHeals < 0) flameHeals = 0;
				flameHeals += 10;
				var hhp = maxHp - damage;
				if (hhp + flameHeals > maxHp) flameHeals = maxHp - hhp;
				if (flameHeals < 0) flameHeals = 0;
				alarm_set(7, 79);
			}
		}
	}
}