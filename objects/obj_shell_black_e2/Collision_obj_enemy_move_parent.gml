if (!instance_exists(other.owner)) {
	instance_destroy(other);
	exit;
}
if (other.miniboss || other.object_index == obj_bomber_move || other.owner.id == owner) {
	/*x += lengthdir_x(speed, direction);
	y += lengthdir_y(speed, direction);
	with (other) {
		x += lengthdir_x(speed, direction);
		y += lengthdir_y(speed, direction);
	}*/
	exit;
}

if (owner != id && instance_exists(owner))
	if (owner.flameKills > 0)
		with (owner) {
			alarm_set(7, alarm_get(7) + 30);
			if (alarm_get(7) > 79) alarm_set(7, 79);
		}
else if (owner != id) owner = id;

var pow = 10;
with(other) {
	var broken_shield = shield < 1 && shielding = true;
	if((broken_shield || !shielding)) {
		damage += 3 * pow;
		owner.damage += 3 * pow;
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
			explosion.image_xscale = 2;
			explosion.image_yscale = 2;
		}
	}
	if(shield > 0 && shielding) audio_play_sound(snd_shield_hit, 0, 0);
	if (damage >= hp) {
		var kill_X = instance_create_layer(x, y, "UI", obj_kill_X);
		kill_X.sprite_index = spr_kill_shell;
		obj_camera.plusShake = screenShake * 2;
	}
}

sprite_index = spr_kill_shell;
instance_destroy();