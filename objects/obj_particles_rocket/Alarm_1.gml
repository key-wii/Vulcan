if (owner != id) {
	xx = owner.x;
	yy = owner.y;
}
for (i = 8 - particleCount; i >= 0; i--) {
	if (ds_list_size(history) > i) {
		pos = history[| ds_list_size(history) - i];
		if (array_length(pos) > 0) {
			xx = pos[0];
			yy = pos[1];
		}
		break;
	}
}
if (owner.object_index == obj_rocket)
	part_particles_create(global.P_System, xx, yy, global.PartRocket, 15);
if (owner.object_index == obj_grenade_b)
	part_particles_create(global.P_System, xx, yy, global.PartRocketG, 15);
alarm_set(1, 1);
particleCount++;
if (particleCount > 7) {
	particleCount = 0;
	instance_destroy();
}