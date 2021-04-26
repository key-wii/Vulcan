with(other) {
	var explosion = instance_create_layer(x + 0, y + 0, "Explosions", obj_explosion_small);
	explosion.direction = direction;
	explosion.speed = 2;
}
with(other) {
	x = -500;
	y = -500;
}
with(other) {
	alarm_set(0, 300);
}