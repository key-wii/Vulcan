if instance_exists(owner) {
	xx = owner.xx;
	yy = owner.yy;
	part_type_direction(PartLaser_e, direction, direction, 0, 1);
	part_particles_create(global.P_System, owner.x + xx, owner.y + yy, PartLaser_e, 2);
}