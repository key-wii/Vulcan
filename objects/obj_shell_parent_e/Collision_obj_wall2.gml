instance_create_layer(x + 16, y + 16, "Enemy_Bullets", obj_explosion_small_e);

with(other) {
	x = -500;
	y = -500;
}

with(other) {
	alarm_set(0, 300);
}

instance_destroy();