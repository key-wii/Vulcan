if (!instance_exists(owner)) {
	instance_destroy();
	exit;
}
if (owner != id) {
	xx = owner.xx;
	yy = owner.yy;
	part_type_direction(PartFlame_e, owner.direction, owner.direction, 0, 1);
	part_particles_create(global.P_System, owner.x + xx, owner.y + yy, PartFlame_e, 1);
	alarm_set(1, 1);
}