if (!instance_exists(owner)) {
	instance_destroy();
	exit;
}
if (owner != id) {
	part_type_direction(PartFlame_e, owner.direction + 90, owner.direction + 90, 0, 1);
	part_particles_create(global.P_System, owner.x + xx, owner.y + yy, PartFlame_e, 1);
	part_type_direction(PartFlame_e, owner.direction - 90, owner.direction - 90, 0, 1);
	part_particles_create(global.P_System, owner.x + xx, owner.y + yy, PartFlame_e, 1);
	alarm_set(1, 1);
}