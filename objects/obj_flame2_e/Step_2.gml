direction = owner.direction;
image_angle = direction;
xx = lengthdir_x(120, direction);
yy = lengthdir_y(120, direction);
/*var particle = instance_create_layer(x + xx, y + yy, "Flame", obj_flame_particle)
with (particle) alarm_set(0, 12);*/
particleMachine = instance_create_layer(x + xx, y + yy, "Enemy_UI", obj_particles_flame2_e);
particleMachine.owner = id;
with (particleMachine) {
	part_type_direction(PartFlame_e, direction, direction, 0, 1);
	alarm_set(1, 1);
}