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
part_particles_create(global.P_System, xx, yy, global.PartRocket_e, 15);
alarm_set(1, 1);
particleCount++;
if (particleCount > 7) {
	particleCount = 0;
	alarm_set(3, 7);
	alarm_set(1, 0);
}