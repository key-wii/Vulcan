/*if (owner != id) {
	xx = owner.x;
	yy = owner.y;
}*/
if (!small) part_particles_create(global.P_System, x, y, global.PartFlameHyper, 10);
else part_particles_create(global.P_System, x, y, global.PartFlameHyper, 2);
alarm_set(1, 1);