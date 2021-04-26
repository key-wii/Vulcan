if (place_meeting(x, y, obj_enemy_shield_parent) &&
	direction < other.direction + 180 && direction > other.direction - 180) {
		var explosion = instance_create_layer(x + 0, y + 0, "Explosions", obj_explosion_small_e);
		explosion.direction = direction;
		explosion.speed = 4;
		instance_destroy();
		exit;
}