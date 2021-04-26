if (explode) {
	var explosion = instance_create_layer(x + 0, y + 0, "Explosions", obj_explosion_small);
	explosion.direction = direction;
	explosion.speed = 2;
}

instance_destroy();