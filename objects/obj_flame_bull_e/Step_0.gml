//direction += rot_spd;
xx = lengthdir_x(100, direction);
yy = lengthdir_y(100, direction);
/*var particle = instance_create_layer(x + xx, y + yy, "Flame", obj_flame_particle)
with (particle) alarm_set(0, 12);*/
particleMachine = instance_create_layer(x + xx, y + yy, "Enemy_UI", obj_particles_flame_e);
particleMachine.owner = id;
with (particleMachine) {
	part_type_direction(PartFlame_e, direction, direction, 0, 1);
	part_type_life(PartFlame_e, 12, 12);
	alarm_set(1, 1);
}