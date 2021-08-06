if (instance_exists(owner)) {
	direction = owner.direction;
} else instance_destroy();
image_angle = direction;
xx = lengthdir_x(320, direction);
yy = lengthdir_y(320, direction);
/*var particle = instance_create_layer(x + xx, y + yy, "Flame", obj_flame_particle)
with (particle) alarm_set(0, 12);*/
particleMachine = instance_create_layer(x + xx, y + yy, "Flame", obj_particles_flame_big_e);
particleMachine.owner = id;
with (particleMachine) {
	part_type_direction(PartFlame_e, direction, direction, 0, 1);
	alarm_set(1, 1);
}