alpha -= .04;
if (alpha <= .1) {
	with (wheels) alarm_set(2, 1);
	dodges = 2;
	var particles = instance_create_layer(x, y, "Floor", obj_particles_killer_teleport);
	particles.col = teleCol;
	alarm_set(4, 1);
} else alarm_set(3, 1);