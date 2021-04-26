direction = owner.direction;
image_angle = direction;
xx = lengthdir_x(220, direction);
yy = lengthdir_y(220, direction);
/*var particle = instance_create_layer(x + xx, y + yy, "Flame", obj_flame_particle)
with (particle) alarm_set(0, 12);*/
particleMachine = instance_create_layer(x + xx, y + yy, "Enemy_UI", obj_particles_flameblue_big_e);
particleMachine.owner = id;
with (particleMachine) {
	part_type_direction(PartFlameBlue_big_e, direction, direction, 0, 1);
	alarm_set(1, 1);
}